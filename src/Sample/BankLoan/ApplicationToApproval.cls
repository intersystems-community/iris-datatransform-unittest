Class Sample.BankLoan.ApplicationToApproval Extends Ens.DataTransformDTL [ DependsOn = (Sample.BankLoan.Msg.Application, Sample.BankLoan.Msg.Approval) ]
{

Parameter IGNOREMISSINGSOURCE = 0;

Parameter REPORTERRORS = 0;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Sample.BankLoan.Msg.Application' targetClass='Sample.BankLoan.Msg.Approval' create='new' language='objectscript' >
<assign value='..Lookup("Bank.BankName",source.Name,"Default Bank")' property='target.BankName' action='set' />
<assign value='$length(source.Name)#2' property='target.IsApproved' action='set' />
<assign value='source.TaxID/1000' property='target.InterestRate' action='set' />
</transform>
}

}
