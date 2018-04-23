<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="classification">
    <title>classification <lnpid>id-CA02DS-12828</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
                    <sourcexml>classification</sourcexml> becomes
                        <targetxml>classify:classification</targetxml>
                    <note>if attribute <sourcexml>@display-name</sourcexml> contain any of the below
                        given values, then conversion need to create attribute
                        classification/@classscheme and value will be captured within it as given
                        below: <ul>
                            <li><sourcexml>classification[@display-name="Classification
                                    Number"]</sourcexml> becomes
                                    <targetxml>classification[@classscheme="classificationNumber"]</targetxml></li>
                            <li><sourcexml>classification[@display-name="Num�ro de la classification"]</sourcexml>
                                becomes <targetxml>classification[@classscheme="classificationNumber"]</targetxml></li>
                        </ul> Use <targetxml>"classificationNumber"</targetxml> for the
                            <targetxml>@classscheme</targetxml>. Both English and French convert to the same value, which will be used in the
							presentation spec to generate the heading "Classification Number". 
							The PSpec will determine the document language using <targetxml>xml:lang</targetxml> to present either 
							"Classification Number" or the French version of that phrase. </note>
                    <p>Children are populated as below:</p>
                    <ul>
                        <li><sourcexml>classitem</sourcexml> becomes
                                <targetxml>classify:classitem</targetxml>.</li>
                        <li><sourcexml>classitem-identifier</sourcexml> becomes
                                <targetxml>classify:classitem-identifier</targetxml>.</li>
                        <li><sourcexml>classcode</sourcexml> becomes
                                <targetxml>classify:classcode</targetxml>.</li>
                    </ul>
                    <p>Example 1:</p>
                    <pre>

&lt;classification display-name="Numéro de la classification"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;AEI254&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;AEI254&lt;/classify:classcode&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

            
            </pre>
                    <p>Example 2:</p>
                    <pre>

&lt;classification display-name="Classification Number"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;WIL935&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;WIL935&lt;/classify:classcode&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </pre>
                    <note>When attributes <sourcexml>@rendition</sourcexml> and
                            <sourcexml>@classscheme</sourcexml> occur with element
                            <sourcexml>classification</sourcexml>, then the value of
                            <sourcexml>@rendition</sourcexml> will move under
                            <targetxml>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</targetxml>
                        and the value of attribute <sourcexml>@classscheme</sourcexml> will move
                        under
                            <targetxml>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@name</targetxml>
                        followed by "classscheme:"</note>
                    <p>Please see below example for more clarifiction.</p>
                    <pre>

&lt;classification classscheme="lnc.card.damage-range" rendition="breadcrumb"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;
                &lt;remotelink&gt;C3.070&lt;/remotelink&gt;
            &lt;/classcode&gt;
            &lt;classname&gt;$70,000 - $79,999&lt;/classname&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>
    

&lt;classify:classification classscheme="lnc.card.damage-range"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;C3.070&lt;/classify:classcode&gt;
            &lt;classify:classname&gt;$70,000 - $79,999&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="classscheme:lnc.card.damage-range" value="breadcrumb"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    
</pre>
                </li>
      </ul>
    </section>
      <section>
          <title>Changes</title>
          <p>2014-03-26 <ph id="change_20140326_SEP">Both English and French should convert to "classificationNumber".<b>DB item # 1176</b></ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\classification.dita  -->
 
    <!--Vikas Rohilla : Template to match the classification and creates the classify:classification-->
	<xsl:template match="classification">
		<classify:classification>
		    <xsl:attribute name="classscheme">
		        <xsl:text>classificationNumber</xsl:text>
		    </xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>
	</xsl:template>
    
    <!--Vikas Rohilla : Template to match the classitem and creates the classify:classitem-->
    <xsl:template match="classitem">
        <classify:classitem>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classitem>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the classitem-identifier and creates the classify:classitem-identifier-->
    <xsl:template match="classitem-identifier">
        <classify:classitem-identifier>
            <xsl:apply-templates select="@*|node()"/>
        </classify:classitem-identifier>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the classcode and creates the classify:classcode-->
    <xsl:template match="classcode">
        <classify:classcode>
            <xsl:apply-templates select="@*|node()"/>
        </classify:classcode>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the classname and creates the classify:classname-->
    <xsl:template match="classname">
        <classify:classname>
            <xsl:apply-templates select="@*|node()"/>
        </classify:classname>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the classcode/@normval and creates the @normval-->
    <xsl:template match="classcode/@normval">
        <xsl:attribute name="normval" select="."/>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the classitem/@classscheme and creates the @classscheme-->
    <xsl:template match="classitem/@classscheme">
        <xsl:attribute name="classscheme" select="."/>
    </xsl:template>

    <!--Vikas Rohilla :supressed the display-name-->
    <xsl:template match="classification/@display-name|classification/@ln.user-displayed"/>
</xsl:stylesheet>