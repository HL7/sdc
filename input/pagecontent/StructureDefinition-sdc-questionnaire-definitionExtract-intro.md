Using this extension marks the point in a questionnaire at which a new resource will be created using the [definition](extraction.html#definition-extract) extraction process.

The extension replaces the [sdc-questionnaire-itemContextExtension](StructureDefinition-sdc-questionnaire-itemExtractionContext.html) which was only able to provide the resource type to create, and was unable to define a profile or any of the `bundle.entry.request` properties.
However either extension can be used to indicate a resource type should be extracted.

<a name="scope"></a>
## Scope and Usage
When defined at the root of a questionnaire, the resource will be created even if there are no answers, and then processing the item answers will populate any further properties not covered by the base profile.

When defined on a repeating item, a new resource will be created for each iteration of the item in the QuestionnaireResponse answers, if there is no answer in the QuestionnaireResponse, then no resource is created.

Before this extension is processed, any [sdc-questionnaire-allocateId](StructureDefinition-sdc-questionnaire-extractAllocateId.html) extensions will be processed.

Additional details on the use of this extension can be found on the [Data Extraction](extraction.html#definition-based-extraction) page.

### Populating the transaction bundle entry
After the resource skeleton is created, and all the properties have been extracted from the item answers in the QuestionnaireResponse, the `bundle.entry` properties can be populated:

* `request.method` - if the resource created has no `Id` property, then the method will be `POST`, otherwise it will be `PUT`
* `request.url` - if the resource is being updated, then the url will be the resource type and the `Id` property e.g. `Patient/123`, 
   otherwise it will be the resource type e.g. `Patient`
* `request.ifNoneMatch` - the `ifNoneMatch` value to use (default is none)
* `request.ifModifiedSince` - the `ifModifiedSince` value to use (default is none)
* `request.ifMatch` - the `ifMatch` value to use (default is none)
* `request.ifNoneExist` - the `ifNoneExist` value to use (default is none)
* `fullUrl` - the `fullUrl` value to use, if the expression is missing, or evaluates to empty, then assign a new uuid.
