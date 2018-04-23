<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-pods_p-chof-pgrp">
  <title>POD <sourcexml>pgrp/p</sourcexml> <lnpid>id-UK13-30021</lnpid></title>
  <body>
    <p>The element <sourcexml>pgrp/p</sourcexml> becomes
        <targetxml>seclaw:subjectmatterreference</targetxml>.</p>
      <p> The content of  <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> is moved to
        the target document as the content of the created
          <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
          <li><targetxml>seclaw:subjectmattertext</targetxml></li>
          <li><targetxml>ref:crossreference</targetxml></li>
          <li><targetxml>ref:lnlink</targetxml></li>
          <li><targetxml>url</targetxml></li>
          <li><targetxml>ref:referencestatusgroup</targetxml></li>
          <li><targetxml>connector</targetxml></li>
          <li><targetxml>inlinenote</targetxml></li>
        </ul>
      </p>
        <p>The start-tag and end-tag for <sourcexml>text</sourcexml> (but not the element content)
          are dropped. Then: <ul>
            <li>Any sequence of data characters that occur as a direct child of
                <sourcexml>p/text</sourcexml> are wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
                exception to the above sentence: if an entire sequence of data characters consists
                of <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
                wrapped with <targetxml>connector</targetxml> instead of
                  <targetxml>seclaw:subjectmattertext</targetxml>.</note></li>
            <li>Any sequence of child elements with the following XPaths: <ul>
                <li><sourcexml>p/text/emph</sourcexml></li>
                <li><sourcexml>p/text/num</sourcexml></li>
                <li><sourcexml>p/text/nl</sourcexml></li>
              </ul>are also wrapped with a <targetxml>seclaw:subjectmattertext</targetxml> element,
              and the child element (<sourcexml>emph</sourcexml>, <sourcexml>num</sourcexml>) and
              any of its child elements are converted using the common element instructions provided
              in the section <xref href="general.dita"/>. </li>
          </ul>If there are sequences that contain a mixture of both data characters and the listed
          child elements, the entire sequence is wrapped with a single
            <targetxml>seclaw:subjectmattertext</targetxml> element. The idea is (to the extent
          possible) to have as few <targetxml>seclaw:subjectmattertext</targetxml> elements as
          possible. In other words, to surround the maximum amount of content that matches this
          scenario with a single <targetxml>seclaw:subjectmattertext</targetxml> element. </p>
    
    <p>After all children of <targetxml>seclaw:subjectmatterreference</targetxml> are output, if a
        <targetxml>ref:referencestatusgroup</targetxml> element and child
        <targetxml>ref:referencestatusdate</targetxml> elements were created by converting
        <sourcexml>levelinfo/updatedate/date</sourcexml> elements, the
        <targetxml>ref:referencestatusgroup</targetxml> is output as the <b><u>last</u></b> child of
        <targetxml>seclaw:subjectmatterreference</targetxml>. For further details, see the topic <xref href="pods_date-chof-updatedate.dita"/>.</p>
    <section>
      <title>Source XML</title>
      <p>This was devised to be a comprehensive example showing to a variety of inter-related scenarios, such as how:<ul>
        <li>multiple <sourcexml>level</sourcexml> elements will become multiple <targetxml>digest</targetxml> elements</li>
        <li><targetxml>ref:referencestatusgroup</targetxml> and child <targetxml>ref:referencestatusdate</targetxml> (converted from <sourcexml>levelinfo/update/date</sourcexml>) will be moved from their orginal position in the source</li>
      </ul></p>
      <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Practical Guidance&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links&lt;/title&gt;
      &lt;/heading&gt;
      &lt;level leveltype="digest"&gt;
        &lt;levelinfo&gt;
          &lt;updatedate&gt;
            &lt;date searchtype="CREATION" day="26" month="01" year="2009"/&gt;
          &lt;/updatedate&gt;
          &lt;services&gt;
            &lt;service&gt;
              &lt;api-params&gt;
                &lt;param name="content-type-digest-order" value="2"/&gt;
              &lt;/api-params&gt;
            &lt;/service&gt;
          &lt;/services&gt;
        &lt;/levelinfo&gt;
        &lt;bodytext searchtype="Practical Guidance"&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLI"
                  remotekey2="0OLI_26874"&gt;Share ownership plans&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/level&gt;
      &lt;level leveltype="digest"&gt;
        &lt;levelinfo&gt;
          &lt;updatedate&gt;
            &lt;date searchtype="CREATION" day="12" month="04" year="2009"/&gt;
          &lt;/updatedate&gt;
          &lt;services&gt;
            &lt;service&gt;
              &lt;api-params&gt;
                &lt;param name="content-type-digest-order" value="1"/&gt;
              &lt;/api-params&gt;
            &lt;/service&gt;
          &lt;/services&gt;
        &lt;/levelinfo&gt;
        &lt;bodytext searchtype="Practical Guidance"&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLI"
                  remotekey2="0OLI_26797"&gt;Definition of wages&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
            &lt;note notetype="summary"&gt;
              &lt;p&gt;
                &lt;text&gt;Amount and frequency of pay. Types of contractual pay. Pay obligated under
                  statute. Rules protecting and regulating 'wages': what is covered&lt;/text&gt;
              &lt;/p&gt;
            &lt;/note&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/level&gt;
      &lt;level leveltype="digest"&gt;
        &lt;levelinfo&gt;
          &lt;updatedate&gt;
            &lt;date searchtype="CREATION" day="29" month="08" year="2008"/&gt;
          &lt;/updatedate&gt;
          &lt;services&gt;
            &lt;service&gt;
              &lt;api-params&gt;
                &lt;param name="content-type-digest-order" value="4"/&gt;
              &lt;/api-params&gt;
            &lt;/service&gt;
          &lt;/services&gt;
        &lt;/levelinfo&gt;
        &lt;bodytext searchtype="Practical Guidance"&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;
                &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                  &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                      &lt;ci:sesslawnum num="1977_50a"/&gt;
                      &lt;ci:hierpinpoint&gt;
                        &lt;ci:hierlev label="schedule" num="1"/&gt;
                      &lt;/ci:hierpinpoint&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                      &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                    &lt;/ci:sesslawref&gt;
                  &lt;/ci:sesslaw&gt;
                  &lt;ci:content&gt;Unfair Contract Terms Act 1977, Sch 1, para 1&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/level&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <p>Some important points to note about this target mark-up: <ul>
        <li>the <targetxml>meta</targetxml> element and child <targetxml>metaitem</targetxml>
            elements are output <b><u>before</u></b> the
              <targetxml>seclaw:subjectmatterreference</targetxml></li>
        <li>the <targetxml>ref:referencestatusgroup</targetxml> is output as the <b><u>last</u></b>
            child of <targetxml>seclaw:subjectmatterreference</targetxml> and
              <targetxml>ref:subjectmatterreference</targetxml></li>
        <li>the order of the digests is different from the from the source document order; as specified in the topic <xref href="pods_level3.dita"/></li>
      </ul></p>
      <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Practical Guidance&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:digestgrp&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:digest&gt;
          &lt;seclaw:digestinfo&gt;
            &lt;meta&gt;
              &lt;metaitem name="lpa:content-type-digest-order" value="1"/&gt;
            &lt;/meta&gt;
            &lt;seclaw:subjectmatterreference&gt;
              &lt;ref:crossreference&gt;
                &lt;ref:content&gt;Definition of wages&lt;/ref:content&gt;
                &lt;ref:locator&gt;
                  &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0OLI-0OLI_26797"/&gt;
                  &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt;
              &lt;ref:referencestatusgroup&gt;
                &lt;ref:referencestatusdate name="lpa:creation" day="12" month="04" year="2009"/&gt;
              &lt;/ref:referencestatusgroup&gt;
            &lt;/seclaw:subjectmatterreference&gt;
            &lt;note notetype="summary"&gt;
              &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;Amount and frequency of pay. Types of contractual pay. Pay obligated under
                  statute. Rules protecting and regulating 'wages': what is covered&lt;/text&gt;
              &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/note&gt;
          &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;
        &lt;seclaw:digest&gt;
          &lt;seclaw:digestinfo&gt;
            &lt;meta&gt;
              &lt;metaitem name="lpa:content-type-digest-order" value="2"/&gt;
            &lt;/meta&gt;
            &lt;seclaw:subjectmatterreference&gt;
              &lt;ref:crossreference&gt;
                &lt;ref:content&gt;Share ownership plans&lt;/ref:content&gt;
                &lt;ref:locator&gt;
                  &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0OLI-0OLI_26874"/&gt;
                  &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt;
              &lt;ref:referencestatusgroup&gt;
                &lt;ref:referencestatusdate name="lpa:creation" day="26" month="01" year="2009"/&gt;
              &lt;/ref:referencestatusgroup&gt;
            &lt;/seclaw:subjectmatterreference&gt;
          &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;
        &lt;seclaw:digest&gt;
          &lt;seclaw:digestinfo&gt;
            &lt;meta&gt;
              &lt;metaitem name="lpa:content-type-digest-order" value="4"/&gt;
            &lt;/meta&gt;
            &lt;seclaw:subjectmatterreference&gt;
              &lt;lnci:cite&gt;
                &lt;lnci:sesslaw&gt;
                  &lt;lnci:sesslawinfo&gt;
                    &lt;lnci:sesslawnum num="1977_50a"/&gt;
                    &lt;lnci:hierpinpoint&gt;
                      &lt;lnci:hierlev label="schedule" num="1"/&gt;
                    &lt;/lnci:hierpinpoint&gt;
                  &lt;/lnci:sesslawinfo&gt;
                  &lt;lnci:sesslawref&gt;
                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                  &lt;/lnci:sesslawref&gt;
                &lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;Unfair Contract Terms Act 1977, Sch 1, para&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
              &lt;ref:referencestatusgroup&gt;
                &lt;ref:referencestatusdate name="lpa:creation" day="29" month="08" year="2008"/&gt;
              &lt;/ref:referencestatusgroup&gt;
            &lt;/seclaw:subjectmatterreference&gt;
          &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;

      </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-07-12: <ph id="change_20160712_JCG">Modified instructions and example target mark-up to remove the use of <targetxml>ref:subjectmattercite</targetxml> and specify that only <targetxml>seclaw:subjectmatterreference</targetxml> is created regardless of whether the input contains <sourcexml>p/text/ci:cite</sourcexml> or not.</ph></p>
      <p>2016-05-13: <ph id="change_20160513_JCG">Modified example target mark-up so it shows the
        re-ordering of <targetxml>seclaw:digest</targetxml> elements as described in the topic
        <xref href="pods_level3.dita"/>. (Requested by Presentation team member Anne
        Zajacz.)</ph></p>
      <p>2015-03-07: <ph id="change_20150307_JCG">Added a final instruction to output <targetxml>ref:referencestatusgroup</targetxml> as the last child of <targetxml>seclaw:subjectmatterreference</targetxml> and <targetxml>ref:subjectmatterreference</targetxml>. Also removed previous (now obsolete) examples and created a single new comprehensive example.</ph></p>
      <p>2013-06-26: <ph id="change_20130626_JCG">Added instructions to handle various specific elements within <sourcexml>p/text</sourcexml>.</ph></p>
      <p>2013-06-24: <ph id="change_20130624_JCG">Very minor change to one of the target XML examples: added missing <targetxml>inlinenote/@notetype</targetxml> attribute.</ph></p>
      <p>2013-06-20: <ph id="change_20130620_JCG">Added instructions to handle the scenario when
          certain content occurs after a <sourcexml>p/text/date</sourcexml> or
            <sourcexml>p/text/glp:note</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_p-chof-pgrp.dita  -->
	<!--<xsl:message>pods_p-chof-pgrp.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="pgrp/p">

		<!-\-  Original Target XPath:  seclaw:subjectmatterreference   -\->
		<seclaw:subjectmatterreference>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmatterreference>

	</xsl:template>-->

	<!--<xsl:template match="p">

		<!-\-  Original Target XPath:  seclaw:subjectmatterreference   -\->
		<seclaw:subjectmatterreference>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmatterreference>

	</xsl:template>-->

	<!--<xsl:template match="p/text">

		<!-\-  Original Target XPath:  seclaw:subjectmatterreference   -\->
		<seclaw:subjectmatterreference>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmatterreference>

	</xsl:template>-->

	<!--<xsl:template match="text">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="p/text/emph">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="p/text/num">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="p/text/nl">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="emph">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="num">

		<!-\-  Original Target XPath:  seclaw:subjectmattertext   -\->
		<seclaw:subjectmattertext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:subjectmattertext>

	</xsl:template>

	<xsl:template match="levelinfo/updatedate/date">

		<!-\-  Original Target XPath:  ref:referencestatusgroup   -\->
		<ref:referencestatusgroup>
			<xsl:apply-templates select="@* | node()"/>
		</ref:referencestatusgroup>

	</xsl:template>

	<xsl:template match="level">

		<!-\-  Original Target XPath:  digest   -\->
		<digest>
			<xsl:apply-templates select="@* | node()"/>
		</digest>

	</xsl:template>

	<xsl:template match="levelinfo/update/date">

		<!-\-  Original Target XPath:  meta   -\->
		<meta>
			<xsl:apply-templates select="@* | node()"/>
		</meta>

	</xsl:template>-->

	<!--<xsl:template match="p/text/ci:cite">

		<!-\-  Original Target XPath:  seclaw:digest   -\->
		<seclaw:digest>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:digest>

	</xsl:template>-->

	<!--<xsl:template match="p/text/date">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<!--<xsl:template match="p/text/glp:note">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>