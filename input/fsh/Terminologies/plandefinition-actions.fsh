CodeSystem: CSPlanDefinitionActions
Id: fr-cs-vs-plandefinition-actions
Title: "FR Veille Sanitaire PlanDefinition Action Codes"
Description: "The FR Veille Sanitaire PlanDefinition Actions CodeSystem is a 'starter set' of codes supported for identifying actions in PlanDefinition."
* #initiate-reporting-workflow "Initiate a reporting workflow" "Request the initiation of a reporting workflow for a patient for a specific context (e.g., encounter)."
* #execute-reporting-workflow "Execute a series of actions to accomplish reporting" "This is top level action that uses other defined actions to accomplish reporting for a specific context (e.g., encounter)."
* #execute-reporting-workflow #check-trigger-codes "Evaluate candidate patient's data against trigger codes to determine reportability" "Evaluate candidate patient's data against trigger codes to determine reportability."
* #execute-reporting-workflow #evaluate-condition "Evaluate condition to determine reportability" "Evaluate condition to determine reportability."
* #execute-reporting-workflow #evaluate-measure "Evaluate measure to determine reportability" "Evaluate measure to determine reportability."
* #execute-reporting-workflow #check-participant-registration "Evaluate participants in encounter for reportability" "Evaluate encounter participants such as patient, practitioner, organization on whether they have been selected for reportability."
* #execute-reporting-workflow #create-report "Create a report for submission to a PHA or a Research Organization" "Create a Report containing data for patients or participants who have been identified by other medmorph plandefinition actions such as initiate-reporting-workflow, check-trigger-codes and check-participant-registration."
* #execute-reporting-workflow #validate-report "Validate Report against specified profiles and terminologies." "Validate Report against specified profiles and terminologies."
* #execute-reporting-workflow #submit-report "Submit the report to specified endpoint" "Submit the report to specified endpoint."
* #execute-reporting-workflow #deidentify-report "Deidentify the report before submitting the report" "Deidentify the report before submitting the report."
* #execute-reporting-workflow #anonymize-report "Anonymize the report before submitting the report" "Anonymize the report before submitting the report."
* #execute-reporting-workflow #pseudonymize-report "Pseudonymize the report before submitting the report" "Pseudonymize the report before submitting the report."
* #execute-reporting-workflow #encrypt-report "Encrypt the report before submitting the report" "Encrypt the report before submitting the report."
* #execute-reporting-workflow #complete-reporting "Complete reporting for the patient" "Complete the reporting for the patient, after which no further reports will be sent for a specific context (e.g., Encounter)."
* #execute-reporting-workflow #extract-research-data "Extract data from a Data Source for one or more patients." "Extract data from a Data Source for one or more patients for research purposes."
* #execute-reporting-workflow #load-research-data "Load extracted data from a Data Source to a data mart." "Extracted data from a Data Source for one or more patients for research purposes."
* #terminate-reporting-workflow "Terminate a reporting workflow" "Request the initiation of terminating a reporting workflow."
* #terminate-reporting-workflow #cancel-report "Cancel an already submitted report" "Cancel an already submitted report."
* #report-chronic-disease-surveillance "Report Chronic Disease Surveillance report" "This action represents the reporting of a Chronic Disease Surveillance report."

ValueSet: VSPlanDefinitionActions
Id: fr-vs-vs-plandefinition-actions
Title: "FR Veille Sanitaire PlanDefinition Action Codes"
Description: "The FR Veille Sanitaire PlanDefinition Actions CodeSystem is a 'starter set' of codes supported for identifying actions in PlanDefinition."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20241004"
* include codes from system fr-cs-vs-plandefinition-actions

// SVS profile
* ^experimental = true