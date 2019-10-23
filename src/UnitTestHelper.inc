ROUTINE UnitTestHelper [Type=INC]
#define UnitTestHL7Enabled          ##expression(##class(%Dictionary.CompiledClass).%Exists($lb("EnsLib.HL7.Message")))