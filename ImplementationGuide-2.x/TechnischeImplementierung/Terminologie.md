## Terminologien

| Hinweis |  |
|---------|---------------------|
| {{render:ImplementationGuide-Common/images/Warning.jpg}} | Zusätzlich zu internationalen Terminologien werden durch das Modul PROZEDUR folgende ConceptMaps, ValueSets und CodeSystems definiert. Es sei drauf hingewiesen, dass alle CodeSystems auch ein implizites ValueSet enthalten, welches der jeweiligen FHIR CodeSystem-Ressource zu entnehmen ist.|

----

### ConceptMaps

Folgende ConceptMap bildet ein Mapping der OPS-Klassentitel auf SNOMED CT. Es sei zu beachten, dass SNOMED CT ansich keine "Resteklassen" bietet, sodass anstelle von "Other" passerende SNOMED CT Kodes verwendet werden können, sollten diese für "Ergänzende Maßnahmen" vorliegen. Desweiteren bezieht sich die OPS-Kodes für der Klasse 6 nicht auf die Gabe der Medikamente sondern auf die Medikamente ansich als eigenständiges Konzept. 

Siehe [SNOMED-CT / OPS Mapping - Deutsche Basisprofile](https://simplifier.net/guide/basisprofil-de-r4/Terminologie-ConceptMaps)

----

### ValueSets

Es ist zu beachten, dass die nachfolgenden ValueSets keine Expansion beinhalten. Zur Verwendung für Validationszwecke muss diese per FHIR-Terminologieserver erstellt werden.

|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.extension:Durchfuehrungsabsicht.value}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-intend}}

<br><br>

|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.category}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct}}

<br><br>

|--|--|
|Canonical CodeSystem | http://snomed.info/sct  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.prozedur@2.0.0-alpha4)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/ProzedurProcedure.md, text:Procedure.code}}|

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct}}

----

### CodeSystems

Das CodeSystem mit der Canonical http://fhir.de/CodeSystem/dimdi/ops wird innerhalb des Moduls Prozedur, gemäß [Lizenzbedingungen DIMDI](https://www.dimdi.de/static/.downloads/deutsch/downloadbedhilfe.pdf), publiziert.
