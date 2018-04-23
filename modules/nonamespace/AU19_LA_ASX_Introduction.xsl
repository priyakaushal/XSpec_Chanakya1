<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.0" exclude-result-prefixes="dita leg glp xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Introduction">
    <title>Introduction <lnpid>id-AU19LA-22010</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of the <b>Rosetta LEGDOC DTD</b>
        to <b>Admindoc Schema</b> (Version 4.9_PROD )</shortdesc>
    <body>
        <section>
            <title>Root Element</title>
            <sourcexml>LEGDOC[@legtype="misc-inst"]</sourcexml> The <sourcexml>LEGDOC</sourcexml>
            <b>Becomes</b>
            <targetxml>admindoc:admindoc</targetxml>. It is a root element for both content stream
            and the source attributes are listed below: <ol>
                <li><sourcexml>@id</sourcexml>
                    <b>becomes</b>
                    <targetxml>xml:id</targetxml>.</li>
                <li><sourcexml>@legtype</sourcexml> attribute contains the value
                    <ul>
                        <li><sourcexml>legtype="misc-inst"</sourcexml>
                            <b>becomes</b>
                        <targetxml>miscellaneous-instrument</targetxml></li></ul>
                    <ul>
                        <li><sourcexml>legtype="leg-inst"</sourcexml>
                            <b>becomes</b>
                            <targetxml>legislative-instrument</targetxml></li>
                            </ul>
                <ul>
                    <li><sourcexml>legtype="reg-code"</sourcexml>
                        <b>becomes</b>
                        <targetxml>regulatory-code</targetxml></li>
                        </ul>
                </li>
                
                <li>Create <targetxml>admindoc:admindoc[@xml:lang]</targetxml> which is used to
                    specify the language that is being used in the content/document. The presence or
                    absence of attribute value will not affect delivery product behavior and default
                    value is 'none'.</li>
                <li>Create <targetxml>admindoc:admindoc@admindoctype="agency-material"</targetxml>
                    which is used to specify about the miscellaneous agency-issued documents.</li>
            </ol>
            <pre><b><i>Example: Source XML</i></b>


&lt;LEGDOC legtype="misc-inst"&gt;
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="AU"/&gt;
  ...
&lt;/LEGDOC&gt;
</pre>
            <pre>
<b><i>Example: Target XML</i></b>


&lt;admindoc:admindoc xml:lang="en-AU" admindoctype="agency-material"&gt;
	...
	&lt;doc:metadata&gt;
		&lt;doc:docinfo&gt;
			&lt;classify:classification classscheme="au.admindoctype"&gt;
				&lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt;
						&lt;classify:classname&gt;miscellaneous-instrument&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt;
				&lt;/classify:classitem&gt;
			&lt;/classify:classification&gt;
		&lt;/doc:docinfo&gt;
	&lt;/doc:metadata&gt;
&lt;/admindoc:admindoc&gt;

            </pre>
            <p><targetxml>admindoc:head</targetxml>, <targetxml>admindoc:body</targetxml> and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>admindoc:admindoc</targetxml>.</p>
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
                except for the citation element.</p>
        </section>
        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used
                in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML
                    SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML
                    TARGET</targetxml></p>
            <p>Verify content of following target attributes: <ul>
                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
                        digits in length. Any other lengths, do not output
                            <targetxml>@year</targetxml>.</li>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
                        between 01-12. Any numbers outside this range, do not output a
                            <targetxml>@month</targetxml>.</li>
                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
                        01-31. Any numbers outside this range, do not output
                            <targetxml>@day</targetxml>.</li>
                </ul>
            </p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_Introduction.dita  -->
	
	<xsl:template match="LEGDOC">
		<xsl:param name="outputSchemaLoc"
			select="'urn:x-lexisnexis:content:administrative-document:sharedservices:1 sch_admindoc.xsd'"/>
		<admindoc:admindoc>			
		    <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:call-template name="xml_lang"/>
			<xsl:attribute name="admindoctype">agency-material</xsl:attribute>
			<xsl:apply-templates select="@* except @legtype"/>
			<admindoc:head>
				<!--  ... -->
			</admindoc:head>
			<xsl:apply-templates select="leg:body"/>
			<doc:metadata>
			    <pubinfo:pubinfo>
			        <xsl:apply-templates select="leg:body/descendant::leg:level/descendant::leg:heading/glp:note/table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename=('asx-logo.gif' , 'asx_logo.gif')] | //glp:note[blockquote/p/text/copyright][not(child::*[2])]" mode="pubinfo"/>
			    </pubinfo:pubinfo>
			    
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</admindoc:admindoc>
	</xsl:template>
	
	<xsl:template match="/LEGDOC/@legtype" mode="AUClassify">
		<classify:classification classscheme="au.admindoctype">
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:choose>
							<xsl:when test=".='misc-inst'">miscellaneous-instrument</xsl:when>
							<xsl:when test=".='leg-inst'">legislative-instrument</xsl:when>
							<xsl:when test=".='reg-code'">regulatory-code</xsl:when>
						</xsl:choose>
						</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>
	</xsl:template>
	
	
	

</xsl:stylesheet>