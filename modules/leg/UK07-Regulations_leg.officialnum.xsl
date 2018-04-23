<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
    <title>leg:officialnum <lnpid>id-UK07-28223</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:officialnum</sourcexml> becomes
                    <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"</targetxml>
                with required attribute <targetxml>@idtype</targetxml> and children are described as
                below:</p>
            <ul>
                <li><sourcexml>leg:year</sourcexml> becomes
                        <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="year"</targetxml>.</li>
                <li><sourcexml>leg:seriesnum</sourcexml> becomes
                        <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="seriesnum"</targetxml>.
                </li>
            </ul>
            <note><b>As per content requirement:</b> if <b>"No"</b> does not exist between
                    <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml> then
                conversion need to add <b>"No"</b> (with single space before and after) before the
                target <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml>.</note>
            
            <note>UK07 should only ever have <b>‘No’</b> between <sourcexml>leg:year</sourcexml> and
                    <sourcexml>leg:seriesnum</sourcexml> and UK06 should only ever have
                    <b>‘chapter’</b> between <sourcexml>leg:year</sourcexml> and
                    <sourcexml>leg:seriesnum</sourcexml>. This means that the UK07 files that
                contain <b>‘chapter’</b> are incorrect and need to be amended so that they have
                    <b>‘No’</b> between <sourcexml>leg:year</sourcexml> and
                    <sourcexml>leg:seriesnum</sourcexml>; any instances of the word <b>‘chapter’</b>
                between these tags should be removed and kept word <b>‘No’</b>. For more details please see
                below example, source with 'Chapter'.</note>
        </section>
        <example>
            <codeblock>

&lt;leg:body&gt;
    &lt;leg:info&gt;
        ..........
        &lt;leg:officialnum&gt;
            &lt;leg:year&gt;2010&lt;/leg:year&gt;
            &lt;leg:seriesnum&gt;1&lt;/leg:seriesnum&gt;
        &lt;/leg:officialnum&gt;
        ..........
    &lt;/leg:info&gt;
    ..........
&lt;/leg:body&gt;

      </codeblock>
            <b>Becomes</b>
            <codeblock>

 &lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;primlawinfo:identifier idtype="officialnum"&gt;
            &lt;primlawinfo:identifier-component type="year"&gt;2010&lt;/primlawinfo:identifier-component&gt; No &lt;primlawinfo:identifier-component type="seriesnum"&gt;1&lt;/primlawinfo:identifier-component&gt;
        &lt;/primlawinfo:identifier&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;

       </codeblock>
        </example>
        <example>
            <title>Source with 'Chapter':</title>
            <codeblock>

&lt;leg:officialnum&gt;
    &lt;leg:year&gt;2010&lt;/leg:year&gt;Chapter&lt;leg:seriesnum&gt;640&lt;/leg:seriesnum&gt;
&lt;/leg:officialnum&gt;

                
            </codeblock>
        </example>
        <example>
            <title>Target:</title>
            <codeblock>

&lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;primlawinfo:identifier idtype="officialnum"&gt;
            &lt;primlawinfo:identifier-component type="year"&gt;2010&lt;/
                primlawinfo:identifier-component&gt; No &lt;primlawinfo:identifiercomponent
                    type="seriesnum"&gt;640&lt;/primlawinfo:identifier-component&gt;
        &lt;/primlawinfo:identifier&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;
                
            </codeblock>
        </example>
        
        <p>When <sourcexml>leg:year</sourcexml> is a child of <sourcexml>leg:info</sourcexml> then <sourcexml>leg:year</sourcexml> becomes
            <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="year"</targetxml>.</p>

        <example>
            <title>Source <sourcexml>leg:info/leg:year</sourcexml></title>
            <codeblock>
&lt;leg:info&gt;
    ...
    &lt;leg:year&gt;9th August 1872&lt;/leg:year&gt;
&lt;/leg:info&gt;                
            </codeblock>
        </example>
        <example>
            <title>Target:</title>
            <codeblock>
&lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        ...
        &lt;primlawinfo:identifier idtype="officialnum"&gt;
            &lt;primlawinfo:identifier-component type="year"&gt;9th August 1872&lt;/primlawinfo:identifier-component&gt;
        &lt;/primlawinfo:identifier&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;                
            </codeblock>
        </example>
        
        
        <section>
            <title>Changes:</title>
            <p>2015-08-12: <ph id="change_20150812_PS">Added instruction and example of <sourcexml>leg:info/leg:year</sourcexml>, Applicable on UK07, R4.5 Issue # 2363.</ph></p>
            <p>2014-02-03: <ph id="change_20140203_PY">UK07 should only ever have <b>‘No’</b> between <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml> and UK06 should only ever have <b>‘chapter’</b> between <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml>. Phase 5 UK discussion-defect tracking: issue #154.</ph></p>
            <p>2013-10-25 <ph id="change_20131025_PY">Replaced <b>"NO"</b>(upper case) with <b>"No"</b> in note and target example.</ph></p>
            <p>2013-09-23 <ph id="change_20130923_PY">Added a note with instructions to add if
                <b>"NO"</b> does not exist between <sourcexml>leg:year</sourcexml> and
                <sourcexml>leg:seriesnum</sourcexml>, then conversion need to add
                <b>"NO"</b> (with single space before and after) before the target
                <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml>
                WebTeam #236022.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.officialnum.dita  -->
	

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"   -->
		
				<primlawinfo:identifier>
					<xsl:attribute name="idtype">
						<xsl:text>officialnum</xsl:text>
					</xsl:attribute>
				     <xsl:apply-templates select="text() except (leg:year/text() | leg:seriesnum/text())"></xsl:apply-templates>
				    <xsl:apply-templates select="child::leg:year"/>
				    <xsl:apply-templates select="child::leg:seriesnum"/>
				</primlawinfo:identifier>

	</xsl:template>

	<xsl:template match="leg:year">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="year"   -->
		
					<primlawinfo:identifier-component>
						<xsl:attribute name="type">
							<xsl:text>year</xsl:text>
						</xsl:attribute>
					    <xsl:apply-templates/>
					</primlawinfo:identifier-component> No
	</xsl:template>

	<xsl:template match="leg:seriesnum">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="seriesnum"   -->
		
					<primlawinfo:identifier-component>
						<xsl:attribute name="type">
							<xsl:text>seriesnum</xsl:text>
						</xsl:attribute>
					    <xsl:apply-templates/>
					</primlawinfo:identifier-component>

	</xsl:template>
<!--
	<xsl:template match="leg:info">

		<!-\-  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="year"   -\->
		<regulation:head>
			<primlawinfo:primlawinfo>
				<primlawinfo:identifier>
					<primlawinfo:identifier-component>
						<xsl:attribute name="type">
							<xsl:text>year</xsl:text>
						</xsl:attribute>
					</primlawinfo:identifier-component>
				</primlawinfo:identifier>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>-->

	<!--<xsl:template match="leg:info/leg:year">

		<!-\-  Original Target XPath:  primlawinfo:identifier-component/@type="seriesnum"   -\->
		<primlawinfo:identifier-component>
			<xsl:attribute name="type">
				<xsl:text>seriesnum</xsl:text>
			</xsl:attribute>
		</primlawinfo:identifier-component>

	</xsl:template>-->

</xsl:stylesheet>