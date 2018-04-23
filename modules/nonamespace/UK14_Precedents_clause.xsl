<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_clause">
  <title>clause <lnpid>id-UK14-30207</lnpid></title>
  <body>
    <section><p><sourcexml>clause</sourcexml> becomes
          <targetxml>form:clause/form:bodytext</targetxml>, with optional attributes converted as
        follows: <ul>
          <li><sourcexml>@clause-type</sourcexml> becomes
              <targetxml>form:clause[@clausetype]</targetxml></li>
          <li><sourcexml>@preservenumbering</sourcexml> becomes
              <targetxml>form:clause[@preservenumbering]</targetxml>.</li>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>form:clause[@xml:id]</targetxml>.</li>
        </ul></p>
      <note><targetxml>form:bodytext</targetxml> is a required child of
          <targetxml>form:clause</targetxml>. A ref:anchor or heading is allowed as a direct child
        of <targetxml>form:clause</targetxml> but anything else is child of
          <targetxml>form:bodytext</targetxml>. This includes clause nesting, so that
          <sourcexml>clause/clause</sourcexml> becomes
          <targetxml>form:clause/form:bodytext/form:clause/form:bodytext</targetxml>.</note></section>
    <section><p><b><u>Special rule for <sourcexml>clause[@clause-type]</sourcexml>, child
              <sourcexml>p</sourcexml> or <sourcexml>table</sourcexml></u></b></p><p>This rule
        applies only for <sourcexml>clause</sourcexml> with attribute
          <sourcexml>@clause-type</sourcexml>. If child <sourcexml>p</sourcexml> or
          <sourcexml>table</sourcexml> is present, generate
          <targetxml>form:clause/form:bodytext</targetxml> wrapper for target
          <targetxml>form:p</targetxml> or <targetxml>table</targetxml>. That
          is:</p><p><sourcexml>clause[@clause-type]/p</sourcexml> becomes
          <targetxml>form:clause[@clausetype]/form:bodytext/form:clause/form:bodytext/form:p</targetxml></p><p><sourcexml>clause[@clause-type]/table</sourcexml>
        becomes
          <targetxml>form:clause[@clausetype]/form:bodytext/form:clause/form:bodytext/table</targetxml></p></section>
    <section><p><i>Explanation:</i> Schema allows form:clause, form:p, and table as siblings.
        Usually this represents clause narrative (p and table) plus sub-clauses. In UK14,
        clause[@clause-type] is a special condition where narrative is intended to be directly
        associated with the sub-clauses. Adding form:clause wrapper for narrative allows all
        components to be recognized as same "level".</p></section>
    <pre>
        <b>EXAMPLE 1</b>
            
<b><i>Source XML</i></b>

&lt;clause clause-type="number" preservenumbering="false" id="d31e302"&gt;
  &lt;clause id="d31e304"&gt;
    &lt;heading&gt;
      &lt;desig&gt;&lt;designum&gt;1&lt;/designum&gt;&lt;/desig&gt;
      &lt;refpt id="ukContentItem24edcbd0-a64d-42ef-a116-954d435bd7f6"/&gt;
    &lt;/heading&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="bf"&gt;Assignment—permitted&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;clause clause-type="number" id="d31e306"&gt;
      &lt;clause id="d31e308"&gt;
        &lt;heading&gt;
          &lt;desig&gt;&lt;designum&gt;1.1&lt;/designum&gt;&lt;/desig&gt;
          &lt;refpt id="ukContentItem57fa17a4-a31e-403c-88e0-aa6c67c86120"/&gt;
        &lt;/heading&gt;
        &lt;p&gt;
          &lt;text&gt;Subject to either Party...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/clause&gt;
      &lt;clause id="d31e310"&gt;
        &lt;heading&gt;
          &lt;desig&gt;&lt;designum&gt;1.2&lt;/designum&gt;&lt;/desig&gt;
          &lt;refpt id="ukContentItem63978860-9b63-4462-882e-5ea39ae2968f"/&gt;
        &lt;/heading&gt;
        &lt;p&gt;
          &lt;text&gt;Either Party may subcontract...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/clause&gt;
    &lt;/clause&gt;
  &lt;/clause&gt;
  &lt;clause id="d31e312"&gt;
    &lt;heading&gt;
      &lt;desig&gt;&lt;designum&gt;2&lt;/designum&gt;&lt;/desig&gt;
      &lt;refpt id="ukContentItem6ae0aac7-309b-4d29-8d8b-bd9775e54b1b"/&gt;
    &lt;/heading&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="bf"&gt;Assignment—prohibited&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;!-- more narrative --&gt;
  &lt;/clause&gt;
