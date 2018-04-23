<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.assoc-links-to-LexisAdvance_doc.related-content">
  <title><sourcexml>leg:relatedleg</sourcexml> to <targetxml>doc:related-content</targetxml>
    <lnpid>id-CA03-13246</lnpid></title>
  <body>
    <section>
      <title>Instructions </title>
      <p>When <sourcexml>leg:relatedleg</sourcexml> is a child of <sourcexml>leg:info</sourcexml>,
        it will occur in pairs. The first instance contains a text value, and the second contains
        citation information. Convert as follows:</p>
      <p>Create a <targetxml>doc:related-content</targetxml> element, with child element
          <targetxml>doc:related-content-grp[@grptype="enabling-act"]</targetxml>, and populate
          <targetxml>doc:related-content-grp</targetxml> as follows: <ul>
          <li>Create <targetxml>heading/title</targetxml>, and populate <targetxml>title</targetxml>
            with 'Enabling Act'.</li>
          <li>Create <targetxml>doc:related-content-item</targetxml> and populate as follows:
              <note>If the first <sourcexml>leg:relatedleg</sourcexml> contains two values (for
              English and French) indicated by a separating "/", the second
                <sourcexml>leg:relatedleg</sourcexml> should contain two citations. If this is the
              case, separate the output into two <targetxml>doc:related-content-item</targetxml>
              elements. Set the first
                <targetxml>doc:related-content-item[1]/@xml:lang="en-CA"</targetxml>, and the second
              to <targetxml>doc:related-content-item[2]/@xml:lang="fr-CA"</targetxml>.</note>
            <ul>
              <li>Create <targetxml>doc:related-content-link</targetxml> (two instances if there are
                English and French versions of the content) and populate as follows: <ul>
                  <li>Create <targetxml>ref:lnlink[@service="TRAVERSE"]</targetxml> and populate as follows:<ul>
                      <li>Map the first <sourcexml>leg:relatedleg</sourcexml> containing the text
                        value to <targetxml>ref:marker</targetxml>. <note>If the markup includes
                          both English and French values, take the text before the slash as the
                          value for the first
                            <targetxml>doc:related-content-item[1]/doc:related-content-link/ref:lnlink/ref:marker</targetxml>.
                          Populate the second
                            <targetxml>doc:related-content-item[2]/doc:related-content-link/ref:lnlink/ref:marker</targetxml>
                          with the text after the slash. Normalize whitespace. The separating "/"
                          will be dropped from output.</note></li>
                      <li>Create <targetxml>ref:locator</targetxml> and populate as follows: <ul>
                          <li>Create <targetxml>ref:locator-key</targetxml> and populate as follows:<ul>
                              <li>Create <targetxml>ref:key-name[@name="normcite"]</targetxml></li>
                              <li>Create <targetxml>ref:key-value</targetxml>, and populate
                                  <targetxml>@value</targetxml> with the value of
                                  <sourcexml>ci:content</sourcexml> in the second
                                  <sourcexml>leg:relatedleg</sourcexml> element.<note>If the second
                                    <sourcexml>leg:relatedleg</sourcexml> contains two citations
                                  (for English and French), take the text value of
                                    <sourcexml>ci:content</sourcexml> in the first citation for the
                                  first
                                    <targetxml>doc:related-content-item[1]/doc:related-content-link/ref:lnlink/ref:locator/ref:locator-key/ref:key-value/@value</targetxml>,
                                  and take the text value of <sourcexml>ci:content</sourcexml> in
                                  the second citation for the second
                                    <targetxml>doc:related-content-item[2]/doc:related-content-link/ref:lnlink/ref:locator/ref:locator-key/ref:key-value/@value</targetxml>.</note></li>
                            </ul></li>
                          <li>Create <targetxml>ref:locator-params</targetxml>, and populate as follows:<ul>
                              <li>Create <targetxml>proc:param</targetxml>, with
                                  <targetxml>@name="normprotocol"</targetxml> and
                                  <targetxml>@value="lexsee"</targetxml>.</li>
                              <li>Create <targetxml>proc:param</targetxml>, with
                                  <targetxml>@name="countrycode"</targetxml> and
                                  <targetxml>@value="CA"</targetxml>.</li>
                              <li>Create <targetxml>proc:param</targetxml>, with <targetxml>@name="targetdoclang"</targetxml> and
                                  <targetxml>@value="en-CA"</targetxml> or <targetxml>@value="fr-CA"</targetxml> that
                                  matches the @xml:lang of the parent doc:related-content-item described above.</li>
                            </ul>
                          </li>
                        </ul></li>
                    </ul></li>
                </ul></li>
            </ul></li>
        </ul></p>
    </section>

    <example>
      <title>Source XML #1 - single text and citation</title>
      <codeblock>

