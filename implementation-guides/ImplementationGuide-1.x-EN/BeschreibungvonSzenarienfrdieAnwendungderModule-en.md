## Description of scenarios for the usage within the modules

The modeling and FHIR profiling of the base modules of the MII core data set, including the PROCEDURE module, aim to generate information models that are as generic as possible for a wide range of application scenarios. Priority consideration has been given to the consortial use cases of the four consortia of the [Medical Informatics Initiative](https://www.medizininformatik-initiative.de) (MII) [DIFUTURE](https://difuture.de), [HiGHmed](https://www.highmed.org), [MIRACUM](https://www.miracum.org) and [SMITH](https://www.smith.care/konsortium/) and the two transconsortial collaborative projects [CORD-MI](https://www.medizininformatik-initiative.de/CORD) and [POLAR-MI](https://www.medizininformatik-initiative.de/POLAR). The fact that the digitally stored (or to be stored) patient data from the care processes in the participating university hospitals form the essential basis of the medical informatics initiative has also had a major influence on the design.

Regarding the PROCEDURE module: Procedures do not yet play a central role in the currently running use cases of the medical informatics initiative. Therefore, the design of the PROCEDURE module has been very restrained and has left a lot of room for subsequent expanions.

---

### *Scenarios of the consortia in detail:*.

* DIFUTURE: In the current use cases of the DIFUTURE consortium, operations and other procedures do not play a modeling-relevant role.

* HiGHmed: In the current use cases of the HiGHmed consortium, operations and other procedures do not play a modeling-relevant role.

* MIRACUM: In Use Case 1 "IT Support for Patient Recruitment", procedures are included as inclusion or exclusion criteria in the automated selection of potential study candidates.

* SMITH: In the HELP use case, selected procedures are referenced. The simple representation without assignment to department case, specialist department and place of care is sufficient.

* POLAR-MI: In the overarching joint project POLAR-MI, all available information on medications is required. It also makes use of the medications represented by procedure codes, which are noted additionally to the MEDICATION module in the PROZEDUR module.

* CORD-MI: In the overarching joint project CORD-MI, deliveries (especially OPS code 9-260) of women with a rare disease (cystic fibrosis or phenylketonuria) play a role. No special adjustment has been necessary.


