<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY_Legis-Head">
    
  <title>leg:juris <lnpid>id-MY05LL-17030</lnpid></title>
  <body>

    <section>


      <p>       
         <ul>
                <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If value for
                                <sourcexml>leg:juris</sourcexml> is "MY" then
                                <sourcexml>leg:juris</sourcexml> will become
                                <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                            and create
                                <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
                            attributes @codescheme="ISO-3166-1" and @countrycode="MY". </note>
                        <pre>
              
              &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;MY&lt;/leg:juris&gt;
              
              
              <b>Becomes</b>
              
             
             &lt;jurisinfo:legisbodyinfo&gt;
                &lt;jurisinfo:jurisdiction&gt;
                    &lt;jurisinfo:system&gt;MY&lt;/jurisinfo:system&gt;
                &lt;/jurisinfo:jurisdiction&gt;
            &lt;/jurisinfo:legisbodyinfo&gt;
            &lt;dc:metadata&gt;
                &lt;dc:coverage&gt;
                    &lt;location:country codescheme="ISO-3166-1" countrycode="MY"/&gt;
                &lt;/dc:coverage&gt;
            &lt;/dc:metadata&gt;
                     
                  </pre>
                        <note>If <sourcexml>leg:juris</sourcexml> has attribute
                            <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita">ln.user_displayed="false"</xref> then map it as
                            usual (as if the @ln.user-displayed did not exist).</note>
                        <note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from
                            conversion except for the citation element.</note>
                    </li>
     
     </ul>         
     </p>
    </section>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\MY_Legis-Head.dita  -->
<!--	<xsl:message>MY_Legis-Head.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:juris[. = ('MY', 'my')]">
        <jurisinfo:legisbodyinfo>
            <xsl:if test="parent::leg:info/child::leg:govoffice">
                <xsl:apply-templates select="parent::leg:info/child::leg:govoffice"/>
            </xsl:if>
            <jurisinfo:jurisdiction>
                <jurisinfo:system>
                    <xsl:apply-templates select="node()"/>
                </jurisinfo:system>
            </jurisinfo:jurisdiction>
        </jurisinfo:legisbodyinfo>
    </xsl:template>
    
    <xsl:template match="leg:juris[. = 'MY']" mode="metadata">
        <dc:coverage>
            <location:country codescheme="ISO-3166-1" countrycode="MY"/>
        </dc:coverage>
    </xsl:template>
    
    <xsl:template match="leg:govoffice">
        <jurisinfo:govbodyname>
            <xsl:apply-templates/>
        </jurisinfo:govbodyname>
    </xsl:template>
    
    
    <xsl:template match="leg:juris/@searchtype"/>
    
    <xsl:template match="docinfo/docinfo:normcite">
        <ref:citations>
            <ref:cite4thisresource citetype="normcite">
                <ref:nonciteidentifier normprotocol="unspecified">
                    <xsl:value-of select="./ci:cite/ci:content"/>
                </ref:nonciteidentifier>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>
    
</xsl:stylesheet>