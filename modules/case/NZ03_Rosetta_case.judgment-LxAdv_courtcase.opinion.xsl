<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.judgment-LxAdv_courtcase.opinion">
  <title>case:judgment <lnpid>id-NZ03-23026</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/mapping"/>
    <section>
      <p>The optional attributes of <sourcexml>case:judgment</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:judgment/@subdoc</sourcexml> becomes
              <targetxml>courtcase:opinion/@includeintoc</targetxml>.</li>
          <li><sourcexml>case:judgment/@toc-caption</sourcexml> becomes
              <targetxml>courtcase:opinion/@alternatetoccaption</targetxml>.</li>
          <li><sourcexml>case:judgment/@searchtype</sourcexml> should be suppressed.</li>
        </ul></p>
    </section>
    <example>
      <codeblock>
&lt;case:judgment&gt;
  &lt;case:courtinfo&gt;
    &lt;case:judges&gt;ASHER J.&lt;/case:judges&gt;
  &lt;/case:courtinfo&gt;
  &lt;case:judgmentbody&gt;
    &lt;p&gt;
      &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
      &lt;refpt id="20093NZLR_426_p1" type="ext"/&gt;
      &lt;text&gt;Mr H is to stand trial in the District Court at Auckland on various counts of indecent
        assault alleged to have been committed against DAH, a girl aged between 12 and 16
        years.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;pnum count="2"&gt;[2]&lt;/pnum&gt;
      &lt;text&gt;On 15 December 2008 Mr H&amp;#x2019;s application under s 347 of the Crimes Act 1961 was
        declined in the District Court. He has responded to this ruling by two applications to this
        Court. The first is an application for judicial review of the District Court decision. The
        second is an application to transfer the District Court proceedings to the High Court under
        s 28J of the District Courts Act 1947, and for an order that he not be arraigned and that he
        be discharged on the indictment, and for an order staying the proceedings.&lt;/text&gt;
    &lt;/p&gt;
    &lt;h l="3"&gt;
      &lt;emph typestyle="ro"&gt;
        &lt;emph typestyle="it"&gt;Background&lt;/emph&gt;
      &lt;/emph&gt;
    &lt;/h&gt;
    &lt;p&gt;
      &lt;pnum count="3"&gt;[3]&lt;/pnum&gt;
      &lt;refpt id="20093NZLR_426_p3" type="ext"/&gt;
      &lt;text&gt;The complainant is the daughter of the accused&amp;#x2019;s former wife. Between 1981 and
        1986 she was living with her mother and Mr H. During that period Mr H allegedly indecently
        assaulted the complainant.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;pnum count="4"&gt;[4]&lt;/pnum&gt;
      &lt;refpt id="20093NZLR_426_p4" type="ext"/&gt;
      &lt;text&gt;Mr H states in affidavits he filed in the District Court that he received a call on
        6 March 2001 from the natural father of the complainant. He says that the father, whose
        voice he recognised, accused him of molesting his daughter, the complainant, and said
        &amp;#x201c;You will pay $50,000 or we go to the police, and if we go to the police you will
        still pay $50,000&amp;#x201d;. Mr H says he recorded the substance of the telephone call in his
        diary at the time. That diary note was lost when that and other items were stolen from him,
        but a copy of it was kept by his lawyer and attached to his affidavit. This is corroborated
        to the extent that&lt;page count="428" reporter="nzlr" text="[2009] 3 NZLR 426 page "/&gt; it
        seems that Mr H instructed his lawyer to write to the father complaining of his actions,
        which the lawyer did on 16 March 2001. A copy of the letter was also exhibited. There was no
        response.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/case:judgmentbody&gt;
&lt;/case:judgment&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinion&gt;
  &lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;ASHER&lt;/person:judge&gt; J. &lt;/courtcase:opinionby&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;ref:anchor anchortype="global" id="_20093NZLR_426_p1"/&gt;
      &lt;desig value="1"&gt;[1]&lt;/desig&gt;
      &lt;text&gt;Mr H is to stand trial in the District Court at Auckland on various counts of indecent
        assault alleged to have been committed against DAH, a girl aged between 12 and 16
        years.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;desig value="2"&gt;[2]&lt;/desig&gt;
      &lt;text&gt;On 15 December 2008 Mr H’s application under s 347 of the Crimes Act 1961 was declined
        in the District Court. He has responded to this ruling by two applications to this Court.
        The first is an application for judicial review of the District Court decision. The second
        is an application to transfer the District Court proceedings to the High Court under s 28J
        of the District Courts Act 1947, and for an order that he not be arraigned and that he be
        discharged on the indictment, and for an order staying the proceedings.&lt;/text&gt;
    &lt;/p&gt;
    &lt;h level="3"&gt;
      &lt;emph typestyle="ro"&gt;
        &lt;emph typestyle="it"&gt;Background&lt;/emph&gt;
      &lt;/emph&gt;
    &lt;/h&gt;
    &lt;p&gt;
      &lt;ref:anchor anchortype="global" id="_20093NZLR_426_p3"/&gt;
      &lt;desig value="3"&gt;[3]&lt;/desig&gt;
      &lt;text&gt;The complainant is the daughter of the accused’s former wife. Between 1981 and 1986 she
        was living with her mother and Mr H. During that period Mr H allegedly indecently assaulted
        the complainant.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;ref:anchor anchortype="global" id="_20093NZLR_426_p4"/&gt;
      &lt;desig value="4"&gt;[4]&lt;/desig&gt;
      &lt;text&gt;Mr H states in affidavits he filed in the District Court that he received a call on
        6 March 2001 from the natural father of the complainant. He says that the father, whose
        voice he recognised, accused him of molesting his daughter, the complainant, and said “You
        will pay $50,000 or we go to the police, and if we go to the police you will still pay
        $50,000”. Mr H says he recorded the substance of the telephone call in his diary at the
        time. That diary note was lost when that and other items were stolen from him, but a copy of
        it was kept by his lawyer and attached to his affidavit. This is corroborated to the extent
          that&lt;ref:page num="428" page-scheme="nzlr" page-scheme-type="reporter-abbreviation"/&gt; it
        seems that Mr H instructed his lawyer to write to the father complaining of his actions,
        which the lawyer did on 16 March 2001. A copy of the letter was also exhibited. There was no
        response.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
       </codeblock>
    </example>
    <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/changes"/>-->
    <section>
      <title>Changes Specific to NZ03</title>
      <p>2013-07-02: <ph id="change_20130702_DSF">Corrected the value of ref:anchor/@id in the
          example target - changed the prefix from "nz_" to "_".</ph></p>
    </section>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.judgment-LxAdv_courtcase.opinion.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.judgment-LxAdv_courtcase.opinion.xsl requires manual development!</xsl:message>--> 

  <xsl:template match="case:judgment">
    <courtcase:opinion>
      <xsl:if test="./@subdoc">
        <xsl:attribute name="includeintoc">
          <xsl:value-of select="./@subdoc"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="./@toc-caption">
        <xsl:attribute name="alternatetoccaption">
          <xsl:value-of select="./@toc-caption"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="./@searchtype"/>
      <xsl:apply-templates select="case:courtinfo/case:judges[ancestor::case:content]"/>
      <xsl:apply-templates select="@* | node() except case:courtinfo"/>
    </courtcase:opinion>
  </xsl:template>

  <xsl:template match="case:judgment/@subdoc | case:judgment/@toc-caption"/>

</xsl:stylesheet>