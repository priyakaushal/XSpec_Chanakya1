<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.relatedleg">
 <title>leg:relatedleg <lnpid>id-ST03-26646</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:relatedleg</sourcexml> with attribute <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem</targetxml> and optional child <targetxml>heading/title</targetxml> with attribute <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>
       <ul>
        <li>
         <p>
          The keyword <b>Subordinate Legislation</b> within <sourcexml>emph</sourcexml> will map to <targetxml>primlaw:subordinatelaw/heading/title/emph</targetxml>
         </p>
         <p>For <sourcexml>leg:relatedleg</sourcexml> with attribute <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml> move the initial text before the first <sourcexml>ci:cite</sourcexml> to <targetxml>primlaw:subordinatelaw-grp/heading/title</targetxml> as shown in the target XML output example below. </p>
        </li>
        <li>
         <p>Inculsion of a semantic markup <targetxml>legisinfo:status</targetxml> with attribute <targetxml>@statuscode="repealed"</targetxml> in order to identify the image file named as "au_repeal01.gif" within <sourcexml>leg:relatedleg</sourcexml> which will map to <targetxml>primlaw:subordinatelaw</targetxml>. Example provided below.</p>
         <note>Use <targetxml>primlaw:subordinatelaw-grp</targetxml> in order to capture one or more subordinatelaw citations.</note>
        </li>
       </ul>
      </p>
    </section>
   <example>
    <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml></title>     
    <codeblock>

&lt;leg:relatedleg id="CTH_ACT_1964-116_SUBLEG" type="subordinate"&gt;
 &lt;refpt id="CTH_ACT_1964-116_SUBLEG" type="ext"/&gt;&lt;nl/&gt;
 &lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;&lt;nl/&gt;&lt;nl/&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink refpt="CTH_REG_2003-291" dpsi="0HJ5" docidref="ABCD_1234" remotekey1="REFPTID" service="DOC-ID"&gt;CRIMES (OVERSEAS) (DECLARED FOREIGN COUNTRIES) REGULATIONS 2003&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;
&lt;/leg:relatedleg&gt;
      </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml></title>
    <codeblock>

&lt;primlaw:subordinatelaw&gt;
 &lt;ref:anchor id="CTH_ACT_1964-116_SUBLEG" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;&lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:subordinatelaw-grp&gt;
  &lt;primlaw:subordinatelaw-item&gt;
   &lt;textitem&gt;
    &lt;lnci:cite type="legislation" citeref="CTH_REG_2003-291"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;CRIMES (OVERSEAS) (DECLARED FOREIGN COUNTRIES) REGULATIONS 2003&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="CTH_REG_2003-291"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;  
         &lt;ref:key-value value="0HJ5-ABCD_1234"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
  &lt;/primlaw:subordinatelaw-item&gt;
 &lt;/primlaw:subordinatelaw-grp&gt;
&lt;/primlaw:subordinatelaw&gt;

    </codeblock>
    <note>For handling <sourcexml>refpt</sourcexml> refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.relatedleg-LxAdv-primlaw.subordinatelaw_ref.anchor.dita"> refpt</xref></note>
    <note><targetxml>proc:nl</targetxml> will be suppressed from conversion.</note>
   </example>
   <example>
    <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml> with multiple citations.</title>     
    <codeblock>

&lt;leg:relatedleg type="subordinate" id="NSW_ACT_2007-93_SUBLEG"&gt;
 &lt;refpt id="NSW_ACT_2007-93_SUBLEG" type="ext"/&gt;
 &lt;nl/&gt;
 &lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;
 &lt;nl/&gt;
 Amending Subordinate Law from 1996 are listed in the principal Subordinate Law history.
 &lt;nl/&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCST_1234" refpt="NSW_REG_2009-316"&gt;LOCAL COURT (SAVINGS AND TRANSITIONAL) REGULATION 2009&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;
 &lt;nl/&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCRX_5678"  refpt="NSW_REG_2009-589"&gt;LOCAL COURT RULES 2009&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;
 &lt;nl/&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCCV_9876" refpt="NSW_REG_2005-387"&gt;LOCAL COURTS (CIVIL PROCEDURE) RULES 2005&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;
 &lt;inlineobject type="image" attachment="web-server" filename="au_repeal01.gif" alttext="[Repealed]"/&gt;
 &lt;nl/&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCCR_5432" refpt="NSW_REG_2003-341"&gt;LOCAL COURTS (CRIMINAL AND APPLICATIONS PROCEDURE) RULE 2003&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;  
 &lt;inlineobject type="image" attachment="web-server" filename="au_repeal01.gif" alttext="[Repealed]"/&gt;
&lt;/leg:relatedleg&gt;

      </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml> with multiple citations.</title>
    <codeblock>

