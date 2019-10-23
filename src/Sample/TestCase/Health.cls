/// 
/// Test case for Health data transforms
/// This test case will use files in datatransform-test/Health
/// 
/// Example:
/// do ##class(Sample.TestCase.Health).Run("/app/src/", "Sample/TestCase:Sample.TestCase.Health")
Class Sample.TestCase.Health Extends UnitTestHelper.DataTransformTestCase
{

Parameter TestDirectory = "/app/datatransform-test/Health/dt/";

Parameter BeforeLookUpDirectory = "/app/datatransform-test/Health/lut/before";

Parameter AfterLookUpDirectory = "/app/datatransform-test/Health/lut/after";

Parameter LookUpTables;

}
