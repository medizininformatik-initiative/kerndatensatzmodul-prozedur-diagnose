Invariant: sct-ops-1
Description: "Entweder wird die Prozedur mit OPS oder SNOMED-CT kodiert."
Severity: #error
Expression: "coding.where(system = 'http://snomed.info/sct').exists() or coding.where(system = 'http://fhir.de/CodeSystem/bfarm/ops').exists()"