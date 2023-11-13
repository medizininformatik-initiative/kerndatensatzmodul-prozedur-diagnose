Profile: MII_PR_Prozedur_Procedure
Parent: Procedure
Id: mii-pr-prozedur-procedure
Title: "MII PR Prozedur Procedure"
Description: "Dieses Profil beschreibt eine Prozedur in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* obeys proc-mii-1
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ExtensionProzedurDokumentationsdatum named Dokumentationsdatum 0..1 MS and
    MII_EX_Prozedur_Durchfuehrungsabsicht named durchfuehrungsabsicht 0..1 MS
* status MS
* category MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^min = 0
* category.coding contains sct 0..1 MS
* category.coding[sct] from MII_VS_Prozedur_OpsKategorien_SNOMEDCT (preferred)
* category.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* category.coding[sct].system 1.. MS
* category.coding[sct].code 1.. MS
* code 1.. MS
* code obeys sct-ops-1
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    ops 0..1 MS and
    sct 0..1 MS
* code.coding[ops] only CodingOPS
* code.coding[ops] from OpsVS (required)
* code.coding[ops] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].extension[Seitenlokalisation] ^mustSupport = true
* code.coding[ops].system MS
* code.coding[ops].version MS
* code.coding[ops].code MS
* code.coding[sct] from MII_VS_Prozedur_Prozeduren_SNOMEDCT (required)
* code.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[sct].system 1.. MS
* code.coding[sct].code 1.. MS
* subject 1..1 MS
* subject only $MII-Reference
* performed[x] 1.. MS
* performed[x] only dateTime or Period
* bodySite MS
* bodySite ^binding.strength = #extensible
* note MS