&lt;leg:info&gt;
    &lt;leg:relatedleg type="parent"&gt;ALBERTA HEALTH CARE INSURANCE ACT&lt;/leg:relatedleg&gt;
        &lt;leg:relatedleg type="parent"&gt;
            &lt;ci:cite&gt;
                &lt;ci:stat&gt;
                    &lt;ci:statinfo spanref="stcspan1"&gt;
                        &lt;ci:hier&gt;
                            &lt;ci:hierlev label="year" num="2000"&gt;
                                &lt;ci:hierlev label="chapter" num="A-20"/&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hier&gt;
                    &lt;/ci:statinfo&gt;
                    &lt;ci:statref spanref="stcspan1"&gt;
                        &lt;ci:publicationname normpubcode="RSA" value="RSA"/&gt;
                    &lt;/ci:statref&gt;
                &lt;/ci:stat&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="stcspan1"&gt;RSA 2000, c. A-20&lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/leg:relatedleg&gt;
&lt;/leg:info&gt;

            </codeblock>
    </example>

    <example>
      <title>Target XML #1 - single text and citation</title>
      <codeblock>

&lt;doc:related-content&gt;
    &lt;doc:related-content-grp grptype="enabling-act"&gt;
        &lt;heading&gt;
            &lt;title&gt;Enabling Act&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item xml:lang="en-CA"&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="TRAVERSE"&gt;
                    &lt;ref:marker&gt;ALBERTA HEALTH CARE INSURANCE ACT&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="normcite"/&gt;
                            &lt;ref:key-value value="RSA 2000, c. A-20"/&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="normprotocol" value="lexsee"/&gt;
                            &lt;proc:param name="countrycode" value="CA"/&gt;
                            &lt;proc:param name="targetdoclang" value="en-CA"/&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

            </codeblock>
    </example>

    <example>
      <title>Source XML #2 - English and French text and citation</title>
      <codeblock>

&lt;leg:info&gt;
    &lt;leg:relatedleg type="parent"&gt;FEDERAL COURTS ACT/COURS FÉDÉRALES, LOI SUR LES&lt;/leg:relatedleg&gt;
    &lt;leg:relatedleg type="parent"&gt;
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan1"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="chapter" num="F-7"/&gt;
                            &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan1"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan1"&gt;R.S.C. 1985, c. F-7&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan2"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="chapter" num="F-7"/&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan2"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan2"&gt;L.R.C. 1985, ch. F-7&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/leg:relatedleg&gt;

&lt;/leg:info&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML #2 - English and French version of text and citation</title>
      <codeblock>

