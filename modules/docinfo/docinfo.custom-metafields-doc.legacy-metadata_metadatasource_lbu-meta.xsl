<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="docinfo.custom-metafields-doc.legacy-metadata_metadatasource_lbu-meta">
    <title><sourcexml>docinfo:custom-metafields</sourcexml> to
        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml> <lnpid/></title>
    <body>
        <section><title>Instructions <i>doc:legacy-metadata[@metadatasource="lbu-meta"]</i></title>
          
          <p><sourcexml>docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> becomes
          <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</targetxml>. The
            <sourcexml>docinfo:custom-metafield/@name</sourcexml> or <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute becomes <targetxml>metaitem/@name</targetxml>, which ever is present. If <sourcexml>docinfo:custom-metafield/@name</sourcexml> and <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> are both present, <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> is dropped and <sourcexml>docinfo:custom-metafield/@name</sourcexml> becomes <targetxml>metaitem/@name</targetxml>.</p>
          <p>If <sourcexml>docinfo:custom-metafield</sourcexml> has no content, then the <targetxml>metaitem/@value</targetxml> attribute is set to an empty string.</p>
            <p><b><u>Exceptions:</u></b>
                <sourcexml>docinfo:custom-metafield</sourcexml> is suppressed when
                <sourcexml>@name</sourcexml> or <sourcexml>@searchtype</sourcexml> is any of the
                following values:<ul><li><sourcexml>"COURT-CLASSIFY"</sourcexml></li><li><sourcexml>"JURIS-CLASSIFY"</sourcexml></li><li><sourcexml>"unhandled"</sourcexml></li></ul>
              .</p>      
             <note>The <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta</targetxml> container
          will only be created once for all its child mappings to <targetxml>metaitem</targetxml>.
          This includes values mapped from elsewhere in the same source file.</note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="act-no"&gt;9932336&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="reg-no"&gt;1&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="chunk-no"&gt;1150&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="JURIS-SORT"&gt;140&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="COURT-SORT"&gt;170&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="TERM-SORT"&gt;118650&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="effect-date"&gt;00000000&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="juris"&gt;10&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="dpsi"&gt;03JC&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="pageestimate"&gt;4&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="CITED-COUNT"&gt;0&lt;/docinfo:custom-metafield&gt;    
    &lt;docinfo:custom-metafield name="date"&gt;20070919&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="country"&gt;1&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="court"&gt;145&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="unhandled"&gt;0&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="COURT-CLASSIFY"&gt;BCLabRelBd&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="JURIS-CLASSIFY"&gt;CD&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="act-no" value="9932336"/&gt;
        &lt;metaitem name="reg-no" value="1"/&gt;
        &lt;metaitem name="chunk-no" value="1150"/&gt;
        &lt;metaitem name="JURIS-SORT" value="140"/&gt;
        &lt;metaitem name="COURT-SORT" value="170"/&gt;
        &lt;metaitem name="TERM-SORT" value="118650"/&gt;
        &lt;metaitem name="effect-date" value="00000000"/&gt;
        &lt;metaitem name="juris" value="10"/&gt;
        &lt;metaitem name="dpsi" value="03JC"/&gt;
        &lt;metaitem name="pageestimate" value="4"/&gt;
        &lt;metaitem name="CITED-COUNT" value="0"/&gt;
        &lt;metaitem name="country" value="1"/&gt;
        &lt;metaitem name="court" value="145"/&gt;
        &lt;metaitem name="date" value="20070919"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </codeblock>
        </example>       
        
        <!--section>
            <title>Changes</title>
        </section-->
    </body>
	</dita:topic>
	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\docinfo.custom-metafields-doc.legacy-metadata_metadatasource_lbu-meta.dita  -->


	<!-- Sudhanshu 26/04/2017: Template for  docinfo:custom-metafields and it is converting in doc:legacy-metadata then process all child nodes.-->
	<xsl:template match="docinfo:custom-metafields">
		<doc:legacy-metadata>
			<xsl:attribute name="metadatasource">
				<xsl:text>lbu-meta</xsl:text>
			</xsl:attribute>
			<meta>
				<xsl:apply-templates/>
			</meta>
		</doc:legacy-metadata>
	</xsl:template>

	<!-- Sudhanshu 26/04/2017: Template for docinfo:custom-metafield and it is converting in metaitem then process it's attribute and child node-->
	<xsl:template match="docinfo:custom-metafield">
				<metaitem>
					<xsl:copy-of select="attribute::node()"/>
					<xsl:attribute name="value">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</metaitem>
	</xsl:template>
	
	<!-- Sudhanshu 26/04/2017: Sppressed  docinfo:custom-metafield which having these attribute and values-->
	<xsl:template match="docinfo:custom-metafield[@searchtype='COURT-CLASSIFY' or @searchtype='JURIS-CLASSIFY' or @searchtype='unhandled' or @name='COURT-CLASSIFY' or @name='JURIS-CLASSIFY' or @name='unhandled']" priority="2"/>
</xsl:stylesheet>