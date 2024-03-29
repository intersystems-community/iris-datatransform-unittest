ARG IMAGE=intersystemsdc/irishealth-community
FROM $IMAGE

# root user to set up environment USER root
USER root
COPY irissession.sh /
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /irissession.sh
RUN chmod u+x /irissession.sh

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
SHELL ["/irissession.sh"]
RUN \
  # install code
  do $system.OBJ.Load("/tmp/app/src/UnitTestHelper/Installer.cls","c") \
  set sc = ##class(UnitTestHelper.Installer).Run() \
  # install zpm
  zn "APP" \
  zpm "install webterminal"

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
CMD [ "-l", "/usr/irissys/mgr/messages.log" ]