&lt;doc:related-content&gt;
    &lt;doc:related-content-grp grptype="enabling-act"&gt;
        &lt;heading&gt;
            &lt;title&gt;Enabling Act&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item xml:lang="en-CA"&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="TRAVERSE"&gt;
                    &lt;ref:marker&gt;FEDERAL COURTS ACT&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="normcite"/&gt;
                            &lt;ref:key-value value="R.S.C. 1985, c. F-7"/&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="normprotocol" value="lexsee"/&gt;
                            &lt;proc:param name="countrycode" value="CA"/&gt;
                            &lt;proc:param name="targetdoclang" value="en-CA"/&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item xml:lang="fr-CA"&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="TRAVERSE"&gt;
                    &lt;ref:marker&gt;COURS FÉDÉRALES, LOI SUR LES&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="normcite"/&gt;
                            &lt;ref:key-value value="L.R.C. 1985, ch. F-7"/&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="normprotocol" value="lexsee"/&gt;
                            &lt;proc:param name="countrycode" value="CA"/&gt;
                            &lt;proc:param name="targetdoclang" value="fr-CA"/&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

            </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
        <p>2014-11-11: <ph id="change_20141111_CSN">Added "targetdoclang" parameter. Addresses R4.5 RFA #1981.</ph></p>
        <p>2014-11-05: <ph id="change_20141105_BRT">Created new topic. Addresses R4.5 RFA #1981.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.relatedleg-LxAdv-doc.related-content.dita  -->
	<!-- Sudhanshu Srivastava: 6 June 2017 , Initially drafted this module, if changes required then please update accordingly. --> 

    <xsl:template match="leg:relatedleg[parent::leg:info and (not(preceding-sibling::*[1][self::leg:relatedleg]))]" mode="relatedcon" priority="2">
		<!--  Original Target XPath:  doc:related-content   -->
        <xsl:choose>
            <xsl:when test="contains(.,'/') and following-sibling::leg:relatedleg/ci:cite">
                <doc:related-content>
                    <doc:related-content-grp grptype="enabling-act">
                        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <title>Enabling Act</title>
                        </heading>
                        <xsl:variable name="cicitevalie" select="following-sibling::leg:relatedleg"/>
                        <xsl:for-each select="tokenize(.,'/')">
                            <doc:related-content-item>
                                <xsl:attribute name="xml:lang" select="if(position()=1) then 'en-CA' else 'fr-CA'"/>
                                <doc:related-content-link>
                                    <ref:lnlink service="TRAVERSE">
                                        <ref:marker><xsl:value-of select="."/></ref:marker>
                                        <ref:locator>
                                            <ref:locator-key>
                                                <ref:key-name name="normcite"></ref:key-name>
                                                <ref:key-value value="{if(position()=1) then $cicitevalie/ci:cite[1]/ci:content/ci:span else $cicitevalie/ci:cite[2]/ci:content/ci:span}"/>
                                            </ref:locator-key>
                                            <ref:locator-params>
                                                <proc:param name="normprotocol" value="lexsee"></proc:param>
                                                <proc:param name="countrycode" value="CA"></proc:param>
                                                <proc:param name="targetdoclang" value="{if(position()=1) then 'en-CA' else 'fr-CA'}"/>
                                            </ref:locator-params>
                                        </ref:locator>
                                    </ref:lnlink>
                                </doc:related-content-link>
                            </doc:related-content-item>
                        </xsl:for-each>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:when>
            <xsl:otherwise>
                <doc:related-content>
                    <doc:related-content-grp grptype="enabling-act">
                        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <title>Enabling Act</title>
                        </heading>
                        <xsl:variable name="cicitevalie" select="following-sibling::leg:relatedleg"/>
                        <doc:related-content-item>
                                <xsl:attribute name="xml:lang" select="'en-CA'"/>
                                <doc:related-content-link>
                                    <ref:lnlink service="TRAVERSE">
                                        <ref:marker><xsl:value-of select="."/></ref:marker>
                                        <ref:locator>
                                            <ref:locator-key>
                                                <ref:key-name name="normcite"></ref:key-name>
                                                <ref:key-value value="{following-sibling::leg:relatedleg/ci:cite[1]/ci:content/ci:span}"/>
                                            </ref:locator-key>
                                            <ref:locator-params>
                                                <proc:param name="normprotocol" value="lexsee"></proc:param>
                                                <proc:param name="countrycode" value="CA"></proc:param>
                                                <proc:param name="targetdoclang" value="en-CA"/>
                                            </ref:locator-params>
                                        </ref:locator>
                                    </ref:lnlink>
                                </doc:related-content-link>
                            </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>

    <xsl:template match="leg:relatedleg[parent::leg:info]" mode="relatedcon" priority="1"/>
</xsl:stylesheet>