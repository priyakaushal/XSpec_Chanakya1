<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.headnote-LxAdv_courtcase.head">
    <title>case:headnote <lnpid>id-ST01-26222</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/mapping"/>
        <example>
            <codeblock>
&lt;case:headnote&gt;
	...
&lt;/case:headnote&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:courtcase&gt;
    &lt;courtcase:head&gt;
        ...
    &lt;/courtcase:head&gt;
    ...
&lt;/courtcase:courtcase&gt;
       </codeblock>
        </example>

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\courtcase-Head.dita  -->
	<xsl:message>courtcase-Head.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>