&lt;/clause&gt;

<b><i>Target XML</i></b>

&lt;form:clause clausetype="number" preservenumbering="false" xml:id="d31e302"&gt;
  &lt;form:bodytext&gt;
    &lt;form:clause xml:id="d31e304"&gt;
      &lt;ref:anchor id="ukContentItem24edcbd0-a64d-42ef-a116-954d435bd7f6" anchortype="local"/&gt;
      &lt;heading&gt;
        &lt;desig&gt;1&lt;/desig&gt;
      &lt;/heading&gt;
      &lt;form:bodytext&gt;
         &lt;form:p&gt;
           &lt;form:text&gt;
             &lt;emph typestyle="bf"&gt;Assignment—permitted&lt;/emph&gt;
           &lt;/form:text&gt;
         &lt;/form:p&gt;
         &lt;form:clause clausetype="number" xml:id="d31e306"&gt;
           &lt;form:bodytext&gt;
             &lt;form:clause xml:id="d31e308"&gt;
               &lt;ref:anchor id="ukContentItem57fa17a4-a31e-403c-88e0-aa6c67c86120" anchortype="local"/&gt;
               &lt;heading&gt;
                 &lt;desig&gt;1.1&lt;/desig&gt;
               &lt;/heading&gt;
               &lt;form:bodytext&gt;
                 &lt;form:p&gt;
                   &lt;form:text&gt;Subject to either Party...&lt;/form:text&gt;
                 &lt;/form:p&gt;
               &lt;/form:bodytext&gt;
             &lt;/form:clause&gt;
             &lt;form:clause xml:id="d31e310"&gt;
               &lt;ref:anchor id="ukContentItem63978860-9b63-4462-882e-5ea39ae2968f" anchortype="local"/&gt;
               &lt;heading&gt;
                 &lt;desig&gt;1.2&lt;/desig&gt;
               &lt;/heading&gt;
               &lt;form:bodytext&gt;
                 &lt;form:p&gt;
                   &lt;form:text&gt;Either Party may subcontract...&lt;/form:text&gt;
                 &lt;/form:p&gt;
               &lt;/form:bodytext&gt;
             &lt;/form:clause&gt;
           &lt;/form:bodytext&gt;
         &lt;/form:clause&gt;
      &lt;/form:bodytext&gt;
    &lt;/form:clause&gt;
    &lt;form:clause xml:id="d31e312"&gt;
      &lt;ref:anchor id="ukContentItem6ae0aac7-309b-4d29-8d8b-bd9775e54b1b" anchortype="local"/&gt;
      &lt;heading&gt;
        &lt;desig&gt;2&lt;/desig&gt;
      &lt;/heading&gt;
      &lt;form:bodytext&gt;
        &lt;form:p&gt;
          &lt;form:text&gt;
            &lt;emph typestyle="bf"&gt;Assignment—prohibited&lt;/emph&gt;
          &lt;/form:text&gt;
        &lt;/form:p&gt;
      &lt;/form:bodytext&gt;
      &lt;!-- more narrative --&gt;
    &lt;/form:clause&gt;
  &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

                </pre>
    <pre>
        <b>EXAMPLE 2, showing special rule for clause[@clause-type], child p and table</b>
            
<b><i>Source XML</i></b>

&lt;clause clause-type="number" id="d42f765"&gt;
    &lt;clause id="d42f766"&gt;
        &lt;heading&gt;
            &lt;desig&gt;
                &lt;designum&gt;1&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;refpt id="ukContentItemfbd21f19-de16-4882-bcab-6f433c021e28"/&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;Money Laundering Regulations 2007 require ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/clause&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;The principal offences&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;table&gt;&lt;!-- usual table markup --&gt;&lt;/table&gt;
    &lt;clause id="d42f767"&gt;
        &lt;heading&gt;
            &lt;desig&gt;
                &lt;designum&gt;2&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;refpt id="ukContentItem30e81a65-408e-4aef-88c5-534b43bb0981"/&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;This policy contains the procedures that ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/clause&gt;
&lt;/clause&gt;

<b><i>Target XML</i></b>

