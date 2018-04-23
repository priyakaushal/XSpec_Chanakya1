<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
  xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_emp-Chof-heading_title-LxAdv-heading_title">
  <title><sourcexml>heading/title/emph</sourcexml> to <targetxml>heading/title</targetxml> <lnpid>id-CCCC-10313</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p>
        <sourcexml>heading/title/emph</sourcexml> becomes <targetxml>heading/title</targetxml>. That
        is, the <sourcexml>emph</sourcexml> start-tag and end-tag (but not the content) are dropped, and the content becomes part of the target parent <targetxml>title</targetxml> element.</p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;heading&gt;
    &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
    &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;heading&gt;
    &lt;title&gt;
Judgment
    &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
        </example>
      <example>
        <title>Source XML: For multiple <sourcexml>emph</sourcexml> elements</title>
        <codeblock>

&lt;heading&gt;
  &lt;title&gt;
    &lt;emph typestyle="bf"&gt;
      &lt;emph typestyle="bf"&gt;
        Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;b&lt;/emph&gt;&lt;/emph&gt;) &amp;#x2014; Affidavit
      &lt;/emph&gt;
    &lt;/emph&gt;
  &lt;/title&gt;
&lt;/heading&gt;
                  
       </codeblock>
      </example>
      <example>
        <title>Target XML</title>
        <codeblock>

&lt;heading&gt;
  &lt;title&gt;Doc. 5.27 - Section 10(b) &amp;#x2014; Affidavit&lt;/title&gt;
&lt;/heading&gt;
               
       </codeblock>
      </example>
      <example>
        <title>Source XML: Showing an <sourcexml>emph</sourcexml> that contains a child element</title>
        <codeblock>

&lt;heading&gt;
    &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Non-residential building—(&lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
        &lt;ci:sesslaw&gt;
          &lt;ci:sesslawinfo&gt;
            &lt;ci:sesslawnum num="1994_23a"/&gt;
            &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="schedule" num="8"/&gt;&lt;/ci:hierpinpoint&gt;
          &lt;/ci:sesslawinfo&gt;
          &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;VATA 1994, Schedule 8, group 5&lt;/ci:content&gt;&lt;/ci:cite&gt;, note 7A)&lt;/emph&gt;
    &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
      </example>
      
      <example>
        <title>Target XML</title>
        <codeblock>

&lt;heading&gt;
    &lt;title&gt;Non-residential building—(&lt;lnci:cite searchtype="LEG-REF" status="invalid"&gt;
      &lt;lnci:sesslaw&gt;
        &lt;lnci:sesslawinfo&gt;
          &lt;lnci:sesslawnum num="1994_23a"/&gt;
          &lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="schedule" num="8"/&gt;&lt;/lnci:hierpinpoint&gt;
        &lt;/lnci:sesslawinfo&gt;
        &lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;
      &lt;/lnci:sesslaw&gt;
      &lt;lnci:content&gt;VATA 1994, Schedule 8, group 5&lt;/lnci:content&gt;&lt;/lnci:cite&gt;, note 7A)&lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
      </example>
      
      <example>
        <title>Source XML: When source is having <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under <sourcexml>heading/title</sourcexml> than in that case the <sourcexml>emph</sourcexml> element get dropped from target and its content along with the PCDATA will be put directly under <targetxml>title</targetxml> element.</title>
        <codeblock>

&lt;heading&gt;
     &lt;title&gt;
        &lt;emph typestyle="it"&gt;R&lt;/emph&gt;(on the application of Green) v Police Complaints Authority
             &lt;fnr fnrtoken="d30e128" fntoken="d30e1108"&gt;13&lt;/fnr&gt;
     &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
      </example>     
 
      <example>
        <title>Target XML</title>
        <codeblock>

&lt;heading&gt;
     &lt;title&gt;R (on the application of Green) v Police Complaints Authority
             &lt;footnote-ref anchoridref="d30e128"&gt;
                  &lt;ref:anchor id="d30e1108"/&gt;
                      &lt;label&gt;13&lt;/label&gt;
              &lt;/footnote-ref&gt;   
     &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
      </example> 
  
      <section>
            <title>Changes</title>
        <p>2015-03-18: <ph id="change_20150318_AK">When <sourcexml>heading\title</sourcexml> contains <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under it then from target the emph tags will dropped and it's content along with PCDATA content will be put directly under <targetxml>title</targetxml> element . Applicable to UK09 only.</ph></p>
        <p>2014-10-22: <ph id="change_20141022_JCG">Added an example to explicitly show child elements of <sourcexml>emph</sourcexml> being retained. (R4.5 Content Issue List #1998)</ph></p>
          <p>2014-06-04: <ph id="change_20140604_JCG">Clarified instructions and added an example to show multiple <sourcexml>emph</sourcexml> elements being handled.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Created.</ph></p>
        </section>
      
     
    </body>
	</dita:topic>

  <!-- MDS - 2017-03-13 - Moved functionality to modules/nonamespace/Rosetta_emph-LxAdv-emph.xsl and removed this module from Driver -->

          <!-- CSN: Created mail template -->
          <xsl:template match="heading/title/emph">
            <xsl:apply-templates/>
          </xsl:template>
          <xsl:template  match="heading/title/emph/emph">
            <xsl:apply-templates/>
          </xsl:template>
        
        <!-- HK02-Articles heading handling -->
      <xsl:template match="jrnl:prelim/heading/title">
        <nitf:hl1>
          <xsl:apply-templates/>
        </nitf:hl1>
      </xsl:template>
</xsl:stylesheet>