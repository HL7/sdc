@ECHO OFF

SETLOCAL
SET dlurl=https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
SET jarlocation=input-cache\validator_cli.jar

rem ECHO Downloading most recent validator to %jarlocation% - it's ~150 MB, so this may take a bit
rem CALL POWERSHELL -command if ('System.Net.WebClient' -as [type]) {(new-object System.Net.WebClient).DownloadFile(\"%dlurl%\",\"%jarlocation%\") } else { Invoke-WebRequest -Uri "%dlurl%" -Outfile "%jarlocation%" }

java -Dfile.encoding=UTF-8 -jar input-cache\validator_cli.jar -ig map-source/extract-complex-smap.map               -compile http://hl7.org/fhir/uv/sdc/StructureMap/ExtractComplexSmap               -version 4.0 -output input/resources/StructureMap-extract-complex-smap.xml
java -Dfile.encoding=UTF-8 -jar input-cache\validator_cli.jar -ig map-source/questionnaire-population-transform.map -compile http://hl7.org/fhir/uv/sdc/StructureMap/QuestionnairePopulationTransform -version 4.0 -output input/resources/StructureMap-questionnaire-population-transform.xml
java -Dfile.encoding=UTF-8 -jar input-cache\validator_cli.jar -ig map-source/SDOHCC-StructureMapHungerVitalSign.map -compile http://hl7.org/fhir/uv/sdc/StructureMap/SDOHCCHungerVitalSignMap         -version 4.0 -output input/resources/StructureMap-SDOHCC-Hunger-Vital-Sign-Map.xml

pause