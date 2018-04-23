<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-Material-Introduction">
       <title>Introduction <lnpid>id-AU15-20820</lnpid></title>
    <body>
        <p><u>This Conversion Instruction describes the conversion of the <b>Rosetta LEGDOC DTD</b>
                to <b>Admindoc Schema</b> (Version 4.9 PROD).</u></p>
        <section><title>Root Element</title>
            <p>Identification Criteria for AU15 Regulatory Material &amp; Services overflow
                    <sourcexml>LEGDOC[@legtype="reg-code | leg-inst | misc-inst |
                    proc-guide"]</sourcexml> and for NZ Regulation
                    <sourcexml>LEGDOC[@legtype="leg-inst"]</sourcexml>:- The
                    <sourcexml>LEGDOC</sourcexml>
                <b>Becomes</b>
                <targetxml>admindoc:admindoc</targetxml>. It is a root element for both content
                stream and the source attributes are listed below: <ol>
                    <li><sourcexml>@id</sourcexml>
                        <b>becomes</b>
                        <targetxml>xml:id</targetxml>.</li>
                    <li><sourcexml>@legtype</sourcexml> attribute contains four values and these
                            <sourcexml>legtype</sourcexml> attribute values are converted on the
                        basis of below listed items in <targetxml>classification</targetxml> markup: <ul>
                            <li><sourcexml>reg-code</sourcexml>
                                <b>becomes</b>
                                <targetxml>regulatory-code</targetxml></li>
                            <li><sourcexml>leg-inst</sourcexml>
                                <b>becomes</b>
                                <targetxml>legislative-instrument</targetxml></li>
                            <li><sourcexml>misc-inst</sourcexml>
                                <b>becomes</b>
                                <targetxml>miscellaneous-instrument</targetxml></li>
                            <li><sourcexml>proc-guide</sourcexml>
                                <b>becomes</b>
                                <targetxml>procedural-guide</targetxml></li>
                        </ul>
                        <b>becomes</b>
                        <targetxml>/admindoc:admindoc/doc:metadata/doc:docinfo/classify:classification@classscheme/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. </li>
                    <li>Create <targetxml>admindoc:admindoc[@xml:lang]</targetxml> which is used to
                        specify the language that is being used in the content/document. The
                        presence or absence of attribute value will not affect delivery product
                        behavior and default value is 'none'.</li>
                    <li>Create
                            <targetxml>admindoc:admindoc@admindoctype="agency-material"</targetxml>
                        which is used to specify about the miscellaneous agency-issued
                        documents.</li>
                </ol>
                <pre>

              <b><i>Example: Source XML 1</i></b>


&lt;LEGDOC legtype="reg-code"&gt;
	...
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="AU"/&gt;
	...
&lt;/LEGDOC&gt;

	</pre>
                <pre>

              <b><i>Example: Target XML 1</i></b>


&lt;admindoc:admindoc xml:lang="en-AU" admindoctype="agency-material"&gt;
	...
	&lt;doc:metadata&gt;
		&lt;doc:docinfo&gt;
			&lt;classify:classification classscheme="au.admindoctype"&gt;
				&lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt;
						&lt;classify:classname&gt;regulatory-code&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt;
				&lt;/classify:classitem&gt;
			&lt;/classify:classification&gt;
		&lt;/doc:docinfo&gt;
	&lt;/doc:metadata&gt;
&lt;/admindoc:admindoc&gt;

            </pre>
                <pre>

              <b><i>Example: Source XML 2</i></b>


&lt;LEGDOC legtype="leg-inst"&gt;
	...
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="AU"/&gt;
	...
&lt;/LEGDOC&gt;

	</pre>
                <pre>

              <b><i>Example: Target XML 2</i></b>


&lt;admindoc:admindoc xml:lang="en-AU" admindoctype="agency-material"&gt;
	...
	&lt;doc:metadata&gt;
		&lt;doc:docinfo&gt;
			&lt;classify:classification classscheme="au.admindoctype"&gt;
				&lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt;
						&lt;classify:classname&gt;legislative-instrument&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt;
				&lt;/classify:classitem&gt;
			&lt;/classify:classification&gt;
		&lt;/doc:docinfo&gt;
	&lt;/doc:metadata&gt;
&lt;/admindoc:admindoc&gt;

            </pre>
                <pre>

              <b><i>Example: Source XML 3</i></b>


&lt;LEGDOC legtype="misc-inst"&gt;
	...
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="AU"/&gt;
	...
&lt;/LEGDOC&gt;

	</pre>
                <pre>

              <b><i>Example: Target XML 3</i></b>


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
                <pre>

              <b><i>Example: Source XML 4</i></b>


&lt;LEGDOC legtype="proc-guide"&gt;
	...
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="AU"/&gt;
	...
&lt;/LEGDOC&gt;

	</pre>
                <pre>

              <b><i>Example: Target XML 4</i></b>


&lt;admindoc:admindoc xml:lang="en-AU" admindoctype="agency-material"&gt;
	...
	&lt;doc:metadata&gt;
		&lt;doc:docinfo&gt;
			&lt;classify:classification classscheme="au.admindoctype"&gt;
				&lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt;
						&lt;classify:classname&gt;procedural-guide&lt;/classify:classname&gt;
					&lt;/classify:classitem-identifier&gt;
				&lt;/classify:classitem&gt;
			&lt;/classify:classification&gt;
		&lt;/doc:docinfo&gt;
	&lt;/doc:metadata&gt;
&lt;/admindoc:admindoc&gt;

            </pre>
            </p>

            <p><targetxml>admindoc:head</targetxml>, <targetxml>admindoc:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>admindoc:admindoc</targetxml>.</p>
            
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion except for the citation element.</p>
            
        </section>
                
        <section>
                           <title>Notes</title>
                            <p>The following information is meant to help the user understand the conventions used in this document.</p>
                            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
                            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
                            <p>Verify content of following target attributes: 
                                        <ul>
                                        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
                                        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
                                        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>

                                        </ul>
                            </p>
                </section>
	</body>
	</dita:topic>
 

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:call-template name="xml_lang"/>
			<xsl:attribute name="admindoctype">agency-material</xsl:attribute>
			<xsl:apply-templates select="@*"/>
			
			<admindoc:head>			
				<xsl:apply-templates select="leg:body/leg:info/leg:dates|leg:body/leg:info/leg:juris"/>
				<xsl:apply-templates select="leg:body/leg:info/leg:year"/>
			</admindoc:head>
			<xsl:apply-templates select="node() except(docinfo)"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</admindoc:admindoc>

	</xsl:template>
	
	<xsl:template match="/LEGDOC/@legtype" mode="AUClassify">
		<classify:classification>
			<xsl:attribute name="classscheme">au.admindoctype</xsl:attribute>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:choose>
							<xsl:when test=". = 'reg-code'">regulatory-code</xsl:when>
							<xsl:when test=". = 'leg-inst'">legislative-instrument</xsl:when>
							<xsl:when test=". = 'misc-inst'">miscellaneous-instrument</xsl:when>
							<xsl:when test=". = 'proc-guide'">procedural-guide</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="."/>
							</xsl:otherwise>
						</xsl:choose>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>
	</xsl:template>
	
	<xsl:template match="@xml:id"/>
	<xsl:template match="@legtype"/>
	<xsl:template match="@searchtype"/>

</xsl:stylesheet>