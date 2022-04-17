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

Wie einleitend angekündigt, fokussieren sich die Angaben im Modul PROZEDUR auf die wesentlichen Merkmale wie sie in den Use Cases der MII benötigt werden. Eine Beschreibung dieser Use Cases findet sich nachgfolgend im Abschnitt "Beschreibung von Szenarien für die Anwendung der Moduls PROZEDUR". Zunächst ist hier hauptsächlich die Prozedur selber und ein zugehöriges Durchführungsdatum zu nennen.
Durchgeführte Operationen sollen durch ein Tripel aus einem Prozedurenkode, dem zugehörigen Katalog und dem Katalogtext eindeutig dargestellt werden. Eine Freitexteschreibung und die Angabe einer Seitenlokalisation können implizit vorhanden sein. 

In der Regel wird in den Quellsystemen der beteiligten Universitätsklinika für die Kodierung von Prozeduren der proprietär-deutschen [OPS-Kataloge](https://www.dimdi.de/static/de/klassifikationen/ops/kode-suche/opshtml2020/) vom DIMDI benutzt. Als Wegmarke für die Weiterentwicklung der Dokumentation haben wir (wie im Modul [DIAGNOSE](https://simplifier.net/guide/medizininformatikinitiative-moduldiagnosen-implementationguide)) die ausführliche Nomenklatur SNOMED CT als erlaubtes Kodesystem ergänzt.

### Freitextbeschreibung
Sofern in den Quelldokumentationen vorhanden, erlaubt das Informationsmodell des MII-Kerndatensatzes diese abzuspeichern und zu präsentieren.
Für die ergänzende Kodierung können der OPS-Katalog und/oder SNOMED CT benutzt werden.

### OPS Prozedur kodiert

[{{render:ImplementationGuide-Common/images/ArtDecorOps.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Die führende Klassifikation und Nomenklatur für Operationen und sonstige Prozeduren (Eingriffe, Behandlungen, Untersuchungen) in Deutschland ist der Operationen- und Prozedurenschlüssel (OPS) vom DIMDI. <br> Der OPS ist eine fachgebietsübergreifende, monohierarchisch strukturierte, alphanumerische Klassifikation für Operationen und Prozeduren mit bis zu 6 Hierarchieebenen. 
Die Systematik des OPS enthält in der aktuellen Fassung sechs Kapitel (1, 3, 5, 6, 8 und 9), die den Bereich aller kodierbaren medizinischen Maßnahmen abdecken. Aus historischen Gründen (Bezug zur ICPM) sind bei den Kapitelnummern Lücken; auch sind nicht alle vierstelligen Schlüsselnummern innerhalb der Kapitel belegt, die freien Stellen ermöglichen Erweiterungen.

Kapitel 5 Operationen ist topographisch-anatomisch gegliedert, Eingriffe sind also unter dem jeweiligen Organkapitel zu finden. Die übrigen Kapitel sind nach den Verfahren strukturiert.

| Kap.-Nr. | Kode-Bereich | Klassentitel                            |
|----------|--------------|-----------------------------------------|
| 1        | 1-00... 1-99 | Diagnostische Maßnahmen                 |
| 3        | 3-03... 3-99 | Bildgebende Diagnostik                  |
| 5        | 5-01... 5-99 | Operationen                             |
| 6        | 6-00... 6-00 | Medikamente                             |
| 8        | 8-01... 8-99 | Nichtoperative therapeutische Maßnahmen |
| 9        | 9-20... 9-99 | Ergänzende Maßnahmen                    |

Bei der allgemeinen Kodierung müssen die ["Hinweise für die Benutzung"](https://www.dimdi.de/static/de/klassifikationen/ops/kode-suche/opshtml2020/zusatz-04-hinweise-zur-benutzung.htm) beachtet werden. Bei Kodierung für Abrechnungszwecke im stationären Bereich ist die Anwendung der [Deutschen Kodierrichtlinien (DKR und DKR-Psych) der Selbstverwaltungspartner](https://www.g-drg.de/G-DRG-System_2020/Kodierrichtlinien/Deutsche_Kodierrichtlinien_2020) erforderlich.

#### Vollständiger Prozedurenkode
Wie bei anderen Kodierungen auch genügt für die eindeutige Dokumention einer Prozedur nicht die Angabe eines Kodes.
Unter dem *Vollständigen Prozedurenkode* versteht sich ein Tripel, welches den **OPS-Kode**, das entsprechende **Kodesystem** (= OPS-Katalog mit Gültigkeitsjahr) und den **Katalogtext** des Prozedurenkodes vereinigt. 

#### Seitenlokalisation
Da der OPS keine präkoordinierten Seitenangaben enthält, wird diese in der Regel mit den Ausprägungen [Rechts, Links, Beidseits] gesondert dokumentiert, was in den Datensenken mit dem Informationsmodell des MII-Kerndatensatzes entsprechend berücksichtigt werden muss.

--- 

### SNOMED Prozedur kodiert

[{{render:ImplementationGuide-Common/images/ArtDecorSct.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Die Aufnahme der Nomenklatur SNOMED CT in den Kanon der Kodesysteme für Diagnosen, Prozeduren und weitere medizinische Entitäten folgt dem Beschluss des Nationalen Steuerungsgremium der MII, der Unterstützung durch das BMBF und den Zielen des BMG, die im [Referentenentwurf für das Patientendatenschutzgesetz](https://www.bundesgesundheitsministerium.de/fileadmin/Dateien/3_Downloads/Gesetze_und_Verordnungen/GuV/P/Referentenentwurf_Patientendaten-Schutzgesetz__PDSG.pdf) dargestellt sind.
Zur Zeit der Veröfffentlichung dieses ImplementationGuides wird SNOMED CT in Deutschland kaum benutzt. Die Aufnahme in den Kanon der Kodesysteme stellt also eher eine Wegmarke für eine international interoperable und besser mehrfach nutzbare Dokumentation dar, die bald erreicht werden soll.


#### Vollständiger Prozedurenkode
Wie bei anderen Kodesystemen wird auch bei SNOMED CT vollständige Komposition erwartet, obwohl der SNOMED-CT-Kode an sich schon eindeutig ist.
Unter dem *Vollständigem Prozedurenkode* versteht sich ein Tripel, welches den **SNOMED-CT-Kode**, das **Kodesystem** SNOMED CT, bei dem wegen seiner Stabilität keine Orts- und Zeitangabe erforderlich ist und den **Präferierten Namen** des Kodes, wie der Katalogtext hier heißt, vereinigt. 

Wegen der Präkoordination der Seitenangabe im multiaxialen SNOMED-CT-Kode ist ein gesondertes Merkmal Seitenlokalisation nicht erforderlich. Wohl aber ist eine gesonderte Übernahme der Angabe zu Körperstelle (Linkes Schulterblatt, Endglied des rechten Zeigefingers, Tikuspedalklappe) möglich und sinnvoll, wenn sie in einer Dokumentation vorhanden ist.

--- 

#### Körperstelle

Über die *Körperstelle* kann angegeben werden, in welchem Bereich des Körpers eine Prozedur durchgeführt wurde (Topographische Information). Die *Körperstelle* wurde bewusst aus *SNOMED Prozedur kodiert* ausgegliedert, damit auch bei einer Kodierung mittels OPS-Kode die Möglichkeit der Kodierung der Körperstelle besteht. Die Angabe der Körperstelle erfolgt dann zwar mittels SNOMED CT, erfordert aber keinen vollständigen SNOMED-CT-Prozeduren-Kode.

---

## **2. Ergänzende Aspekte**

### **Zeitliche Zuordnung**

####  Durchführungsdatum

Die initiale Gestaltung des Moduls PROZEDUR beschränkt die zeitliche Zuordnung auf den Zeitpunkt, zu dem eine Prozedur durchgeführt wurde beziehungsweise begonnen worden ist.

####  Dokumentationsdatum
Immer öfter werden Operationen und sonstige Prozeduren prozedurbegleitend dokumentiert. Die gesonderte Angabe eines Dokumentationsdatums erlaubt, Abweichungen davon festzuhalten.
