Logical: MII_LM_Prozedur
Parent: Element
Id: mii-lm-prozedur
Title: "MII LM Prozedur"
Description: "Logische Repräsentation des Basismoduls Prozedur"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/LogicalModel/Prozedur"
* insert PR_CS_VS_Version
* insert Publisher
* ^date = "2024-02-08"
* . ^short = "Das Basismodul Prozeduren umfasst die Beschreibung diagnostischer oder therapeutischer Maßnahmen, die als Leistungskomplexe auch für die Abrechnung dokumentiert und kodiert werden, z.B. Operationen."
* OPSProzedurKodiert 0..* BackboneElement "Kodierung der durchgeführten Prozedur mittels OPS." "Kodierung der durchgeführten Prozedur mittels OPS."
* OPSProzedurKodiert.VollstaendigerProzedurenkode 0..* http://hl7.org/fhir/StructureDefinition/code "Der vollständige Prozedurenkode: Tripel aus OPS-Kode, Kodesystem (inkl. Version!) und Katalogtext." "Der vollständige Prozedurenkode: Tripel aus OPS-Kode, Kodesystem (inkl. Version!) und Katalogtext."
* OPSProzedurKodiert.Seitenlokalisation 0..* http://hl7.org/fhir/StructureDefinition/code "Seitenlokalisation für die durchgeführte Prozedur gemäß DIMDI" "Seitenlokalisation für die durchgeführte Prozedur gemäß DIMDI"
* SNOMEDProzedurKodiert 0..* BackboneElement "Kodierung der durchgeführten Prozedur mittels SNOMED CT." "Kodierung der durchgeführten Prozedur mittels SNOMED CT."
* SNOMEDProzedurKodiert.VollstaendigerProzedurenkode 0..* http://hl7.org/fhir/StructureDefinition/code "Der vollständige Prozedurenkode: Tripel aus SNOMED-CT-Kode, Kodesystem (Version optional) und präferierten Namen" "Der vollständige Prozedurenkode: Tripel aus SNOMED-CT-Kode, Kodesystem (Version optional) und präferierten Namen"
* Koerperstelle 0..* http://hl7.org/fhir/StructureDefinition/string "Körperstelle der Prozedur mittels SNOMED CT inkl. Lateralität (R, L, B)" "Körperstelle der Prozedur mittels SNOMED CT inkl. Lateralität (R, L, B)"
* Durchfuehrungsabsicht 0..* http://hl7.org/fhir/StructureDefinition/code "Intention mit der die Prozedur durchgeführt wird." "Intention mit der die Prozedur durchgeführt wird."
* Durchfuehrungsdatum 0..* http://hl7.org/fhir/StructureDefinition/date "Das Datum ist der Zeitpunkt, an dem eine Prozedur durchgeführt wurde." "Das Datum ist der Zeitpunkt, an dem eine Prozedur durchgeführt wurde."
* Dokumentationsdatum 0..* http://hl7.org/fhir/StructureDefinition/date "Das Datum ist der Zeitpunkt, an dem eine Prozedur dokumentiert wurde." "Das Datum ist der Zeitpunkt, an dem eine Prozedur dokumentiert wurde."
* Freitextbeschreibung 0..* http://hl7.org/fhir/StructureDefinition/string "Freitextbeschreibung der durchgeführten Prozedur" "Freitextbeschreibung der durchgeführten Prozedur"