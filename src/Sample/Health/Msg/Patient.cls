Class Sample.Health.Msg.Patient Extends Ens.Request
{

Property PatientID As %String(MAXLEN = "");

Property Name As %String(MAXLEN = "");

Storage Default
{
<Data name="PatientDefaultData">
<Subscript>"Patient"</Subscript>
<Value name="1">
<Value>PatientID</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DefaultData>PatientDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
