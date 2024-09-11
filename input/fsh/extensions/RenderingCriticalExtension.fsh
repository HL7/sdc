Extension: RenderingCriticalExtension
Id: sdc-rendering-criticalExtension
Title: "Rendering Critical"
Description: "Indicates an extension that must be supported by the system presenting the instance for data capture or end-user consumption.  If a system does not recognize the extension or is unable to implement the functionality defined by the extension, then it should display an error message or warning and refrain from presenting the instance to the user or using it when capturing data."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
* . ^short = "Extension that must be supported"
* . ^definition = "Indicates an extension that must be supported by the system presenting the instance for data capture or end-user consumption.  If a system does not recognize the extension or is unable to implement the functionality defined by the extension, then it should display an error message or warning and refrain from presenting the instance to the user or using it when capturing data."
* . ^comment = "This may point to extensions that control the appearance of data elements, control what value elements have, what elements are or are not available, what elements can or cannot be edited, or rules about how editing may occur. This extension does NOT apply when simply rendering a resource for publication purposes or for other purposes not intended for end-user data capture or data consumption."