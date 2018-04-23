<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="topic-1">
  <title>Related Primary Law <lnpid>id-UK17-30614</lnpid></title>
  <body>
    <p>Some documents contain citations to primary law discussed in the webinar. They are found in <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/text/ci:cite</sourcexml>.</p>
    <p>Every docinfo:assoc-links-grp that contains descendant ci:cite becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml>. inside <targetxml>seclaw:body</targetxml>.<ul>
      <li>If <sourcexml>docinfo:assoc-links-grp/heading</sourcexml> is present, apply <sourcexml>heading</sourcexml> general markup.</li>
      <li>Output <targetxml>seclaw:bodytext/p</targetxml>.<ul>
            <li>Apply <sourcexml>text</sourcexml> general markup.</li>
          </ul></li>
    </ul></p>
    <example>
      <title>Source XML</title>
      <codeblock>&lt;docinfo:assoc-links-grp assoc-content="legGuid"&gt;
  &lt;heading&gt;
    &lt;title&gt;Legislation &amp;amp; guidance&lt;/title&gt;
  &lt;/heading&gt;
  &lt;text&gt;
    &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
      &lt;ci:sesslaw&gt;
        &lt;ci:sesslawinfo&gt;
          &lt;ci:sesslawnum num="1993_48a" /&gt;
          &lt;ci:hierpinpoint&gt;
            &lt;ci:hierlev label="section" num="181" /&gt;
          &lt;/ci:hierpinpoint&gt;
        &lt;/ci:sesslawinfo&gt;
        &lt;ci:sesslawref&gt;
          &lt;ci:standardname normpubcode="UK_ACTS" /&gt;
        &lt;/ci:sesslawref&gt;
      &lt;/ci:sesslaw&gt;
      &lt;ci:content&gt;Pension Schemes Act 1993, s 181&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
  &lt;/text&gt;
&lt;/docinfo:assoc-links-grp&gt;
&lt;docinfo:assoc-links-grp assoc-content="caseDesc"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases &amp;amp; decisions&lt;/title&gt;
  &lt;/heading&gt;
  &lt;text&gt;AON Trust Corporation v KPMG &lt;ci:cite searchtype="CASE-REF" status="invalid"&gt;&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="ALLER" /&gt;&lt;ci:volume num="1" /&gt;&lt;ci:edition&gt;&lt;ci:date year="2006" /&gt;&lt;/ci:edition&gt;&lt;ci:page num="238" /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;[2006] 1 All ER 238&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;text&gt;Bridge Trustees v Houldsworth &lt;ci:cite searchtype="CASE-REF" status="invalid"&gt;&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="ALLER" /&gt;&lt;ci:volume num="1" /&gt;&lt;ci:edition&gt;&lt;ci:date year="2012" /&gt;&lt;/ci:edition&gt;&lt;ci:page num="659" /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;[2012] 1 All ER 659&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
&lt;/docinfo:assoc-links-grp&gt;</codeblock>
      <title>Target XML</title>
      <codeblock>&lt;seclaw:body&gt;
   ...
   &lt;seclaw:level leveltype="unclassified"&gt;
      &lt;heading&gt;
         &lt;title&gt;Legislation &amp;amp; guidance&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:bodytext&gt;
         &lt;p&gt;
            &lt;text&gt;
               &lt;lnci:cite status="valid"&gt;
                  &lt;lnci:sesslaw status="valid"&gt;
                     &lt;lnci:sesslawinfo status="valid"&gt;
                        &lt;lnci:sesslawnum num="1993_48a" status="valid"/&gt;
                        &lt;lnci:hierpinpoint status="valid"&gt;
                           &lt;lnci:hierlev label="section" num="181" status="valid"/&gt;
                        &lt;/lnci:hierpinpoint&gt;
                     &lt;/lnci:sesslawinfo&gt;
                     &lt;lnci:sesslawref status="valid"&gt;
                        &lt;lnci:standardname normpubcode="UK_ACTS" status="valid"/&gt;
                     &lt;/lnci:sesslawref&gt;
                  &lt;/lnci:sesslaw&gt;
                  &lt;lnci:content status="valid"&gt;Pension Schemes Act 1993, s 181&lt;/lnci:content&gt;
               &lt;/lnci:cite&gt;
            &lt;/text&gt;
         &lt;/p&gt;
      &lt;/seclaw:bodytext&gt;
   &lt;/seclaw:level&gt;
   &lt;seclaw:level leveltype="unclassified"&gt;
      &lt;heading&gt;
         &lt;title&gt;Cases &amp;amp; decisions&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:bodytext&gt;
         &lt;p&gt;
            &lt;text&gt;AON Trust Corporation v KPMG &lt;lnci:cite status="invalid"&gt;
                  &lt;lnci:case status="valid"&gt;
                     &lt;lnci:caseref status="valid"&gt;
                        &lt;lnci:reporter value="ALLER" status="valid"/&gt;
                        &lt;lnci:volume num="1" status="valid"/&gt;
                        &lt;lnci:edition status="valid"&gt;
                           &lt;lnci:date year="2006" status="valid"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="238" status="valid"/&gt;
                     &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content status="valid"&gt;[2006] 1 All ER 238&lt;/lnci:content&gt;
               &lt;/lnci:cite&gt;
            &lt;/text&gt;
            &lt;text&gt;Bridge Trustees v Houldsworth &lt;lnci:cite status="invalid"&gt;
                  &lt;lnci:case status="valid"&gt;
                     &lt;lnci:caseref status="valid"&gt;
                        &lt;lnci:reporter value="ALLER" status="valid"/&gt;
                        &lt;lnci:volume num="1" status="valid"/&gt;
                        &lt;lnci:edition status="valid"&gt;
                           &lt;lnci:date year="2012" status="valid"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="659" status="valid"/&gt;
                     &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content status="valid"&gt;[2012] 1 All ER 659&lt;/lnci:content&gt;
               &lt;/lnci:cite&gt;
            &lt;/text&gt;
         &lt;/p&gt;
      &lt;/seclaw:bodytext&gt;
   &lt;/seclaw:level&gt;</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p/>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-CLE_materials\UK17WEBINAR_DIGESTDOC_relatedcites.dita  -->
	<xsl:message>UK17WEBINAR_DIGESTDOC_relatedcites.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:assoc-links/docinfo:assoc-links-grp/text/ci:cite">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links-grp/heading">

		<!--  Original Target XPath:  seclaw:bodytext/p   -->
		<seclaw:bodytext>
			<p>
				<xsl:apply-templates select="@* | node()"/>
			</p>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  seclaw:bodytext/p   -->
		<seclaw:bodytext>
			<p>
				<xsl:apply-templates select="@* | node()"/>
			</p>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>