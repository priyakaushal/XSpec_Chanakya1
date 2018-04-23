<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_remotelink-service-query">
  <title>remotelink @service="QUERY", @newwindow, @type and @alt-content-role <lnpid>id-UK03-27457</lnpid></title>
  <shortdesc>This is a special rules for <sourcexml>remotelink</sourcexml> markup for handling their
    different attributes with special values (i.e. <sourcexml>@service="QUERY"</sourcexml>,
      <sourcexml>@newwindow="YES"</sourcexml>, <sourcexml>@type="video"</sourcexml> and
      <sourcexml>@alt-content-role="video"</sourcexml>). This rule supersedes the General Markup
    instruction to entirely <sourcexml>remotelink</sourcexml>.</shortdesc> 
  <body>
      <section><title>Applicable for UK03 and UK17: Special Rule - [@service="QUERY"]</title>
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
    &lt;text&gt;
        &lt;emph typestyle="it"&gt;BP Exploration Co v IRC&lt;/emph&gt; 
        &lt;remotelink service="QUERY" remotekey1="REPORTER-CITE(2000 w/3 STC SCD w/3 466)" remotekey2="All Subscribed Cases Sources" cmd="f:exp" alttext="References to"&gt;[2000] STC (SCD) 466&lt;/remotelink&gt; 
    &lt;/text&gt;
&lt;/p&gt;

    </pre>
    <pre>
              <b><i>Example: Target XML 1</i></b>


&lt;p&gt;
    &lt;text&gt;&lt;emph typestyle="it"&gt;BP Exploration Co v IRC&lt;/emph&gt; [2000] STC (SCD) 466&lt;/text&gt;
&lt;/p&gt;

    </pre>
    <section><title>Special Rule - For Attributes [<sourcexml>@newwindow</sourcexml>,
          <sourcexml>@type</sourcexml> and <sourcexml>@alt-content-role</sourcexml>]</title>
      <p>Convert the pcdata of <sourcexml>remotelink</sourcexml> and suppressed the below mentioned
        attributes in target conversion: <ul>
          <li>Attribute <sourcexml>[@newwindow="YES"]</sourcexml> should be dropped in target and
            refer the Example 2.</li>
          <li>Attribute <sourcexml>[@type="video"]</sourcexml> should be dropped in target and refer
            the Example 2.</li>
          <li>Attribute <sourcexml>[@alt-content-role="video"]</sourcexml> should be dropped in
            target and refer the Example 3.</li>
        </ul>
        <pre>
              <b><i>Example: Source XML 2</i></b>


&lt;p&gt;
    &lt;text&gt;
        &lt;remotelink type="video" href="http://player.vimeo.com/video/52994955" newwindow="YES"&gt;Test
            video (Vimeo)&lt;/remotelink&gt;
    &lt;/text&gt;
&lt;/p&gt;


    </pre>
        <pre>
              <b><i>Example: Target XML 2</i></b>


&lt;p&gt;
    &lt;text&gt;
      &lt;url normval="http://player.vimeo.com/video/52994955"&gt;Test video (Vimeo)&lt;/url&gt;
    &lt;/text&gt;
&lt;/p&gt;

    </pre>
        <pre>
              <b><i>Example: Source XML 3 - </i></b>


&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0R7W_224602" dpsi="0R7W" 
    alt-content-role="video"&gt;Test audio (Tolley)&lt;/remotelink&gt;


    </pre>
        <pre>
              <b><i>Example: Target XML 3</i></b>


&lt;ref:crossreferencegroup&gt;
    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
        &lt;ref:content&gt;Test audio (Tolley)&lt;/ref:content&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0R7W-0R7W_224602"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/ref:crossreferencegroup&gt;

    </pre>
      </p>
      
      
    </section>
    
    <section>
      <title>Changes</title>
      <p>2016-02-22: <ph id="change_20160222_SS">Added a rule for handling the new attributes
            [<sourcexml>@newwindow, @type and @alt-content-role</sourcexml>] of
            <sourcexml>remotelink</sourcexml></ph> markup. [RFA <b>#2747</b>]</p>
      <p>2014-02-07: <ph id="change_20140207_SS"><sourcexml>remotelink[@service="QUERY"]</sourcexml>
          - Created special rule to capture pcdata</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_remotelink-service-query.dita  -->

	<xsl:template match="remotelink[@service='QUERY']" priority="30">
	    <xsl:apply-templates/>
	</xsl:template>

    <!-- @newwindow is suppressed in modules/nonamespace/Rosetta_remotelink-LxAdv-ref.crossreference.xsl  -->
    
    <xsl:template match="remotelink/@type[.='video'] | remotelink/@alt-content-role[.='video']" priority="25"/>
    

</xsl:stylesheet>