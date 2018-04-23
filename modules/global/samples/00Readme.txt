Some sample bat files for splitting out XSLT/DITA (you should be able to double-click these bat files if your Environment Variable Settings are correct):

	-	Folder: dataArch\XSLT\ContentArch\global\samples
	-	sample_cv_XSLT-to-dita_CI.bat: splits out the dita. You should see a ditaCI folder created. Then you can pull the cv_to_cv.curriculumVitae.ditamap into Oxygen for running/edits. The difficult thing is getting edits back into the source modules.
	-	sample_cv_XSLT-to-XSL.bat: splits out the XSL. You should see output a cv_to_cv.curriculumVitae.xsl.
	-	sample_cv_XSLT-to-XSL-OUT.bat: runs the XSL just created using sample_cvInput.xml as an input. You should see sample_cvOutput.xml as the output

Example Environment Variable Settings:

	DATAARCH_HOME=C:\Views\dataArch
	JAVA_HOME=C:\Program Files\Java\jdk1.8.0

	but your settings may vary.
