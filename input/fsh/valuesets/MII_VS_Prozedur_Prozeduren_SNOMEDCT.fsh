ValueSet: MII_VS_Prozedur_Prozeduren_SNOMEDCT
Id: mii-vs-prozedur-prozeduren-snomedct
Title: "MII VS Prozedur Prozeduren [SNOMED CT]"
Description: "Enthaelt alle SNOMED CT Procedure Codes"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = false
* ^date = "2020-04-22"
* include codes from system SNOMED_CT where concept descendent-of #71388002