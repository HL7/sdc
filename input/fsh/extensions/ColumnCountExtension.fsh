Extension: ColumnCountExtension
Id: sdc-questionnaire-columnCount
Title: "Number of columns for child item layout"
Description: "For questions with a set of options, indicates the number of columns across which those choices should be organized. E.g., 2 columns, 5 columns, etc."
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire.item"
* . 0..1
* . ^short = "Number of columns for layout"
* . ^definition = "For questions with a set of options, indicates the number of columns across which those choices should be organized. E.g., 2 columns, 5 columns, etc."
* . ^comment = "Systems will split the options to maintain balance across the columns. Whether the choices are listed horizontally first or vertically first depends on the choice-orientation extension. Default is vertically first. Note that the number of columns is a recommendation and may not be achievable in all display form factors."
* url only uri
* value[x] only positiveInt
