# iris-datatransform-unittest
Simple unit tests for data transforms in InterSystems IRIS using external files.

# Quick Start
1. Build and run the Docker image
    ```
    $ docker-compose build
    $ docker-compose up -d
    ```

2. Enter [IRIS Management Portal](http://localhost:52773/csp/sys/UtilHome.csp) using `superuser` / `SYS` account.
Change the default password.

3. Open a [WebTerminal session](http://localhost:52773/terminal/) and run the tests:
    ```
    do ##class(Sample.TestCase.BankLoan).Run("/app/src/", "Sample/TestCase:Sample.TestCase.BankLoan")
    do ##class(Sample.TestCase.Health).Run("/app/src/", "Sample/TestCase:Sample.TestCase.Health")
    ```

4. Open [IRIS Unit Test Portal](http://localhost:52773/csp/app/%25UnitTest.Portal.Home.zen?$NAMESPACE=APP) and check out the results
`System Explorer > Tools > Unit Test Portal > Switch to APP namespace`


# How it works?
This sample will let you create simple unit tests for data transforms using external files.

## Classes
### UnitTestHelper.DataTransformTestCase
* Generic %UnitTest.TestCase class you can use as common class for your data transform use cases.
* Use `TestDirectory` parameter to specify the directory where your tests are stored.
* Use `BeforeLookUpDirectory`, `AfterLookUpDirectory` and `LookUpTables` parameters to load some specific Look Up tables before running the tests.

### Sample.TestCase.BankLoan
* Example data transforms test case.
* See test files in `datatransform-test/dt/Sample.BankLoan.ApplicationToApproval/` directory.

### Sample.TestCase.Health
* Example data transforms test case. Uses an HL7 data transformation.
* See test files in `datatransform-test/dt/Sample.Health.a31ToPatient` directory.

## Test Directory
In your test directory you can have:
* `<DataTransformClassName>/` sub-directory for each data transform you want to test.
* `<DataTransformClassName>/<name>.in.txt` **required** input message to the data transform you want to test.
* `<DataTransformClassName>/<name>.out.txt` **required** expected message of the data transform for the given input.
* `<DataTransformClassName>/<name>.nfo.txt` **optional** simple info message you want to appear during the text execution.

In case you are getting an error while running the test you will get:
* `<DataTransformClassName>/<name>.gen.txt` actual output of the data transform for the given input. You can compare this file Vs. the expected output to see what's wrong.

