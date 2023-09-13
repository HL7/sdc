Extension: SourceQueriesExtension
Id: sdc-questionnaire-sourceQueries
Title: "Source queries for population mapping"
Description: "A Batch Bundle containing a set of queries that should be executed to provide source data for a StructureMap to create a populated QuestionnaireResponse."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..1
* . ^short = "Bundle of queries to populate from"
* . ^definition = "A Batch Bundle containing a set of queries that should be executed to provide source data for a StructureMap to create a populated QuestionnaireResponse."
* url only uri
* value[x] only Reference(Bundle)