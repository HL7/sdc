Extension: PreferredTerminologyServer
Id: sdc-questionnaire-preferredTerminologyServer
Title: "Preferred Terminology Server"
Description: "Indicates the terminology server(s) that are known to be capable of returning and potentially expanding the value set(s) associated with the whole questionnaire or a particular group or question within the questionnaire (depending on where the extension appears).  If a full URL is not provided AND the requested query is a terminology operation (e.g. $lookup or $expand) the client SHOULD execute the operation against (one of) the preferredTerminologyServer(s) rather than the local repository. Systems SHOULD evaluate value sets using terminology servers as follows:  First, try any terminology servers declared on the item in question.  If there are more then one, try them in the order they appear.  Then try any servers that appear on ancestor items in order of closest ancestor up to any on the Questionnaire.  If there are no declared servers or none of the ones listed provide a useful response, the form filler may then try any of the typical servers it would normally use.  A 'useful response' means a response that provides a valid (though potentially empty) expansion.  Clients MAY wish to log/report errors returned by terminology servers."
* ^status = #active
* ^purpose = "Not all terminology servers will necessarily have access to the codes.  If a questionnaire points to value sets, the rendering engine needs to know where to get a current expansion."
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..*
* . ^short = "Preferred terminology server"
* . ^definition = "Indicates the terminology server(s) that are known to be capable of returning and potentially expanding the value set(s) associated with the whole questionnaire or a particular group or question within the questionnaire (depending on where the extension appears).  If a full URL is not provided AND the requested query is a terminology operation (e.g. $lookup or $expand) the client SHOULD execute the operation against the preferredTerminologyServer rather than the local repository. Systems SHOULD evaluate value sets using terminology servers as follows:  First, try any terminology servers declared on the item in question.  If there are more then one, try them in the order they appear.  Then try any servers that appear on ancestor items in order of closest ancestor up to any on the Questionnaire.  If there are no declared servers or none of the ones listed provide a useful response, the form filler may then try any of the typical servers it would normally use.  A 'useful response' means a response that provides a valid (though potentially empty) expansion.  Clients MAY wish to log/report errors returned by terminology servers."
* . ^comment = "This includes those referenced by answerValueSet as well as the unitValueSet extension."
* url only uri
* value[x] only url