CodeSystem: CollapsibleCodes
Id: collapsible
Title: "Collapsible Codes"
Description: "Defines mechanisms of displaying child items in collapsible form"
* ^extension[$standard-status].valueCode = #false
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #default-open "Default Open" "Indicates that the child items should be displayed in expanded form by default (all shown)"
* #default-closed "Default Closed" "Indicates that the child items should be displayed in collapsed form by default (all hidden)"