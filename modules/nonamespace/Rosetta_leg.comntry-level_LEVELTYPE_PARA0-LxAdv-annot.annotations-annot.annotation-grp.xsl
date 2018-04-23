<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" 
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-level_LEVELTYPE_PARA0-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry/level @leveltype="para0"</sourcexml> to <targetxml>annot:annotations/annot:annotation-grp/annot:annotation</targetxml> <lnpid>id-CCCC-10376</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>@leveltype="para0"</sourcexml>
            <b>becomes</b>
            <targetxml>annot:annotation</targetxml> with optional attributes and  child elements
            converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>heading/@searchtype</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence.
                Refer to the <xref href="Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>
                section for more information.</li>
              <li><sourcexml>heading/edpnum</sourcexml>
                <b>becomes</b>
                <targetxml>heading/desig</targetxml></li>
              <li><sourcexml>heading/title</sourcexml>
                <b>becomes</b>
                <targetxml>heading/title</targetxml></li>
              <li><sourcexml>bodytext</sourcexml>
                <b>becomes</b>
                <targetxml>bodytext</targetxml></li>
            </ul>
            
            <pre>
              <b><i>Example: Source XML</i></b>                 

&lt;leg:comntry subdoc="true" toc-caption="COMMENTARY ON REGULATION 12"&gt;
	&lt;heading searchtype="COMMENTARY"&gt;
		&lt;title&gt;&lt;refpt id="CLWA.SL.SARW03.REG12.COM1" type="ext"/&gt;COMMENTARY ON REGULATION 12&lt;/title&gt;
	&lt;/heading&gt;
	&lt;level id="CLWA_SL.SGM_CLWA.SL.SARR12-1" leveltype="para0" subdoc="true" toc-caption="[SAR r 12.1] Cross references"&gt;
		&lt;heading searchtype="COMMENTARY"&gt;
			&lt;edpnum&gt;&lt;refpt id="CLWA.SL.SARR12-1" type="ext"/&gt;[SAR r 12.1] &lt;/edpnum&gt;
			&lt;title&gt;Cross references&lt;/title&gt;
		&lt;/heading&gt;
		&lt;bodytext searchtype="COMMENTARY"&gt;
			&lt;p&gt;&lt;text&gt;See Halsbury's Laws of Australia Criminal Law [335&amp;#x2013;40] for details on the
			powers and duties of prison officers, including the search of prisoners, in other jurisdictions.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/level&gt;
&lt;/leg:comntry&gt;
</pre>
            <pre>
              <b><i>Example: Target XML</i></b>
              

&lt;annot:annotations&gt;
	&lt;annot:annotation-grp grptype="COMMENTARY" includeintoc="true" alternatetoccaption="COMMENTARY ON REGULATION 12"&gt;
		&lt;ref:anchor id="CLWA.SL.SARW03.REG12.COM1" anchortype="global"/&gt;
		&lt;heading&gt;&lt;title&gt;COMMENTARY ON REGULATION 12&lt;/title&gt;&lt;/heading&gt;
		&lt;annot:annotation xml:id="CLWA_SL.SGM_CLWA.SL.SARR12-1" alternatetoccaption="[SAR r 12.1] Cross references"
         includeintoc="true"&gt;
			&lt;ref:anchor id="CLWA.SL.SARR12-1" anchortype="global"/&gt;
			&lt;heading&gt;
				&lt;desig&gt;[SAR r 12.1]&lt;/desig&gt;
				&lt;title&gt;Cross references&lt;/title&gt;
			&lt;/heading&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;See Halsbury's Laws of Australia Criminal Law [335&amp;#x2013;40] for details
				on the powers and duties of prison officers, including the search of prisoners, in 
				other jurisdictions.&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/annot:annotation&gt;
	&lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

 </pre></li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_PARA0-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

	<xsl:template match="level[ancestor::leg:comntry][@leveltype='para0']">
		<annot:annotation>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
		  <xsl:if test="$streamID='AU07' and child::*[1][self::glp:note]">
		    <xsl:apply-templates select="glp:note"/>
		  </xsl:if>
      <xsl:apply-templates select="heading"/>
      <xsl:choose>
        <xsl:when test="bodytext">
            <xsl:apply-templates select="node() except (refpt | heading | glp:note)"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="not($streamID='AU07' and child::*[1][self::glp:note])">
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <xsl:apply-templates select="glp:note"/>
            </bodytext>
          </xsl:if>         
          <xsl:apply-templates select="node() except (refpt | heading | glp:note)"/>

        </xsl:otherwise>
      </xsl:choose>
		</annot:annotation>
	</xsl:template>	
  


</xsl:stylesheet>