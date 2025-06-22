Profile: SDCLibrary
Parent: $cqllibrary
Id: sdc-library
Title: "SDC Library"
Description: "Defines how a Library is used as a logic computable library within the ONC's Structured Data Capture standard."
* ^status = #active
* . ^definition = "Sets expectations for SDC-conformant systems around use of libraries."
* subject[x] MS
* relatedArtifact MS
  * display 1..1 MS
  * url 1..1 MS
* parameter MS
* dataRequirement MS
* content MS
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "contentType"
* content ^slicing.rules = #open
* content contains
    cqlContent 0..1 MS and
    fhirpathContent 0..1 MS and
    queryContent 0..1 MS
* insert addContent(cqlContent, "CQL Content", #text/cql, "The CQL content represented as base-64 encoded data.") 
* insert addContent(fhirpathContent, "FHIRPath Content", #text/fhirpath, "The FHIRPath content represented as base-64 encoded data.") 
* insert addContent(queryContent, "Query Content", #application/x-fhir-query, "The query content represented as base-64 encoded data.") 


