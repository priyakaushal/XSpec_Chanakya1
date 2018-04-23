<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_form">
    <title>form <lnpid>id-CA10-14623</lnpid></title>
    <body>
        <section>
          <p><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml>.</p>
        </section>
        <section>
          <p><sourcexml>frm:body</sourcexml> becomes <targetxml>form:document</targetxml>.</p>
          <p><targetxml>form:document</targetxml> requires the following attributes:  @annotated, @official, and @typeofdoc.
            <ul>
              <li>Set form:document/@annotated to 'false'.</li>
              <li>Set form:document/@official to 'false'.</li>
              <li>Set form:document/@typeofdoc to 'other'.</li>
            </ul>
          </p>
          <p>A new <targetxml>form:bodytext</targetxml> should also be created as a child of the new <targetxml>form:document</targetxml> in order to carry the content of the new document form.</p>
        </section>
        <section>
          <p><sourcexml>frm:caption</sourcexml> becomes <targetxml>form:caption</targetxml>.</p>
        </section>
        <section>
          <p><sourcexml>frm:braceblock</sourcexml> becomes <targetxml>form:braceblock</targetxml>.</p>
        </section>
        <section>
          <p><sourcexml>frm:bracein</sourcexml> becomes <targetxml>form:bracein</targetxml>.</p>
        </section>
        <section>
          <p><sourcexml>frm:braceout</sourcexml> becomes <targetxml>form:braceout</targetxml>.</p>
        </section>
        <section>
          <title><sourcexml>p</sourcexml> within both <sourcexml>frm:bracein</sourcexml> and <sourcexml>frm:braceout</sourcexml> (COMMENTARYDOC)</title>
          <p>Paragraph elements (<sourcexml>p</sourcexml>) exist within both <sourcexml>frm:bracein</sourcexml> and <sourcexml>frm:braceout</sourcexml>.
            <ul>
              <li>Each <sourcexml>p</sourcexml> should become a <targetxml>form:line</targetxml>.</li>
              <li>The handling of the child <sourcexml>text</sourcexml> elements depends on whether <sourcexml>@align</sourcexml> is present on <sourcexml>text</sourcexml>.
                <ul>
                  <li>When <sourcexml>text/@align</sourcexml> is not present, the PCDATA of the <sourcexml>text</sourcexml> element should be treated as PCDATA of the parent <targetxml>form:line</targetxml>.</li>
                  <li>When <sourcexml>text/@align</sourcexml> is present, the <sourcexml>text</sourcexml> element becomes <targetxml>form:quad</targetxml> and the <sourcexml>text/@align</sourcexml> attribute should be used to create the <targetxml>form:quad/@align</targetxml> attribute.</li>    
                </ul>
              </li>
              <li>Children of <sourcexml>text</sourcexml> should be processed accordingly as children of the resulting <targetxml>form:line</targetxml> or <targetxml>form:quad</targetxml> parent.</li>
              <li>It is possible that the <sourcexml>p</sourcexml> may have multiple <sourcexml>text</sourcexml> children.
                <ul>
                  <li>If so, they should be processed in document order according to the instructions above.</li>
                  <li>While technically possible, it is not expected to encounter paragraphs that have multiple <sourcexml>text</sourcexml> children where some use <sourcexml>@align</sourcexml> and others do not.</li>
                </ul>
              </li>
            </ul>
          </p>
        </section>
        <example>
            <title>Example 1:  Source XML</title>
            <codeblock>

&lt;form&gt;
  &lt;frm:body&gt;
    &lt;frm:caption&gt;
      &lt;frm:braceblock&gt;
        &lt;frm:bracein&gt;
          &lt;p&gt;
            &lt;text align="left"&gt;BETWEEN:&lt;/text&gt;
            &lt;text align="left"&gt;*&lt;/text&gt;
            &lt;text align="right"&gt;PETITIONER*&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text&gt;AND&lt;/text&gt;
          &lt;/p&gt;
        &lt;/frm:bracein&gt;
        &lt;frm:braceout&gt;
          &lt;p&gt;
            &lt;text align="left"&gt;*&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text align="right"&gt;RESPONDENT*&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text align="left"&gt;AFFIDAVIT SUPPORTING ORDER APPROVING SALE&lt;/text&gt;
          &lt;/p&gt;
        &lt;/frm:braceout&gt;
      &lt;/frm:braceblock&gt;
    &lt;/frm:caption&gt;
  &lt;/frm:body&gt;
