<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08_OPDOC_Regulation-caption">
		<title><sourcexml>caption</sourcexml> to <targetxml>caption</targetxml> <lnpid>id-UK08OR-28822</lnpid> </title>
		<body>
			<section>
				<p><sourcexml>caption</sourcexml> becomes <targetxml>caption</targetxml>.</p>
				<p> The content inside caption should be mapped to
					<targetxml>caption/p/text</targetxml>.in target. Refer below input and output.</p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock>
<![CDATA[
<figure>
    <caption>Head of PSL IP&amp;IT</caption>
 .........   
</figure>

]]>
       </codeblock>
				<title>Target XML</title>
				<codeblock>   
<![CDATA[
<figure>
    <caption>
        <p>
            <text>Head of PSL IP&amp;IT</text>
        </p>
    </caption>
  .........  
</figure>
]]>
	</codeblock>
			</example>
			<note> if Source document having multiple <sourcexml>caption</sourcexml>as siblings within
				parent <sourcexml>figure</sourcexml> then in target create only single
				<targetxml>caption</targetxml> within <targetxml>figure</targetxml> and multiple child
				<targetxml>p</targetxml> elements with the single <targetxml>caption</targetxml>. <p>Create
					one <targetxml>p/text</targetxml> element for each <sourcexml>caption</sourcexml>
					element.</p></note>
			<example>
				<title>Source XML</title>
				<codeblock>
<![CDATA[
<figure>
    <caption>Figure 1</caption>
    <caption>Typical sequence …</caption>
    ............
</figure>

]]>
       </codeblock>
				<title>Target XML</title>
				<codeblock>   
<![CDATA[
<figure>
    <caption>
        <p>
            <text>Figure 1</text>
        </p>
        <p>
            <text> Typical sequence …</text>
        </p>
    </caption>  
   ............
</figure>   
]]>
	</codeblock>
			</example>
			
			<section>
				<title>Changes</title>
				<p>2017-04-27: <ph id="change_20170427_RS">Added instrucions and example for handling
					<sourcexml>caption</sourcexml> and added a note for handling multiple
					<sourcexml>caption</sourcexml> within <sourcexml>figure</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK08_Quasi/UK08OR_QUASI_OPDOC_To_Regulation/UK08_OPDOC_Regulation-caption.dita -->
	<xsl:message>UK08_OPDOC_Regulation-caption.xsl requires manual development!</xsl:message> 
	

	
	


	

</xsl:stylesheet>
