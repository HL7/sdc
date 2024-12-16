CodeSystem: KeyboardTypeCodes
Id: keyboardType
Title: "Keyboard Type"
Description: "For string or text items, indicates the 'keyboard type' that should be used by the user interface to guide entry."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #phone "Phone" "Keyboard type optimized for input of phone numbers (digits with letters, different prediction)"
* #email "email" "Keyboard type optimized for input of email addresses (easy access to at-sign, different prediction)"
* #number "Number" "Keyboard type optimized for entering digits (useful for strings as well, such as for entering numerical identifiers)"
* #url "URL" "Keyboard type optimized for entering URLs and URIs"
* #chat "Chat" "Keyboard type optimized for chat messages (easy access to emoticons, different prediction)"