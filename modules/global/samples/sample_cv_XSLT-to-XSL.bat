"%JAVA_HOME%\bin\java" -Xmx1100m -jar "%DATAARCH_HOME%\Script\apache\ant\apache-ant-1.8.2\lib\saxon9.jar" -s:..\..\LA-to-MNCR\drivers\cv\cv.cv_to_cv.curriculumVitae.xsl -xsl:..\XSLT-to-XSL.xsl mode=XSL > cv_to_cv.curriculumVitae.xsl 2>&1