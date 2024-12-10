// Usage: Instance: Questionnaire-assemble
RuleSet: parameter(name, use, min, max, type, documentation) 
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* type = {type}
* documentation = {documentation}

RuleSet: parameterComplex(name, use, min, max, documentation) 
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* documentation = {documentation}


// Usage: Instance: demographics
RuleSet: item(linkId, definition, text, type) 
* linkId = "{linkId}"
* definition = "{definition}"
* text = "{text}"
* type = {type}

// Usage: Instance: questionnaire-sdc-profile-example-cap
RuleSet: itemType(linkId, text, type) 
* item[+]
  * linkId = {linkId}
  * text = {text}
  * type = {type}
  * required = true


// Usage: Instance: demographics
RuleSet: hidden()
* extension[$questionnaire-hidden].valueBoolean = true

// Usage: Instance: demographics
RuleSet: initialExpression(expression)
* extension[InitialExpressionExtension]
  * valueExpression
    * language = #text/fhirpath
    * expression = "{expression}"

// Usage: Instance: demographics
RuleSet: itemPopulationContext(name, language, expression)
* extension[ItemPopulationContextExtension]
  * valueExpression
    * name = "{name}"
    * language = {language}
    * expression = "{expression}"

// Usage: Instance: demographics
RuleSet: definitionExtract(resourceTypeOrProfile)
* extension[DefinitionExtractExtension]
  * extension[definition].valueCanonical = "{resourceTypeOrProfile}"

// Usage: Instance: example-of-Task
RuleSet: taskInputCanonical(type, valueCanonical)
* input[+]
  * type = {type}
  * valueCanonical = "{valueCanonical}" 

// Usage: Instance: example-of-Task
RuleSet: taskInputUrl(type,  valueUrl)
* input[+]
  * type = {type}
  * valueUrl = "{valueUrl}"

// Usage: Instance: example-of-Task
RuleSet: taskOutput(type, valueReference)
* output
  * type = {type}
  * valueReference = Reference({valueReference}) 

// Define a function to generate a choice item
RuleSet: itemChoice(linkId, text, answerValueSet) 
* item[+]
  * linkId = {linkId}
  * text = {text}
  * type = #choice
  * required = true
  * repeats = false
  * answerValueSet = {answerValueSet}


RuleSet: itemQuantityText(linkId, text) 
* item[+]
  * linkId = {linkId}
  * text = {text}
  * type = #quantity
  * repeats = false
  * readOnly = true

// Usage: Instance: adaptive-questionnaireresponse-sdc-example-phq9
// Define a function to generate a ruleset for coding item
RuleSet: itemCoding(linkId, text, answerValueCoding) 
* item.item[+]
  * linkId = {linkId}
  * text = {text}
  * answer.valueCoding = {answerValueCoding}

// Usage: Instance: adaptive-questionnaireresponse-sdc-example-phq9
// Define a function to generate a ruleset for quantity item
RuleSet: itemQuantity(linkId, text, quantityValue, quantityUnit) 
* item.item[+]
  * linkId = {linkId}
  * text = {text}
  * answer.valueQuantity.value = {quantityValue}
  * answer.valueQuantity.unit = {quantityUnit} 

// Usage: Instance: adaptive-questionnaireresponse-sdc-example-phq9
// Define a function to generate a ruleset for a single item
RuleSet: VSConcept(code, display)
* compose.include.concept[+]
  * code = {code}
  * display = {display}

RuleSet: VSContains(system, code, display, weight)
* contains[+]
  * system = {system}
  * code = {code}
  * display = {display}
//  * extension[$valueset-containsProperty]
//    * extension[+]
//      * url = "code"
//      * valueCode = #itemWeight
//    * extension[+]
//      * url = "value[x]"
//      * valueDecimal = {weight}

//Usage: Instance: anc-quick-check
// Define a function to generate a ruleset for item's answerOption
RuleSet: answerOption(url, valueAttachment, valueString) 
* item.answerOption[+]
  * extension.url = {url}
  * extension.valueAttachment.url = {valueAttachment}
  * valueString = {valueString}

// Usage: Instance: map-populate-out
// Define a function to generate a ruleset for sub item's answer (string)
RuleSet: subItemAnswerString(linkId, valueString) 
* item[+]
  * linkId = {linkId}
  * answer.valueString = {valueString}

// Usage: Instance: map-populate-out
// Define a function to generate a ruleset for sub item's answer (date)
RuleSet: subItemAnswerDate(linkId, valueDate) 
* item[+]
  * linkId = {linkId}
  * answer.valueDate = {valueDate}

// Usage: Instance: map-populate-out
// Define a function to generate a ruleset for sub item's answer (integer)
RuleSet: subItemAnswerInteger(linkId, valueInteger) 
* item[+]
  * linkId = {linkId}
  * answer.valueInteger = {valueInteger}

// Usage: Instance: map-population-example
RuleSet: entryResponse(status, etag, lastModified) 
* response
  * status = {status}
  * etag = {etag}
  * lastModified = {lastModified}

// Usage: Instance: map-population-example
RuleSet: meta(versionId, lastUpdated) 
* meta
  * versionId = {versionId}
  * lastUpdated = {lastUpdated}

// Usage: Instance: map-population-example
RuleSet: name(family, given) 
* name
  * family = {family}
  * given = {given}

// Usage: Instance: map-population-example
RuleSet: telecom(system, value, rank) 
* telecom[+]
  * system = {system}
  * value = {value}
  * rank = {rank}

// Usage: SDC Library Profile
RuleSet: addContent(id, name, contentType, definition)
* content[{id}] ^short = {name}
* content[{id}] ^definition = {definition}
* content[{id}]
  * contentType 1..1 MS
  * contentType only code
  * contentType = {contentType}
  * data 1..1

// CapabiltyStatement RS
RuleSet: SupportedProfile(profile, conf)
* supportedProfile[+] = Canonical({profile})
  * extension[$conf].valueCode = {conf}

RuleSet: Interaction(conf, code, doc)
* interaction[+]
  * extension[$conf].valueCode = {conf}
  * code  = {code}
  * documentation = {doc}

RuleSet: Operation(conf, name, def)
* operation[+]
  * extension[$conf].valueCode = {conf}
  * name  = {name}
  * definition = {def}

RuleSet: SearchInclude(include, conf)
* searchInclude[+] = {include}
  * extension[$conf].valueCode = {conf}

RuleSet: SearchParam(conf, name, type, def)
* searchParam[+]
  * extension[$conf].valueCode = {conf}
  * name = {name}
  * definition = "{def}"
  * type = {type}

// Usage: Instance: questionnaire-population-transform
RuleSet: input(name, type, mode) 
* input[+]
  * name = {name}
  * type = {type}
  * mode = {mode}

// Usage: Instance: questionnaire-population-transform
RuleSet: source(context, element, variable) 
* source
  * context = {context}
  * element = {element}
  * variable = {variable}

// Usage: Instance: questionnaire-population-transform
RuleSet: target(context, contextType, element, transform, parameterString) 
* target
  * context = {context}
  * contextType = {contextType}
  * element = {element}
  * transform = {transform}
  * parameter.valueString = {parameterString}