&lt;/form&gt;

            </codeblock>
        </example>
        <example>
            <title>Example 1:  Target XML</title>
            <codeblock>

&lt;form:form&gt;
  &lt;form:document annotated="false" official="false" typeofdoc="other"&gt;
    &lt;form:bodytext&gt;
      &lt;form:caption&gt;
        &lt;form:braceblock&gt;
          &lt;form:bracein&gt;
            &lt;form:line&gt;
              &lt;form:quad align="left"&gt;BETWEEN&lt;/form:quad&gt;
              &lt;form:quad align="left"&gt;*&lt;/form:quad&gt;
              &lt;form:quad align="right"&gt;PETITIONER&lt;/form:quad&gt;
            &lt;/form:line&gt;
          &lt;/form:bracein&gt;
          &lt;form:braceout&gt;
            &lt;form:line&gt;
              &lt;form:quad align="left"&gt;*&lt;/form:quad&gt;
            &lt;/form:line&gt;
            &lt;form:line&gt;
              &lt;form:quad align="right"&gt;RESPONDENT&lt;/form:quad&gt;
            &lt;/form:line&gt;
            &lt;form:line&gt;
              &lt;form:quad align="left"&gt;AFFIDAVIT SUPPORTING ORDER APPROVING SALE&lt;/form:quad&gt;
            &lt;/form:line&gt;
          &lt;/form:braceout&gt;
        &lt;/form:braceblock&gt;
      &lt;/form:caption&gt;
    &lt;/form:bodytext&gt;
  &lt;/form:document&gt;
&lt;/form:form&gt;

	        </codeblock>
        </example>
      <example>
        <title>Example 2:  Source XML</title>
        <codeblock>
          
&lt;form&gt;
  &lt;frm:body&gt;
    &lt;frm:caption&gt;
      &lt;frm:braceblock&gt;
        &lt;frm:bracein&gt;
          &lt;p&gt;
            &lt;text&gt;SEVERALLY SWORN before me at the City of
                          &lt;frm:prompt&gt;________________________&lt;/frm:prompt&gt;, in&lt;nl/&gt; the
                        Municipality of&lt;frm:prompt&gt;____________&lt;/frm:prompt&gt;,&lt;nl/&gt; this
                          &lt;frm:prompt&gt;____________&lt;/frm:prompt&gt;day
                          of&lt;frm:prompt&gt;____________&lt;/frm:prompt&gt;,&lt;nl/&gt; 19
                          &lt;frm:prompt&gt;_______&lt;/frm:prompt&gt;.&lt;nl/&gt; A Commissioner, etc.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/frm:bracein&gt;
        &lt;frm:braceout&gt;
          &lt;p&gt;
            &lt;text align="left"&gt;
              &lt;frm:prompt&gt;________________________________________________________&lt;/frm:prompt&gt;
              &lt;nl/&gt;
              &lt;frm:prompt&gt;________________________________________________________&lt;/frm:prompt&gt;
              &lt;nl/&gt;
              &lt;frm:prompt&gt;________________________________________________________&lt;/frm:prompt&gt;
            &lt;/text&gt;
          &lt;/p&gt;
        &lt;/frm:braceout&gt;
      &lt;/frm:braceblock&gt;
    &lt;/frm:caption&gt;
  &lt;/frm:body&gt;
&lt;/form&gt;

        </codeblock>
      </example>
      <example>
        <title>Example 2:  Target XML</title>
        <codeblock>
          
