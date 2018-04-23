<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita pubinfo doc classify abstract dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_dig.subject">
  <title>dig:subject <lnpid>id-UK11DA-29420</lnpid></title>
  <body>
    <section><p>Mapping of <sourcexml>dig:subject</sourcexml> is determined by value of
          <sourcexml>@display-name</sourcexml>, as follows:</p><ul>
        <li><sourcexml>dig:subject[@display-name="Jurisdiction"]</sourcexml> becomes
            <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="jurisdictionAffected"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</li>
        <li><sourcexml>dig:subject[@display-name="Website"]</sourcexml> becomes
            <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:publicationurl/url</targetxml>
          and <targetxml>url[@normval]</targetxml>. Note that source content (pcdata) maps twice -
          becomes <targetxml>url</targetxml> content and <targetxml>url[@normval]</targetxml> value.<ul>
            <li>If source content begins "www." (without quotes) then generate prefix "http://"
              (without quotes) for <targetxml>@normval</targetxml> value.</li>
          </ul></li>
      </ul></section>
    <note>Attribute <sourcexml>@display-name</sourcexml> is suppressed. The attribute is used to
      determine mapping but the attribute does not convert.</note>
    <section/>
    <section><p><b><u>Special Rules for dpsi 03WX "Events"</u></b></p><p>There is unique
          <sourcexml>dig:subject</sourcexml> markup in dpsi 03WX (lbu-sourcename "Events"). Each
        file contains 3-4 <sourcexml>dig:subject</sourcexml>. All map within
          <targetxml>abstract:target/abstract:event</targetxml>. Individual targets are determined
        by value of <sourcexml>@display-name</sourcexml>, as follows:</p>
      <ul>
        <li><sourcexml>dig:subject[@display-name="Event Details"]</sourcexml> becomes
            <targetxml>abstract:body/abstract:target/abstract:event/abstract:eventdesc/bodytext/p/text</targetxml></li>
        <li><sourcexml>dig:subject[@display-name="Event Date"]</sourcexml> becomes
            <targetxml>abstract:body/abstract:target/abstract:event/date</targetxml></li>
        <li><sourcexml>dig:subject[@display-name="Contact Details"]</sourcexml> becomes
            <targetxml>abstract:body/abstract:target/abstract:event/org:contact/bodytext/p/text</targetxml></li>
        <li><sourcexml>dig:subject[@display-name="Website"]</sourcexml> becomes
            <targetxml>abstract:body/abstract:target/abstract:event/url</targetxml> and
            <targetxml>url[@normval]</targetxml>. Note that source content (pcdata) maps twice -
          becomes <targetxml>url</targetxml> content and <targetxml>url[@normval]</targetxml> value.<ul>
            <li>If source content begins "www." (without quotes) then generate prefix "http://"
              (without quotes) for <targetxml>@normval</targetxml> value.</li>
          </ul></li>
      </ul>
    </section>


    <pre>
              <b><i>Example 1</i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;dig:subject display-name="Website"&gt;www.oft.gov.uk/mergers/bobst&lt;/dig:subject&gt;
    &lt;dig:subject display-name="Jurisdiction"&gt;England; Wales&lt;/dig:subject&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publicationurl&gt;
        &lt;url normval="http://www.oft.gov.uk/mergers/bobst"&gt;www.oft.gov.uk/mergers/bobst&lt;/url&gt;
      &lt;/pubinfo:publicationurl&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
