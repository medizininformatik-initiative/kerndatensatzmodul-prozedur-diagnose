---
parent: 
---
## Context in the overall project / references to other modules.

Diagnostic, therapeutic and other procedures represent a core process of routine care and take place at all sites of the Medical Informatics Initiative. 

Surgery and procedure documentation is most detailed and usually digital at all sites in the central OR wards. Documentation is regularly carried out according to local specifications in a large number of separate operating and anaesthesia systems. Only the data on DRG-relevant procedures in the OPS table of the data set according to Section 301 of the German Social Code, Book V are available in a uniform form nationwide for all inpatient and partial-station cases from all German hospitals, including the university hospitals participating in the Medical Informatics Initiative.

In the future, procedure data will be of great importance for a multitude of questions, e.g. in efficacy studies and health economic analyses. However, since there are no requirements from the use cases of the medical informatics initiative that go beyond OPS recording, the adaptation of the MII-KDS is essentially limited to FHIR profiling and internationalization through the addition of SNOMED CT as a permitted code system.

---
### References to other modules

Similar to the DIAGNOSIS module, the PROCEDURE module in the MII core data set is primarily linked to the [PERSON](https://simplifier.net/guide/medizininformatikinitiative-modulperson-implementationguide/igmiikdsmodulperson) module. Aside from the fact that, per se, almost all procedures require a provider, virtually all procedure information comes from providers where the persons are being treated as patients and their medical records are actively being managed.

It should be noted that the [Medication](https://simplifier.net/guide/medizininformatikinitiative-modulmedikation-implementationguide) module as well as the [Case Data](https://simplifier.net/guide/MedizininformatikInitiative-ModulFall-ImplementationGuide) module have references to this module. Explanations can be found in the respective module.

### Deferred relationships with other modules

* Module DIAGNOSIS <br> As a rule, procedures are only performed with justification by a diagnosis. In the initial MII core data set, as with the data set according to § 21 KHEntgG, the assignment of procedures to diagnoses is disregarded. The design of this assignment will be deferred until the next version of the MII KDS, in which this assignment will play a more concrete role for specific use cases.
