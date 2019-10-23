Class Sample.BankLoan.Msg.Application Extends Ens.Request [ ClassType = persistent, ProcedureBlock ]
{

Property Amount As %Integer;

Property Name As %String;

Property TaxID As %String;

Property Nationality As %String;

Property BusinessOperationType As %String;

Property Destination As %String(MAXLEN = 1000);

Storage Default
{
<Data name="ApplicationDefaultData">
<Subscript>"Application"</Subscript>
<Value name="1">
<Value>Amount</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>TaxID</Value>
</Value>
<Value name="4">
<Value>Nationality</Value>
</Value>
<Value name="5">
<Value>BusinessOperationType</Value>
</Value>
<Value name="6">
<Value>Destination</Value>
</Value>
</Data>
<DefaultData>ApplicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
