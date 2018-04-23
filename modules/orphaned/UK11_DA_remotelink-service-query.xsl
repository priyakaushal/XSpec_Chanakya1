<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_remotelink-service-query">
  <title>remotelink @service="QUERY" <lnpid>id-UK11DA-29442</lnpid></title>
    <body>
        <note>This section is retained to avoid any confusion with previous versions of these
            Conversion Instructions. However, notice that this special rule to map pcdata for
            "QUERY" remotelinks has become common practice. The rule is now present in the common
            module in the General Markup section: <sourcexml>remotelink</sourcexml> to
            <targetxml>ref:crossreference</targetxml> (id-CCCC-10465). </note>
        <section><p>This is a special rule for <sourcexml>remotelink</sourcexml> with
            <sourcexml>@service="QUERY"</sourcexml>. This rule supersedes the General Markup
            instruction to entirely suppress "QUERY" links.</p></section>
    <section><title>Special Rule</title>
      <p>Convert the pcdata of <sourcexml>remotelink[@service="QUERY"]</sourcexml>. Suppress the
          <sourcexml>remotelink</sourcexml> tag and its attributes. The
          <sourcexml>remotelink</sourcexml> always occurs within an element where pcdata is
        allowed.</p>
    </section>
    <note>Later iterations of rosetta data may use ci:cite or other markup instead of these "QUERY"
      links. In the meantime, this special rule captures the pcdata.</note>
    <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - &lt;remotelink service="QUERY"
            remotekey1="DIGEST-CITATION(LNB News 06/11/2008 25)"
            remotekey2="All Subscribed Current Awareness Sources" cmd="f:exp"
            alttext="References to"&gt;LNB News 06/11/2008 25&lt;/remotelink&gt;; &lt;/text&gt;
&lt;/p&gt;

    </pre>
    <pre>
              <b><i>Example: Target XML 1</i></b>


&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - LNB News 06/11/2008 25; &lt;/text&gt;
&lt;/p&gt;

    </pre>
    <section>
        <title>Changes</title>
        <p>2014-10-14: <ph id="change_20141014_jm">Not a rule change. Added Note explaining that
            special rule to retain pcdata for
            <sourcexml>remotelink[@service="QUERY"]</sourcexml> has become common
            practice. This section is retained to avoid confusion with previous versions of
            the CI.</ph></p>
      <p>2013-06-05: <ph id="change_20130605_jm"><sourcexml>remotelink[@service="QUERY"]</sourcexml>
          - Created special rule to capture pcdata</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_remotelink-service-query.dita  -->
	<xsl:message>UK11_DA_remotelink-service-query.xsl requires manual development!</xsl:message> 

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@service=&#34;QUERY&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="remotelink[@service=&#34;QUERY&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>