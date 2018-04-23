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
	    id="UK06_LawsActsBillsMeasures-note-Chof-toc.entry">
	    <title>note as child of toc-entry <lnpid>id-UK06-28054</lnpid> </title>
	    <body>
	        <section><p><sourcexml>toc-entry</sourcexml> may contain child siblings
	            <sourcexml>heading</sourcexml> and <sourcexml>note</sourcexml>. The individual
	            elements are mapped as described elesewhere in these Conversion Instructions.</p>
	            <p><i><b>In Addition:</b></i></p>
	            <p>For target, move <targetxml>note</targetxml> to become last child of
	                <targetxml>heading</targetxml>. That is: in source,
	                <sourcexml>heading</sourcexml> and <sourcexml>note</sourcexml> are siblings; in
	                target, <targetxml>heading</targetxml> contains
	                <targetxml>note</targetxml>.</p></section>
	        
	        
	        <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>
<![CDATA[
<toc-entry>
    <heading>
        <desig value="Part_III">
            <designum>Part III</designum>
        </desig>
        <title>Housing the Homeless</title>
    </heading>
    <note notetype="commentary">
        <p>
            <text>[<emph typestyle="it">Not printed in this work</emph>]</text>
        </p>
    </note>
</toc-entry>
]]> 
<b><i>Target XML</i></b>
<![CDATA[
<toc-entry>
    <heading>
        <desig value="Part_III">Part III</desig>
        <title>Housing the Homeless</title>
        <note notetype="commentary">
            <bodytext>
                <p>
                    <text>[<emph typestyle="it">Not printed in this work</emph>]</text>
                </p>
            </bodytext>
        </note>
    </heading>
</toc-entry>
]]>
                </pre>
	        <section>
	            <title>Changes</title>
	            <p>2017-03-30: <ph id="change_20170330_RS">New section. Handles note within toc-entry.
	                New Xpath.</ph> Webstar(#6823885).</p>
	        </section>
	    </body>
	    
	</dita:topic>

	
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK06-LawsActsBillsMeasures/UK06_LawsActsBillsMeasures-note-Chof-toc.entry.dita -->
     
	<!-- Sudhanshu Srivastava 
	     Edited on : 8-Sept-2017.
	     Comments : This is content specific module for handling note under toc-entry.
	     	-->
	<xsl:template match="toc-entry">
		<toc-entry>
			<xsl:apply-templates select="@*|node() except note"/>
		</toc-entry>
	</xsl:template>
</xsl:stylesheet>
