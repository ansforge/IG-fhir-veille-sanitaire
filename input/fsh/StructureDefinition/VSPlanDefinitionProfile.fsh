Alias: $fr-vs-plandefinition-actions = https://interop.esante.gouv.fr/ig/fhir/vs/CodeSystem/fr-cs-vs-plandefinition-actions


Alias: $us-ph-plandefinition = http://hl7.org/fhir/us/medmorph/StructureDefinition/us-ph-plandefinition
Alias: $us-ph-named-eventtype = http://hl7.org/fhir/us/medmorph/StructureDefinition/us-ph-named-eventtype


Profile: VsPlanDefinitionProfile
Parent: PlanDefinition
Id: vs-plandefinition
Title: "VS PlanDefinition Profile"
Description: "Profil permettant d'indiquer les évènements, conditions et actions associés à une veille sanitaire."

* action MS
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "id"
* action ^slicing.ordered = true
* action ^slicing.rules = #open
* action.code 0..1 MS
// * action.code from $us-ph-plandefinition-action (extensible)
* action.code ^binding.description = "The set of actions that can be used to create plan definition"
* action.input.extension ^slicing.discriminator.type = #value
* action.input.extension ^slicing.discriminator.path = "url"
* action.input.extension ^slicing.rules = #closed
* action.input.extension ^definition = "Defines extensions for the action."
* action.input.extension ^mustSupport = false
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetDuration ^definition = "The duration quantity may include a comparator, indicating how the offset should be applied. For example, <= 1 hour, meaning that the offset should be no more than 1 hour. This allows systems flexibility in scheduling the actions to isolate reporting activities to off hours."

* action contains
    initiateReporting 1..1 MS and
    executeReportingWorkflow 1..1 MS and
    createReport 1..1 and
    validateReport 1..1 and
    routeAndSendReport 1..1
    
* action[initiateReporting] ^short = "Start of a Reporting Workflow"
* action[initiateReporting] ^definition = "Defines the \"start\" action"
* action[initiateReporting].id 1.. MS
* action[initiateReporting].id = "start-workflow"
* action[initiateReporting].description 1.. MS
* action[initiateReporting].description = "This action represents the start of the reporting workflow in response to the encounter-start event. Other named events can be used instead of encounter-start."
* action[initiateReporting].description ^short = "Description of the \"start\" action."
* action[initiateReporting].description ^definition = "Description of the \"start\" action."
* action[initiateReporting].textEquivalent 1.. MS
* action[initiateReporting].textEquivalent = "Start the reporting workflow in response to an encounter-start event"
* action[initiateReporting].textEquivalent ^short = "Text equivalent of the \"start\" action."
* action[initiateReporting].textEquivalent ^definition = "Text equivalent of the \"start\" action."
* action[initiateReporting].code 1..1 MS
* action[initiateReporting].code = $us-ph-plandefinition-actions#initiate-reporting-workflow
* action[initiateReporting].code ^short = "Code for the \"start\" action."
* action[initiateReporting].code ^definition = "The US-PH-PlanDefinition-Action code for the \"start\" action."
* action[initiateReporting].trigger 1.. MS
* action[initiateReporting].trigger obeys epd-1
* action[initiateReporting].trigger ^short = "When the \"start\" action should be triggered."
* action[initiateReporting].trigger ^definition = "When the \"start\" action should be triggered."
// * action[initiateReporting].trigger.extension ..*
// * action[initiateReporting].trigger.extension only Extension
// * action[initiateReporting].trigger.extension obeys ele-1 and ext-1
// * action[initiateReporting].trigger.extension ^slicing.discriminator.type = #value
// * action[initiateReporting].trigger.extension ^slicing.discriminator.path = "url"
// * action[initiateReporting].trigger.extension ^slicing.description = "Extensions are always sliced by (at least) url"
// * action[initiateReporting].trigger.extension ^slicing.rules = #open
// * action[initiateReporting].trigger.extension ^short = "Additional content defined by implementations"
// * action[initiateReporting].trigger.extension ^definition = "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."
// * action[initiateReporting].trigger.extension ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
// * action[initiateReporting].trigger.extension ^alias[0] = "extensions"
// * action[initiateReporting].trigger.extension ^alias[+] = "user content"
// * action[initiateReporting].trigger.extension ^base.path = "Element.extension"
// * action[initiateReporting].trigger.extension ^base.min = 0
// * action[initiateReporting].trigger.extension ^base.max = "*"
// * action[initiateReporting].trigger.extension ^isModifier = false
// * action[initiateReporting].trigger.extension ^isSummary = false
// * action[initiateReporting].trigger.extension contains $us-ph-named-eventtype named namedEventType 0..1 MS
// * action[initiateReporting].trigger.extension[namedEventType] obeys ele-1 and ext-1
// * action[initiateReporting].trigger.extension[namedEventType] ^short = "Indicates the types of named events to subscribe to from the HER."
// * action[initiateReporting].trigger.extension[namedEventType] ^definition = "Indicates the types of named events to subscribe to from the HER."
// * action[initiateReporting].trigger.extension[namedEventType] ^base.path = "Element.extension"
// * action[initiateReporting].trigger.extension[namedEventType] ^base.min = 0
// * action[initiateReporting].trigger.extension[namedEventType] ^base.max = "*"
// * action[initiateReporting].trigger.extension[namedEventType] ^isModifier = false
// * action[initiateReporting].trigger.extension[namedEventType] ^isSummary = false
* action[initiateReporting].trigger.type = #named-event
* action[initiateReporting].trigger.name = "encounter-start"
* action[initiateReporting].trigger.name ^definition = "The name of the event, encounter-start in this case. For any action invoked as a result of this trigger, the triggering encounter is accessible via the context variable `%encounter`"
* action[initiateReporting].relatedAction 1..1 MS
* action[initiateReporting].relatedAction.actionId = "check-reportability"
* action[initiateReporting].relatedAction.relationship = #before-start
* action[initiateReporting].relatedAction.offsetDuration 0..1
* action[initiateReporting].relatedAction.offsetDuration only Duration

