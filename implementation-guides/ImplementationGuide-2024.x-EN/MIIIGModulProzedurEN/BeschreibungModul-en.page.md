---
parent: 
---
## **Description Module PROCEDURE**

{{render:ImplementationGuide-Common/images/ModulProzedur.jpg}}

---

## **Introduction**

The basic PROZEDUR module contains data elements for documenting operations, interventions and other medical procedures as well as selected drug therapies.

The module is used to record the details of current and historical procedures. A procedure is an activity performed on, with, or for a patient as part of care. 

*Examples include surgical procedures, diagnostic procedures, obstetrical support, endoscopic procedures, biopsies, counseling, physical therapy, personal support services, adult day care services, non-emergency transportation, home modifications, exercise, etc.*

The procedures may be performed by a health care professional, a provider, a friend or relative, or in some cases by the patient.

For historical and billing reasons (additional charges), selected expensive drugs also count as separate procedures in Germany.

---

## **Modelling Module Procedure in ART-DECOR**

The module provides for the following characteristics of a procedure, which are needed for automated processing of the procedure information:

[{{render:ImplementationGuide-Common/images/ArtDecorProzedur.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

---

A procedure is "an action that is or has been performed on or for a patient. This may be a physical intervention such as surgery, or less invasive such as long-term services, counseling, or hypnotherapy." (see http://hl7.org/fhir/procedure.html).

Information on the procedure can range from the mere recording of a procedure code for a treatment case to a detailed structured OR documentation with main procedure and secondary procedures including anesthesia and positioning care with individual recording of OR date, total OR time, anesthesia time, incision-suture time, surgeons, anesthesiologists, OR nurses, medications and more.

In this Implementation Guide for the PROCEDURE module in the initial version of the MII core data set, we focus on the basic necessities for the use cases of the MI initiative. We mainly restrict ourselves to the basic features procedure and date. A free text description and a body location can be added. We thus deliberately leave room for the later design of the module.

---

## **1. basic procedure information**

As described in the introduction, the data elements in the PROCEDURE module focuses on the essential features based on which required in the use cases of the MII. A description of these use cases can be found below in the section "Description of scenarios for the application of the PROZEDUR module". First of all, the procedure itself and an associated execution date should be mentioned here.
Performed operations should be unambiguously represented by a triple of a procedure code, the associated catalog and the catalog text. A free text description and the specification of a bode-site localization can be implicitly present. 

In general, the proprietary German [OPS catalogs](https://www.dimdi.de/static/de/klassifikationen/ops/kode-suche/opshtml2020/) from DIMDI is used in the source systems of the participating university hospitals for coding procedures. As a roadmap for further development of the documentation, we have added (as in the [DIAGNOSIS](https://simplifier.net/guide/medizininformatikinitiative-moduldiagnosen-implementationguide) module) the SNOMED CT detailed nomenclature as a permitted code system.

### Free text description
If available in the source documentation, the information model of the MII core data set allows free text descriptions of the procedure to be saved and presented.
For supplementary coding, the OPS catalog and/or SNOMED CT can be used.

### OPS-coded procedures

[{{render:ImplementationGuide-Common/images/ArtDecorOps.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

The leading classification and nomenclature for operations and other procedures (interventions, treatments, examinations) in Germany is the Operation and Procedure Code (OPS) from DIMDI. <br> The OPS is a multidisciplinary, monohierarchically structured, alphanumeric classification for operations and procedures with up to 6 hierarchical levels.
The current version of the OPS system contains six chapters (1, 3, 5, 6, 8 and 9) covering the range of all codable medical measures. For historical reasons (reference to the ICPM), there are gaps in the chapter numbers; also, not all four-digit key numbers within the chapters are occupied; the vacant positions allow for extensions.

Chapter 5 Operations is structured topographically-anatomically, thus procedures are found under the respective organ chapter. The remaining chapters are structured according to the procedures.

| Kap.-Nr. | Kode-Bereich | Klassentitel                            |
|----------|--------------|-----------------------------------------|
| 1        | 1-00... 1-99 | Diagnostic measures                     |
| 3        | 3-03... 3-99 | Imaging diagnostics                     |
| 5        | 5-01... 5-99 | Operations                              |
| 6        | 6-00... 6-00 | Medication                              |
| 8        | 8-01... 8-99 | Non-surgical therapeutic measures       |
| 9        | 9-20... 9-99 | Supplementary measures                  |

For general coding, the ["Notes for use"](https://www.dimdi.de/static/de/klassifikationen/ops/kode-suche/opshtml2020/zusatz-04-hinweise-zur-benutzung.htm) must be respected. When coding for billing purposes in the inpatient area, the application of the [German Coding Guidelines (DKR and DKR-Psych) of the self-administration partners](https://www.g-drg.de/G-DRG-System_2020/Kodierrichtlinien/Deutsche_Kodierrichtlinien_2020) is required.

#### Complete procedure code
As with other codes, the specification of a code is not sufficient for the unambiguous documentation of a procedure.
The *complete procedure code* is a triple that combines the **OPS code**, the corresponding **code system** (= OPS catalog with year of validity) and the **catalog text** of the procedure code.

#### Body site localization
Since the OPS does not contain any pre-coordinated body-site information, this is usually documented separately with the characteristics [Right, Left, Both sides], which must be taken into account accordingly in the data sinks with the information model of the MII core data set.

--- 

### SNOMED-coded procedure

[{{render:ImplementationGuide-Common/images/ArtDecorSct.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

The inclusion of the SNOMED CT nomenclature in the canon of code systems for diagnoses, procedures, and other medical entities follows the decision of the National Steering Committee of the MII, the support of the BMBF, and the objectives of the BMG, which are presented in the [Referentenentwurf für das Patientendatenschutzgesetz](https://www.bundesgesundheitsministerium.de/fileadmin/Dateien/3_Downloads/Gesetze_und_Verordnungen/GuV/P/Referentenentwurf_Patientendaten-Schutzgesetz__PDSG.pdf).
At the time of publication of this ImplementationGuide, SNOMED CT is hardly used in Germany. The inclusion in the canon of code systems is therefore rather a milestone for an internationally interoperable and better multi-usable documentation, which is a gool soon to be achieved.

#### Complete procedure code
As with other code systems, complete composition is expected for SNOMED CT, although the SNOMED CT code is unique in itself.
The *Complete Procedure Code* is understood to be a triple that combines the **SNOMED CT code**, the **Code System** SNOMED CT, where no version information is required because of its stability, and the **Preferred Name** of the code, as the catalog text is called here. 

Because of the precoordination of the side information in the multiaxial SNOMED CT code, a separate feature for side localization is not necessary. However, a separate transfer of the information on the body site (left scapula, end phalanx of the right index finger, ticus pedal valve) is possible and useful if it is available in a documentation.

--- 

#### Body-site

The *body site* can be used to specify the area of the body in which a procedure was performed (topographical information). The *body site* was deliberately separated from *SNOMED procedure coded* so that it is also possible to code the body site when coding using an OPS code. The body site is then specified using SNOMED CT, but does not require a complete SNOMED CT procedure code.

---

## **2. Additional notes**

### **Time association**

####  Execution date

The initial design of the PROZEDUR module restricts the temporal assignment to the time at which a procedure was performed or started.

####  Documentation date
More and more often, operations and other procedures are documented alongside the procedure. The separate specification of a documentation date allows deviations from this to be recorded.
