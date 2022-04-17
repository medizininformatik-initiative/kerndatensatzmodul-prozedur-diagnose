## Terminology

| Note |  |
|---------|---------------------|
| {{render:ImplementationGuide-Common/images/Warning.jpg}} | Additionally to the international terminology used by the module PERSON, custom CodeSystems are defined by it. Please note that each CodesSystem also contains a corresponding implicit ValueSet. Please see the definition of the CodeSystem Resource for further deatils.|

----

### ConceptMaps

The following ConceptMap represents a mapping of the OPS class titles to SNOMED CT. It should be noted that SNOMED CT itself does not offer "residual classes", so that instead of "Other" matching SNOMED CT codes can be used if these are available for "Supplementary measures". Furthermore, the OPS codes for class 6 do not refer to the administration of the medication but to the medication itself as a separate concept. 

See [SNOMED-CT / OPS Mapping - Deutsche Basisprofile](https://simplifier.net/guide/basisprofil-de-r4/Terminologie-ConceptMaps)

----

### ValueSets

It should be noted that the following ValueSets do not include an expansion. To use them for validation purposes, they must be created by FHIR terminology server.

| VS_MII_Prozedur_Durchfuehrungsabsicht_SNOMEDCT   |   |
|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.extension:Durchfuehrungsabsicht.value}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend}}

<br><br>

| VS_MII_Prozedur_OpsKategorien_SNOMEDCT   |   |
|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.category}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct}}

<br><br>

| VS_MII_Prozedur_Prozeduren_SNOMEDCT   |   |
|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.code}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct}}

----

### CodeSystems

The CodeSystem with the Canonical http://fhir.de/CodeSystem/dimdi/ops is published within the module Procedure, according to [License Conditions DIMDI](https://www.dimdi.de/static/.downloads/deutsch/downloadbedhilfe.pdf).The CodeSystem with the Canonical http://fhir.de/CodeSystem/dimdi/ops is published within the module Procedure, according to [License Conditions DIMDI](https://www.dimdi.de/static/.downloads/deutsch/downloadbedhilfe.pdf).
