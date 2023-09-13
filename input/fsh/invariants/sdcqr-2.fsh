Invariant: sdcqr-2
Description: "When repeats=true for a group, it'll be represented with multiple items with the same linkId in the QuestionnaireResponse.  For a question, it'll be represented by a single item with that linkId with multiple answers."
Severity: #error
Expression: "(QuestionnaireResponse|repeat(answer|item)).select(item.where(answer.value.exists()).linkId.isDistinct()).allTrue()"
XPath: "not(exists(for $item in descendant::f:item[f:answer] return $item/preceding-sibling::f:item[f:linkId/@value=$item/f:linkId/@value]))"