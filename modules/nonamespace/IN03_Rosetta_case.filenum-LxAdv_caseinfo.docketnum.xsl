<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.filenum-LxAdv_caseinfo.docketnum">
    <title>case:filenum <lnpid>id-IN03-39018</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/mapping"/>
        <example>
            <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;case:filenum&gt;P.C. Appeal No. 52 of 1937.&lt;/case:filenum&gt;
    ...
&lt;/case:courtinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:caseinfo&gt;
    ...
    &lt;caseinfo:docketnum&gt;P.C. Appeal No. 52 of 1937.&lt;/caseinfo:docketnum&gt;
    ...
&lt;/caseinfo:caseinfo&gt;
       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-17: <ph id="change_20160817_HP">Created</ph>.</p>
        </section></body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN03_Cases\IN03_Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita  -->
	<xsl:message>IN03_Rosetta_case.filenum-LxAdv_caseinfo.docketnum.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>