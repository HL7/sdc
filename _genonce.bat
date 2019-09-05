@SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
REM XCOPY /M/E/Q/Y _template C:\Users\lloyd\.fhir\packages\fhir.test.template#current
JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini
@PAUSE