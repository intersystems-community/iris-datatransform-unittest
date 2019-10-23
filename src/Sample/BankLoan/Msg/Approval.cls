Class Sample.BankLoan.Msg.Approval Extends Ens.Response [ ClassType = persistent, ProcedureBlock ]
{

Property BankName As %String;

Property IsApproved As %Boolean [ InitialExpression = 0 ];

Property InterestRate As %Numeric;

Storage Default
{
<Data name="ApprovalDefaultData">
<Subscript>"Approval"</Subscript>
<Value name="1">
<Value>BankName</Value>
</Value>
<Value name="2">
<Value>IsApproved</Value>
</Value>
<Value name="3">
<Value>InterestRate</Value>
</Value>
</Data>
<DefaultData>ApprovalDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
