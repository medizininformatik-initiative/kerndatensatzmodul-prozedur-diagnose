Instance: mii-exa-prozedur-procedure
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2024.0.0"
* status = #completed
* category = $sct-no-ver#387713003 "Surgical procedure (procedure)"
* code.coding[0] = $sct-no-ver#80146002 "Excision of appendix (procedure)"
* code.coding[+].version = "2020"
* code.coding[=] = $ops#5-470 "Appendektomie"
* performedDateTime = "2020-04-23"
* subject.identifier.system = "http://mii-standort.example.de/fhir/NamingSystem/pid"
* subject.identifier.value = "1234567890"
* subject.identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/NamingSystem/DIZ"
* subject.identifier.assigner.identifier.value = "UKK"