&lt;form:clause clausetype="number" xml:id="d42f765"&gt;
    &lt;form:bodytext&gt;
        &lt;form:clause xml:id="d42f766"&gt;
            &lt;ref:anchor id="ukContentItemfbd21f19-de16-4882-bcab-6f433c021e28" anchortype="local"/&gt;
            &lt;heading&gt;
                &lt;desig&gt;1&lt;/desig&gt;
            &lt;/heading&gt;
            &lt;form:bodytext&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Money Laundering Regulations 2007 require ...&lt;/form:text&gt;
                &lt;/form:p&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:clause&gt;
        &lt;form:clause&gt;
            &lt;form:bodytext&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;
                        &lt;emph typestyle="bf"&gt;The principal offences&lt;/emph&gt;
                    &lt;/form:text&gt;
                &lt;/form:p&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:clause&gt;
        &lt;form:clause&gt;
            &lt;form:bodytext&gt;
                &lt;table&gt;&lt;!-- usual table markup --&gt;&lt;/table&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:clause&gt;
        &lt;form:clause xml:id="d42f767"&gt;
            &lt;ref:anchor id="ukContentItem30e81a65-408e-4aef-88c5-534b43bb0981" anchortype="local"/&gt;
            &lt;heading&gt;
                &lt;desig&gt;2&lt;/desig&gt;
            &lt;/heading&gt;
            &lt;form:bodytext&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;This policy contains the procedures that ...&lt;/form:text&gt;
                &lt;/form:p&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:clause&gt;
    &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2016-10-20: <ph id="change_20161020_jm">Revised rule for attribute
            <sourcexml>@id</sourcexml>. Now maps only to <targetxml>@xml:id</targetxml>. Previously
          also mapped to <targetxml>ref:anchor</targetxml> which caused conflict. Source rosetta now
          contains <sourcexml>refpt</sourcexml> which converts to <targetxml>ref:anchor</targetxml>,
          as already described in section "refpt (id-UK14-30223)". No new xpaths.</ph></p>
      <p>2016-03-27: <ph id="change_20160327_jm">Added rule for new attribute
            <sourcexml>@preservenumbering</sourcexml>. And expanded rule for attribute
            <sourcexml>@id</sourcexml> to map to two targets.</ph></p>
      <p>2014-03-21: <ph id="change_20140321_jm">New rule. Target xpath is not new. Rule provides
          special handling for narrative elements (<sourcexml>p</sourcexml> and
            <sourcexml>table</sourcexml>) occurring as children of
            <sourcexml>clause[@clause-type]</sourcexml>. R4.5 Content Issue List #1223.</ph></p>
      <p>2013-10-30: <ph id="change_20131030_jm">Illustrative change. Fixed typos in target example,
          correcting p/text to <targetxml>form:p/form:text</targetxml>.</ph></p>
      <p>2013-06-19: <ph id="change_20130619_jm">Changed target for
            <sourcexml>clause[@id]</sourcexml>. Attribute now maps to
            <targetxml>form:clause/ref:anchor[@id]</targetxml>.</ph> Reason: UK14 and UK15 have
        links that point to clauses and anchor is required for linking.</p>
      <p>2013-06-12: <ph id="change_20130612_jm">Removed mapping to
            <targetxml>form:clausegrp</targetxml>. All <sourcexml>clause</sourcexml> now map to
            <targetxml>form:clause</targetxml>.</ph>. Reason: <targetxml>form:clausegrp</targetxml>
        is intended only as container for <targetxml>form:clause</targetxml>. Source data contain
        narrative child elements in places that make <targetxml>form:clausegrp</targetxml> an
        inappropriate target.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_clause.dita  -->
	<!--<xsl:message>UK14_Precedents_clause.xsl requires manual development!</xsl:message>--> 

  <xsl:template match="clause">
    <form:clause>
      <xsl:apply-templates select="@*,heading/refpt,heading"/>
      <form:bodytext>
        <xsl:apply-templates select="note[@notetype='instruction']"></xsl:apply-templates>
      <xsl:apply-templates select="node() except (refpt|heading|note[@notetype='instruction'])"/>
      </form:bodytext>
    </form:clause>
  </xsl:template>


	<xsl:template match="clause/@id">
		<!--  Original Target XPath:  form:clause/ref:anchor[@id]   -->
	  <xsl:variable name="id" select="."/>
	  <xsl:choose>
	    <!-- don't create xml:id if refanchor of same value exists -->
	    <xsl:when test="../heading/refpt[@id=$id]"/>
	    <xsl:otherwise>
	      <xsl:attribute name="xml:id">
	        <xsl:value-of select="."/>
	      </xsl:attribute>
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>
  
  <xsl:template match="clause/@clause-type">
    <xsl:attribute name="clausetype">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="clause/@preservenumbering">
    <xsl:attribute name="preservenumbering">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

</xsl:stylesheet>