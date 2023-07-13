Instance: mii-sp-prozedur-bodysite
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/SearchParameter/Procedure-BodySite"
* insert Version
* insert SP_Publisher
* name = "MII_SP_Prozedur_BodySite"
* status = #active
* experimental = false
* date = "2022-02-21"
* description = "Suchparameter für Procedure.bodySite"
* code = #bodySite
* base = #Procedure
* type = #token
* expression = "Patient.bodySite"