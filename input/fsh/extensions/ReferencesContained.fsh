Extension: ReferencesContained
Id: sdc-referencesContained
Title: "References contained"
Description: "This indicates that the element containing this extension has some sort of expression that makes reference to the specified contained resource."
* ^status = #active
* ^purpose = "To satisfy the validator requirement that contained resources must be referenced from somewhere else within the containing resource. "
* . 0..1
* . ^short = "Reference to the contained resource"
* . ^definition = "This indicates that the element containing this extension has some sort of expression that makes reference to the specified contained resource."
* . ^comment = "This extension is used to satisfy the validator requirement that contained resources must be referenced from somewhere else within the containing resource.  It SHALL be placed inside the element that has the expression referencing the contained resource."
* url only uri
* value[x] only Reference