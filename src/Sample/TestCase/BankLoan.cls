/// 
/// Test case for BankLoan data transforms
/// This test case will use files in datatransform-test/BankLoan
/// 
/// Example:
/// do ##class(Sample.TestCase.BankLoan).Run("/app/src/", "Sample/TestCase:Sample.TestCase.BankLoan")
Class Sample.TestCase.BankLoan Extends UnitTestHelper.DataTransformTestCase
{

Parameter TestDirectory = "/app/datatransform-test/BankLoan/dt/";

Parameter BeforeLookUpDirectory = "/app/datatransform-test/BankLoan/lut/before";

Parameter AfterLookUpDirectory = "/app/datatransform-test/BankLoan/lut/after";

Parameter LookUpTables = "Bank_BankName.xml";

}