&lt;primlaw:subordinatelaw&gt;
 &lt;ref:anchor id="NSW_ACT_2007-93_SUBLEG" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;&lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:subordinatelaw-grp&gt;
  &lt;heading&gt;
   &lt;title&gt;Amending Subordinate Law from 1996 are listed in the principal Subordinate Law history.&lt;/title&gt;
  &lt;/heading&gt;
  &lt;primlaw:subordinatelaw-item&gt;
   &lt;textitem&gt;
    &lt;lnci:cite type="legislation" citeref="NSW_REG_2009-316"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;LOCAL COURT (SAVINGS AND TRANSITIONAL) REGULATION 2009&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="NSW_REG_2009-316"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="2222-LCST_1234"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
  &lt;/primlaw:subordinatelaw-item&gt;
  &lt;primlaw:subordinatelaw-item&gt;
   &lt;textitem&gt;
    &lt;lnci:cite type="legislation" citeref="NSW_REG_2009-589"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;LOCAL COURT RULES 2009&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="NSW_REG_2009-589"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="2222-LCRX_5678"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
  &lt;/primlaw:subordinatelaw-item&gt;
  &lt;primlaw:subordinatelaw-item&gt;
   &lt;textitem&gt;
    &lt;lnci:cite type="legislation" citeref="NSW_REG_2005-387"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;LOCAL COURTS (CIVIL PROCEDURE) RULES 2005&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="NSW_REG_2005-387"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="2222-LCCV_9876"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
   &lt;legisinfo:status statuscode="repealed"/&gt;
  &lt;/primlaw:subordinatelaw-item&gt;
  &lt;primlaw:subordinatelaw-item&gt;
   &lt;textitem&gt;
    &lt;lnci:cite type="legislation" citeref="NSW_REG_2003-341"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;LOCAL COURTS (CRIMINAL AND APPLICATIONS PROCEDURE) RULE 2003&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="NSW_REG_2003-341"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;  
         &lt;ref:key-value value="2222-LCCR_5432"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
   &lt;legisinfo:status statuscode="repealed"/&gt;
  &lt;/primlaw:subordinatelaw-item&gt;
 &lt;/primlaw:subordinatelaw-grp&gt;
&lt;/primlaw:subordinatelaw&gt;

    </codeblock>
   </example>
   <section>
    <p><sourcexml>leg:relatedleg</sourcexml> with attribute <sourcexml>leg:relatedleg[@type="parent"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:authority/primlaw:authority-item/textitem</targetxml>.
    </p>
   </section>
   <example>
    <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:relatedleg[@type="parent"]</sourcexml></title>     
    <codeblock>

&lt;leg:relatedleg type="parent"&gt;Made under the 
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="3333" docidref="EFGH_9876" refpt="ACT_ACT_2006-25"&gt;LEGAL PROFESSION ACT 2006&lt;/remotelink&gt;
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;.
&lt;/leg:relatedleg&gt;

    </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:relatedleg[@type="parent"]</sourcexml></title>
    <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;primlaw:authority&gt;
  &lt;primlaw:authority-item&gt;
   &lt;textitem&gt;Made under the 
    &lt;lnci:cite type="legislation" citeref="ACT_ACT_2006-25"&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;LEGAL PROFESSION ACT 2006&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="ACT_ACT_2006-25"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;  
         &lt;ref:key-value value="3333-EFGH_9876"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
  &lt;/primlaw:authority-item&gt;
 &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;

    </codeblock>
   </example>
   <section>
    <title>Changes</title>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.relatedleg.dita  -->
	<xsl:message>legis-leg.relatedleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:relatedleg">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<primlaw:subordinatelaw>
					<primlaw:subordinatelaw-grp>
						<primlaw:subordinatelaw-item>
							<textitem>
								<xsl:apply-templates select="@* | node()"/>
							</textitem>
						</primlaw:subordinatelaw-item>
					</primlaw:subordinatelaw-grp>
				</primlaw:subordinatelaw>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:relatedleg[@type=&#34;subordinate&#34;]">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<primlaw:subordinatelaw>
					<primlaw:subordinatelaw-grp>
						<primlaw:subordinatelaw-item>
							<textitem>
								<xsl:apply-templates select="@* | node()"/>
							</textitem>
						</primlaw:subordinatelaw-item>
					</primlaw:subordinatelaw-grp>
				</primlaw:subordinatelaw>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  primlaw:subordinatelaw/heading/title/emph   -->
		<primlaw:subordinatelaw>
			<heading>
				<title>
					<emph>
						<xsl:apply-templates select="@* | node()"/>
					</emph>
				</title>
			</heading>
		</primlaw:subordinatelaw>

	</xsl:template>

	<xsl:template match="leg:relatedleg">

		<!--  Original Target XPath:  primlaw:subordinatelaw-grp/heading/title   -->
		<primlaw:subordinatelaw-grp>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlaw:subordinatelaw-grp>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:  primlaw:subordinatelaw-grp/heading/title   -->
		<primlaw:subordinatelaw-grp>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlaw:subordinatelaw-grp>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  proc:nl   -->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>

	<xsl:template match="leg:relatedleg[@type=&#34;parent&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:level>
			<primlaw:authority>
				<primlaw:authority-item>
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</primlaw:authority-item>
			</primlaw:authority>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>