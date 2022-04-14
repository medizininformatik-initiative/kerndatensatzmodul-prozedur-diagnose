### Procedure

Dieses Profil beschreibt eine Prozedur in der Medizininformatik-Initiative.

**Name**: ProfileProcedureProzedur ([Simplifier Link](https://simplifier.net/medizininformatikinitiative-modulprozeduren/prozedur))

**Canonical**:
```https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
| Procedure.id      | Must-support, jedoch optional        |
| Procedure.meta      | Must-support, jedoch optional       |
| Procedure.status      | Keine Einschränkungen bezüglich des gewählten Status|
| Procedure.category             | Verpflichtende SNOMED CT Kategorisierung auf Basis des Prozedurenkodes. Siehe {{pagelink:Terminologien}} für ein Mapping von OPS Klassentitel auf SNOMED CT. Nur relevant falls die Prozedur per OPS kodiert wird, siehe proc-mii-1        |
|  Procedure.code            |   Verpflichtende Kodierung entweder per OPS oder SNOMED. Weitere Kodierungen erlaubt.       |
|  Procedure.code:ops            |   Siehe [OPS-Kodierung - Deutsche Basisprofile](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Procedure-OPS)       |
| Procedure.performed\[x\] | Neben der Angabe als dateTime kann auch eine Period angegeben werden (falls Start- und Endzeitpunkt bekannt sind)|
| Procedure.bodySite           | Detaillierte Kodierung der Körperstelle(n) der Prozedur. Sollte NICHT verwendet werden um die Lateralität der Prozedur abzubilden. Dies ist eine Eigenschaft des Kodes. Siehe Procedure.code:ops |
| Procedure.note | Freitextangaben zur Prozedur|

<br>

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


<br>

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' for differential.element.constraint select key,severity,human, expression```


---

**Snapshot**

{{tree:medizininformatikinitiative-modulprozeduren/Prozedur, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:medizininformatikinitiative-modulprozeduren/Procedure-example}}