...
&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;classify:classification classscheme="jurisdictionAffected"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;England; Wales&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
 
	</pre>

    <pre>
              <b><i>Example 2: Special Rules for dpsi 03WX "Events"</i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
     &lt;dig:subject display-name="Event Details"&gt;Live broadcast 17 February 2009 at 12:30-13:30. 
         The webinar will be further available within 3 working days of live broadcast for 
         18 months from broadcast date.&lt;/dig:subject&gt;
     &lt;dig:subject display-name="Event Date"&gt;17 February 2009&lt;/dig:subject&gt;
     &lt;dig:subject display-name="Contact Details"&gt;Webinars Department: email onlinewebinars@lexisnexis.co.uk 
         or tel 020 7347 3575&lt;/dig:subject&gt;
     &lt;dig:subject display-name="Website"&gt;http://mediazone.brighttalk.com/event/LexisNexis/d51b416788-2182-login&lt;/dig:subject&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;abstract:target&gt;
     &lt;abstract:event&gt;
        &lt;abstract:eventdesc&gt;
           &lt;bodytext&gt;
              &lt;p&gt;
                 &lt;text&gt;Live broadcast 17 February 2009 at 12:30-13:30. The webinar will be
                     further available within 3 working days of live broadcast for 18 months
                     from broadcast date.&lt;/text&gt;
              &lt;/p&gt;
           &lt;/bodytext&gt;
        &lt;/abstract:eventdesc&gt;
        &lt;date&gt;17 February 2009&lt;/date&gt;
        &lt;org:contact&gt;
           &lt;bodytext&gt;
              &lt;p&gt;
                 &lt;text&gt;Webinars Department: email onlinewebinars@lexisnexis.co.uk or tel 020
                     7347 3575&lt;/text&gt;
              &lt;/p&gt;
           &lt;/bodytext&gt;
        &lt;/org:contact&gt;
        &lt;url normval="http://mediazone.brighttalk.com/event/LexisNexis/d51b416788-2182-login"
            &gt;http://mediazone.brighttalk.com/event/LexisNexis/d51b416788-2182-login&lt;/url&gt;
     &lt;/abstract:event&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
	</pre>

    <section>
      <title>Changes</title>
      <p>2015-03-16: <ph id="change_20150316_jm">Section revised. Target xpaths are not changed.
          Formerly, rules were based on whether child <sourcexml>url</sourcexml> present in rosetta
          source. Child <sourcexml>url</sourcexml> has been removed from rosetta. Mappings now based
          on value of <sourcexml>@display-name</sourcexml>. Affects the general rules and the
          special rules for dpsi 03WX. Note to Conversion Engineering: Former special rules for dpsi
          0SY4 are now generally applicable; may be able to re-use code. R4.5 Content Issue
          2227.</ph></p>
      <p>2014-10-14: <ph id="change_20141014_jm">Added special rules for dpsi 0SY4 "Legal News".
          Child <sourcexml>url</sourcexml> is not present to distinguish the two types of content.
          Special rule is based on <sourcexml>@display-name</sourcexml> instead. Data are new in Oct
          2014 delivery. Target xpaths are not new. Also added note that the attribute itself does
          not convert.</ph></p>
      <p>2014-01-13: <ph id="change_20140113_jm">Within special rules for dpsi 03WX "Events",
          corrected mapping for <sourcexml>date</sourcexml>. Removed
            <targetxml>date-text</targetxml> from target which is not allowed as child of
            <targetxml>date</targetxml>. This was a CI error limited to this one use case. No other
          mappings or streams affected. Phase 5 UK Discussion Board Item 143.</ph></p>
      <p>2013-09-17: <ph id="change_20130917_jm">Added special rules for dpsi 03WX "Events" which
          contains unique <sourcexml>dig:subject</sourcexml> markup. The dpsi is new in Sept 2013
          delivery, as noted in WebTeam # 233402.</ph></p>
      <p>2013-08-30: <ph id="change_20130830_jm">Rule changed to handle new xpath
            <sourcexml>dig:subject/url/remotelink</sourcexml>. Rule is now conditional based on
          whether child <sourcexml>url</sourcexml> is present. See R4.5 Post-Iterative Testing
          UK11DA Issue 356.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_dig.subject.dita  -->
	<!--Vikas Rohilla : Template to match the dig:subject-->
  <xsl:template match="dig:subject[@display-name='Jurisdiction']">
		<classify:classification>
		  <xsl:attribute name="classscheme" select="'jurisdictionAffected'"/>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>
	</xsl:template>
  
  <xsl:template match="dig:subject[@display-name='Website']">
    <xsl:element name="pubinfo:publicationurl">
      <xsl:element name="url">
        <xsl:attribute name="normval">
          <xsl:apply-templates select="node()"/>
        </xsl:attribute>
        <xsl:apply-templates select="node()"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>
	
	<xsl:template match="dig:subject/@display-name"/>
	
	
</xsl:stylesheet>