* action[executeReportingWorkflow] ^short = "Execute Reporting Workflow"
* action[executeReportingWorkflow] ^definition = "Defines the \"Execute Reporting Workflow\" action"
* action[executeReportingWorkflow].id 1.. MS
* action[executeReportingWorkflow].id = "check-reportability"
* action[executeReportingWorkflow].description 1.. MS
* action[executeReportingWorkflow].description = "This action represents the start of the check for reportable conditions in response to the encounter-start event. This is an example of executing a reporting workflow with other actions."
* action[executeReportingWorkflow].description ^short = "Check for reportability conditions"
* action[executeReportingWorkflow].description ^definition = "Check for Reportable Conditions."
* action[executeReportingWorkflow].code 1..1 MS
* action[executeReportingWorkflow].code = $us-ph-plandefinition-actions#execute-reporting-workflow
* action[executeReportingWorkflow].code ^short = "Code for the \"execute-reporting-workflow\" action."
* action[executeReportingWorkflow].code ^definition = "The US-PH-PlanDefinition-Action code for the \"execute-reporting-workflow\" action."
// * action[executeReportingWorkflow].action ^slicing.discriminator.type = #value
// * action[executeReportingWorkflow].action ^slicing.discriminator.path = "id"
// * action[executeReportingWorkflow].action ^slicing.rules = #open
// * action[executeReportingWorkflow].action contains isEncounterReportable 1..1 MS
// * action[executeReportingWorkflow].action[isEncounterReportable].id 1.. MS
// * action[executeReportingWorkflow].action[isEncounterReportable].id = "is-encounter-reportable"
// * action[executeReportingWorkflow].action[isEncounterReportable].code 1..1
// * action[executeReportingWorkflow].action[isEncounterReportable].code = $us-ph-plandefinition-actions#check-trigger-codes
// * action[executeReportingWorkflow].action[isEncounterReportable].condition.kind = #applicability
// * action[executeReportingWorkflow].action[isEncounterReportable].condition.expression 1.. MS
// * action[executeReportingWorkflow].action[isEncounterReportable].condition.expression.language = #text/fhirpath
// * action[executeReportingWorkflow].action[isEncounterReportable].input MS
// * action[executeReportingWorkflow].action[isEncounterReportable].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"
// * action[executeReportingWorkflow].action[isEncounterReportable].input.id 1..1 MS
// * action[executeReportingWorkflow].action[isEncounterReportable].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"
// * action[executeReportingWorkflow].action[isEncounterReportable].relatedAction.actionId = "create-report"
// * action[executeReportingWorkflow].action[isEncounterReportable].relatedAction.relationship = #before-start

* action[createReport] ^short = "Create the Report"
* action[createReport] ^definition = "Defines the \"Report\" action"
* action[createReport].id 1.. MS
* action[createReport].id = "create-report"
* action[createReport].description = "This action represents the creation of the Report. It subsequently calls validate."
* action[createReport].code 1..1
* action[createReport].code = $us-ph-plandefinition-actions#create-report
* action[createReport].relatedAction 1..1 MS
* action[createReport].relatedAction.actionId = "validate-report"
* action[createReport].relatedAction.relationship = #before-start

* action[validateReport] ^short = "Validate the Report"
* action[validateReport] ^definition = "Defines the \"validate-report\" action"
* action[validateReport].id 1.. MS
* action[validateReport].id = "validate-report"
* action[validateReport].description = "This action represents the validation of the Report. It subsequently calls route-and-send."
* action[validateReport].code 1..1
* action[validateReport].code = $us-ph-plandefinition-actions#validate-report
* action[validateReport].relatedAction 1..1 MS
* action[validateReport].relatedAction.actionId = "route-and-send-report"
* action[validateReport].relatedAction.relationship = #before-start

* action[routeAndSendReport] ^short = "Route and send Report."
* action[routeAndSendReport] ^definition = "Defines the routing and sending of the Report."
* action[routeAndSendReport].id 1.. MS
* action[routeAndSendReport].id = "route-and-send-report"
* action[routeAndSendReport].description 1.. MS
* action[routeAndSendReport].description = "This action represents the routing and sending of the Report."
* action[routeAndSendReport].description ^short = "Description of the route and send action."
* action[routeAndSendReport].textEquivalent 1.. MS
* action[routeAndSendReport].textEquivalent = "Route and send Report"
* action[routeAndSendReport].code 1..1
* action[routeAndSendReport].code = $us-ph-plandefinition-actions#submit-report

Invariant: epd-1
Description: "The code value of the namedEventType SHALL be the same as the name element"
* severity = #error
* expression = "extension('http://hl7.org/fhir/us/medmorph/StructureDefinition/us-ph-named-eventtype').value.coding.code.supersetOf(name)"
* xpath = "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"name\")])"
* source = "http://hl7.org/fhir/StructureDefinition/Extension"

Invariant: ele-1
Description: "All FHIR elements must have a @value or children"
* severity = #error
* expression = "hasValue() or (children().count() > id.count())"
* xpath = "@value|f:*|h:div"
* source = "http://hl7.org/fhir/StructureDefinition/Element"

Invariant: ext-1
Description: "Must have either extensions or value[x], not both"
* severity = #error
* expression = "extension.exists() != value.exists()"
* xpath = "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])"
* source = "http://hl7.org/fhir/StructureDefinition/Extension"