&lt;form:form&gt;
  &lt;form:document annotated="false" official="false" typeofdoc="other"&gt;
    &lt;form:bodytext&gt;
      &lt;form:caption&gt;
        &lt;form:braceblock&gt;
          &lt;form:bracein&gt;
            &lt;form:line&gt;SEVERALLY SWORN before me at the City of
                            &lt;form:prompt&gt;________________________&lt;/form:prompt&gt;, in&lt;proc:nl/&gt; the
                          Municipality of&lt;form:prompt&gt;____________&lt;/form:prompt&gt;,&lt;proc:nl/&gt; this
                            &lt;form:prompt&gt;____________&lt;/form:prompt&gt;day
                            of&lt;form:prompt&gt;____________&lt;/form:prompt&gt;,&lt;proc:nl/&gt; 19
                            &lt;form:prompt&gt;_______&lt;/form:prompt&gt;.&lt;proc:nl/&gt; A Commissioner, etc.&lt;/form:line&gt;
          &lt;/form:bracein&gt;
          &lt;form:braceout&gt;
            &lt;form:line&gt;
              &lt;form:prompt&gt;________________________________________________________&lt;/form:prompt&gt;
              &lt;proc:nl/&gt;
              &lt;form:prompt&gt;________________________________________________________&lt;/form:prompt&gt;
              &lt;proc:nl/&gt;
              &lt;form:prompt&gt;________________________________________________________&lt;/form:prompt&gt;
            &lt;/form:line&gt;
          &lt;/form:braceout&gt;
        &lt;/form:braceblock&gt;
      &lt;/form:caption&gt;
    &lt;/form:bodytext&gt;
  &lt;/form:document&gt;
&lt;/form:form&gt;

        </codeblock>
      </example>
        <section>
            <title>Changes</title>
            <p>2016-04-14: <ph id="change_20160414_form_1">Updated instructions for how <sourcexml>frm:bracein/p/text/@align</sourcexml> affects the mapping of <sourcexml>frm:bracein/p</sourcexml> to <targetxml>form:bracein/form:line</targetxml>.</ph></p>
            <p>2016-04-12: <ph id="change_20160412_form_1">Corrected instructions for mapping <sourcexml>frm:body</sourcexml> to <targetxml>form:document/form:bodytext</targetxml>.</ph></p>
            <p>2016-03-30: <ph id="change_20160330_form_1">Added instructions for mapping <sourcexml>form</sourcexml> to <targetxml>form:form</targetxml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_form.dita  -->
<!--	<xsl:message>CA10_form.xsl requires manual development!</xsl:message> -->


	<xsl:template match="form">

		<!--  Original Target XPath:  form:form   -->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>

	<xsl:template match="frm:body">
		<!--  Original Target XPath:  form:document   -->
		<form:document>
		  <xsl:attribute name="annotated">false</xsl:attribute>
		  <xsl:attribute name="official">false</xsl:attribute>
		  <xsl:attribute name="typeofdoc">other</xsl:attribute>
		  <form:bodytext>
		    <xsl:choose>
		      <xsl:when test="descendant::frm:bracein[contains(.,'')]">
		        <xsl:apply-templates select="node() except frm:caption"></xsl:apply-templates>
		      </xsl:when>
		      <xsl:otherwise>
		        <xsl:apply-templates select="@* | node()"/>
		      </xsl:otherwise>
		    </xsl:choose>
		  </form:bodytext>
		</form:document>
	</xsl:template>

  <xsl:template match="frm:caption">
    <form:caption>
      <xsl:apply-templates select="@*|node()"/>
    </form:caption>
  </xsl:template>

  <xsl:template match="frm:braceblock">
    <form:braceblock>
      <xsl:apply-templates select="@*|node()"/>
    </form:braceblock>
  </xsl:template>

  <xsl:template match="frm:bracein">
    <form:bracein>
      <xsl:apply-templates select="@*|node()"/>
    </form:bracein>
  </xsl:template>

  <xsl:template match="frm:braceout">
    <form:braceout>
      <xsl:apply-templates select="@*|node()"/>
    </form:braceout>
  </xsl:template>


  <xsl:template match="p[parent::frm:bracein]|p[parent::frm:braceout]">
    <form:line>
      <xsl:apply-templates select="@*|node()"/>
    </form:line>
  </xsl:template>
  
  <xsl:template match="text[parent::p[parent::frm:bracein]]|text[parent::p[parent::frm:braceout]]">
    <xsl:choose>
      <xsl:when test="@align">
        <form:quad>
          <xsl:attribute name="align">
            <xsl:value-of select="@align"/>
          </xsl:attribute>
          <xsl:apply-templates select="node()"/>
        </form:quad>
      </xsl:when>
      <xsl:when test="not(@align)">
        <xsl:value-of select="."/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>