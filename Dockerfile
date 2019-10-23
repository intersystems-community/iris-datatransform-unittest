FROM store/intersystems/irishealth:2019.3.0.308.0-community

# root user to set up environment USER root
USER root

# external dependencies (e.g. apt-get) 

# copy in application code and dependencies 
RUN mkdir -p /tmp/app/src
COPY src /tmp/app/src/
RUN mkdir -p /tmp/app/install
COPY install /tmp/app/install
RUN mkdir -p /app/db/

# change permissions to IRIS user
RUN chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /tmp/app
RUN chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /app

# Change back to IRIS user 
USER irisowner

# install application
RUN iris start iris && \
    printf 'zn "USER" \n \
    do $system.OBJ.Load("/tmp/app/src/UnitTestHelper/Installer.cls","c")\n \
    do ##class(UnitTestHelper.Installer).Run()\n \
    zn "%%SYS"\n \
    do ##class(SYS.Container).QuiesceForBundling()\n \
    h\n' | irissession IRIS \
&& iris stop iris quietly  