---
parent: 
topic: ProzedurProcedure
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
---

### Procedure (Procedure)

---

**Description**

This profile describes a procedure in the Medical Informatics Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, diff}}

---

**Notes**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Procedure.id      | Must-support, but optional        |
| Procedure.meta      | Must-support, but optional       |
| Procedure.status      | No restrictions regarding the selected status|
| Procedure.category             | Mandatory SNOMED CT categorization based on procedure code. See {{pagelink:Terminologien}} for a mapping from OPS class title to SNOMED CT. Only relevant if the procedure is coded per OPS, see proc-mii-1        |
|  Procedure.code            |   Mandatory coding either per OPS or SNOMED. Further coding permitted.       |
|  Procedure.code:ops            |   See [OPS-Kodierung - German Base Profiles](https://ig.fhir.de/basisprofile-de/1.4.0/Ressourcen-ProzedurenProcedure.html#Ressourcen-Procedure-OPS)       |
| Procedure.performed\[x\] | Beside the specification as dateTime also a Period can be specified (if start and end time are known)|
| Procedure.bodySite           | Detailed coding of the body site(s) of the procedure. Should NOT be used to map the laterality of the procedure. This is a property of the code. See Procedure.code:ops |
| Procedure.note | Free text information about the procedure|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Procedure.code:ops        | Prozedur.OPSProzedurKodiert         |
| Procedure.code:ops.coding.code        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Kode)        |
| Procedure.code:ops.coding.system        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Kodesystem)        |
| Procedure.code:ops.coding.version        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Version)        |
| Procedure.code:ops.extension.seitenlokalisation        | Prozedur.OPSProzedurKodiert.Seitenlokalisation         |
| Procedure.code:sct        | Prozedur.SNOMEDProzedurKodiert         |
| Procedure.code:sct.code        | Prozedur.SNOMEDProzedurKodiert.VollständigerProzedurenkode  (Kode)       |
| Procedure.code:sct.system        | Prozedur.SNOMEDProzedurKodiert.VollständigerProzedurenkode  (Kodesystem)       |
| Procedure.bodySite  | Prozedur.Körperstelle        |
| Procedure.performed\[x\]        | Prozedur.Durchführungsdatum         |
| Procedure.note        | Prozedur.Freitextbeschreibung         |
| Procedure.extension.Dokumentationsdatum        | Prozedur.Dokumentationsdatum         |
| Procedure.extension.durchfuehrungsabsicht        | Prozedur.Durchfuehrungsabsicht         |


---

**Constraints**

The following invariants must be considered when implementing the profile:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' for differential.element.constraint select key,severity,human, expression```

Further specifications are made by the profile for the data type OPS by the German base profiles.


**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, snapshot}}

---

**SearchParameter**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "status" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Note: Additional information regarding the search using "Procedure.status" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "category" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Note: Additional information regarding the search using "Procedure.category" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "code" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Note: Additional information regarding the search using "Procedure.code" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "date" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?date=2022-01-01```

    Note: Additional information regarding the search using "Procedure.performed" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "subject" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/test```

    Note: Additional information regarding the search using "Procedure.subject" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "patient" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?patient=Patient/test```

    Note: Additional information regarding the search using "Procedure.subject" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "bodySite" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Note: Additional information regarding the search using "Procedure.bodySite" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "dokumentationsdatum" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Note: Additional information regarding the search using "Procedure.extension:Dokumentationsdatum" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "durchfuehrungsabsicht" MUST be supported:

    Beispiele:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Note: Additional information regarding the search using "Procedure.extension:Durchfuehrungsabsicht" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---

**Examples**

Example (minimal):

{{json:beispiele/Example-Procedure.json}}

