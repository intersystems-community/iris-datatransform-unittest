Class Sample.Health.a31ToPatient Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, Sample.Health.Msg.Patient) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='Sample.Health.Msg.Patient' sourceDocType='2.7:ADT_A05' create='new' language='objectscript' >
<assign value='source.{PID:PatientIdentifierList(1).IDNumber}' property='target.PatientID' action='set' />
<assign value='source.{PID:PatientName(1).GivenName}_" "_source.{PID:PatientName(1).FamilyName.Surname}' property='target.Name' action='set' />
</transform>
}

}
