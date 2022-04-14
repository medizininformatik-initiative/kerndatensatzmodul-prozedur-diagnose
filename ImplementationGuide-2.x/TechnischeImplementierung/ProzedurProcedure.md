### Prozedur (Procedure)

---

**Beschreibung**

Dieses Profil beschreibt eine Prozedur in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Procedure.id      | Must-support, jedoch optional        |
| Procedure.meta      | Must-support, jedoch optional       |
| Procedure.status      | Keine Einschränkungen bezüglich des gewählten Status|
| Procedure.category             | Verpflichtende SNOMED CT Kategorisierung auf Basis des Prozedurenkodes. Siehe {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/Terminologie.md}} für ein Mapping von OPS Klassentitel auf SNOMED CT. Nur relevant falls die Prozedur per OPS kodiert wird, siehe proc-mii-1        |
|  Procedure.code            |   Verpflichtende Kodierung entweder per OPS oder SNOMED. Weitere Kodierungen erlaubt.       |
|  Procedure.code:ops            |   Siehe [OPS-Kodierung - Deutsche Basisprofile](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Procedure-OPS)       |
| Procedure.performed\[x\] | Neben der Angabe als dateTime kann auch eine Period angegeben werden (falls Start- und Endzeitpunkt bekannt sind)|
| Procedure.bodySite           | Detaillierte Kodierung der Körperstelle(n) der Prozedur. Sollte NICHT verwendet werden um die Lateralität der Prozedur abzubilden. Dies ist eine Eigenschaft des Kodes. Siehe Procedure.code:ops |
| Procedure.note | Freitextangaben zur Prozedur|

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

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' for differential.element.constraint select key,severity,human, expression```

Weitere Vorgaben werden durch die Profile für die Datentypen OPS durch die Deutschen Basisprofile gemacht.

---

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

**Beispiele**

Beispiel (minimal):

{{json:beispiele/Example-Procedure.json}}

