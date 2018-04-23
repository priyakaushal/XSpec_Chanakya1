<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="psl_landingpgs-pods_date-chof-updatedate">
    <title>POD <sourcexml>levelinfo/updatedate/date</sourcexml>
      <lnpid>id-UK13-30015</lnpid></title>
    <body>
      <p>The element <sourcexml>levelinfo/updatedate</sourcexml> is a container and its start-tag
        and end-tag (but not its content) are dropped.</p>
      <p>The element <sourcexml>updatedate/date</sourcexml> becomes
          <targetxml>ref:referencestatusgroup/ref:referencestatusdate</targetxml>, but note that the
          <targetxml>ref:referencestatusgroup</targetxml> is not output where the
          <sourcexml>updatedate/date</sourcexml> occurs in the source. See the last paragraph in
        this topic for details regarding where to output the
          <targetxml>ref:referencestatusgroup</targetxml> after it and all its child
          <targetxml>ref:referencestatusdate</targetxml> elements are created.</p>
      <p>The <sourcexml>date</sourcexml> attributes are converted as follows.<ul>
          <li>The <sourcexml>data/@searchtype</sourcexml> attribute becomes
              <targetxml>ref:referencestatusdate/@name</targetxml>, and the <b><u>value</u></b> of
            this attribute is folded to lowercase and has the namespace "lpa:" prepended to it.</li>
          <li>The <sourcexml>date</sourcexml> attributes <sourcexml>@year, @month, @day</sourcexml>
            become <targetxml>ref:referencestatusdate</targetxml> attributes <targetxml>@year,
              @month, @day</targetxml>.</li>
          <li>The <sourcexml>date</sourcexml> attributes <sourcexml>@year, @month, @day</sourcexml>
            are also used to populate the <targetxml>ref:referencestatusdate/@normdate</targetxml>
            attribute that must also always be created. The
              <targetxml>ref:referencestatusdate/@normdate</targetxml> attribute contains the ISO
            format of the date in the form YYYY-MM-DD, where YYYY is the four digit year (from
              <sourcexml>date/@year</sourcexml>), and MM &amp; DD are the two digit numeric month
            (from <sourcexml>date/@month</sourcexml>) and two digit numeric day (from
              <sourcexml>date/@day</sourcexml>) padded with a zero if either source value is a
            single digit.</li>
        </ul>
      </p>
      <p>For each occurrence of a <sourcexml>date</sourcexml> element a single
          <targetxml>ref:referencestatusdate</targetxml> must be created within the
          <targetxml>ref:referencestatusgroup</targetxml> parent element. No matter how many
          <targetxml>ref:referencestatusdate</targetxml> elements are created, only one
          <targetxml>ref:referencestatusgroup</targetxml> element is created.</p>
      <note>There may potentially be multiple <sourcexml>updatedate</sourcexml> elements each with
        potentially multiple <sourcexml>date</sourcexml> child elements. Regardless of this, it is
        each <sourcexml>date</sourcexml> element that becomes a
          <targetxml>ref:referencestatusdate</targetxml>.</note>

      <p>The single element <targetxml>ref:referencestatusgroup</targetxml> created to contain all
        of the <targetxml>ref:referencestatusdate</targetxml> elements is then output as the
            <b><u>last</u></b> child of the <targetxml>seclaw:subjectmatterreference</targetxml>
        element that is created from mapping <sourcexml>level/bodytext/pgrp/p</sourcexml> (see <xref
          href="pods_p-chof-pgrp.dita"/>).</p>

      <section>
        <title>Source XML </title>
        <codeblock> &lt;level leveltype="digest"&gt; &lt;levelinfo&gt; &lt;updatedate&gt; &lt;date
          searchtype="CREATION" day="17" month="09" year="2014"/&gt; &lt;/updatedate&gt;
          &lt;updatedate&gt; &lt;date searchtype="LASTMAJORUPDATE" day="21" month="12"
          year="2014"/&gt; &lt;/updatedate&gt; &lt;services&gt; &lt;service&gt; &lt;api-params&gt;
          &lt;param name="content-type-digest-order" value="2"/&gt; &lt;/api-params&gt;
          &lt;/service&gt; &lt;/services&gt; &lt;/levelinfo&gt; &lt;bodytext searchtype="Practical
          Guidance"&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; &lt;remotelink remotekey1="DOCID"
          service="DOC-ID" dpsi="0RCE" remotekey2="0RCE_308172"&gt;Salary sacrifice—basic
          principles&lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt; &lt;note notetype="summary"&gt;
          &lt;p&gt; &lt;text&gt;A salary sacrifice involves an employee giving up a right to receive
          part of their cash salary in exchange for a defined non-cash benefit. This practice note
          provides an introduction to the concept of salary sacrifice and explains what it is and
          why it is commonly used.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/pgrp&gt;
          &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <p>Note how the <targetxml>ref:referencestatusgroup/ref:referencestatusdate</targetxml> is
          output to a different relative position than where its corresponding source elements
            <sourcexml>updatedate/date</sourcexml> is located.</p>
        <codeblock> &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt; &lt;meta&gt; &lt;metaitem
          name="lpa:content-type-digest-order" value="2"/&gt; &lt;/meta&gt;
          &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt; &lt;ref:content&gt;Salary
          sacrifice—basic principles&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0RCE-0RCE_308172"/&gt;
          &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
          &lt;ref:referencestatusgroup&gt; &lt;ref:referencestatusdate name="lpa:creation" day="17"
          month="09" year="2014" normdate="2014-09-17"/&gt; &lt;ref:referencestatusdate
          name="lpa:lastmajorupdate" day="21" month="12" year="2014" normdate="2014-12-21"/&gt;
          &lt;/ref:referencestatusgroup&gt; &lt;/seclaw:subjectmatterreference&gt; &lt;note
          notetype="summary"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;A salary sacrifice involves
          an employee giving up a right to receive part of their cash salary in exchange for a
          defined non-cash benefit. This practice note provides an introduction to the concept of
          salary sacrifice and explains what it is and why it is commonly used.&lt;/text&gt;
          &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt; &lt;/seclaw:digestinfo&gt;
          &lt;/seclaw:digest&gt; </codeblock>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-02-03: <ph id="change_20160203_JCG">Added instruction to create and populate the
              <targetxml>ref:referencestatusdate/@normdate</targetxml> attribute, and added this
            attribute to the example.</ph></p>
        <p>2015-03-07: <ph id="change_20150307_JCG">Added this topic.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_date-chof-updatedate.dita  -->
  <!--<xsl:message>pods_date-chof-updatedate.xsl requires manual development!</xsl:message> -->

  <xsl:template match="levelinfo" mode="update_date">
    <!--  Original Target XPath:  ref:referencestatusgroup/ref:referencestatusdate   -->
    
      <xsl:apply-templates select="updatedate/date"/>
    
  </xsl:template>
  
  <xsl:template match="updatedate/date" >
    <!--  Original Target XPath:  ref:referencestatusgroup/ref:referencestatusdate   -->
    <ref:referencestatusgroup>  
    <ref:referencestatusdate>
         <xsl:apply-templates select="@searchtype , @month, @day, @year"/>
      </ref:referencestatusdate>
    </ref:referencestatusgroup>
  </xsl:template>

  <xsl:template match="date/@searchtype">
    <!--  Original Target XPath:  ref:referencestatusdate/@name   -->
    <xsl:attribute name="name">
      <xsl:value-of select="concat('lpa:', .)"/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="date/@year">
    <xsl:attribute name="year">
      <xsl:value-of select="."/>
    </xsl:attribute>
	</xsl:template>

  <xsl:template match="date/@month">
    <xsl:attribute name="month">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="date/@day">
    <xsl:attribute name="day">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  

  
</xsl:stylesheet>
