<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
                xmlns:comm="http://www.lexis-nexis.com/glp/comm" 
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
                version="2.0" 
                exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="comm.body">
  <title>comm:body <lnpid>id-CA09-14407</lnpid></title>
  <body>
    <section>
            <p><sourcexml>comm:body</sourcexml> becomes <targetxml>seclaw:body</targetxml>. The
                conversion for the children of <targetxml>seclaw:body</targetxml> are discussed as
                separate topics.</p>
            <pre>

&lt;COMMENTARYDOC&gt;
    &lt;comm:body&gt;
        ........
        &lt;level leveltype="3" searchtype="FORM"&gt;            
            &lt;bodytext searchtype="FORM"&gt;
                &lt;p&gt;
                    &lt;text align="center"&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                .......
            &lt;/bodytext&gt;
        &lt;/level&gt;
        ........
    &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

</pre>
            <b>Becomes</b>
            <pre>
        

&lt;seclaw:seclaw seclawtype="form" xml:lang="en-CA"&gt;
    &lt;seclaw:body&gt;
        .........
        &lt;seclaw:level leveltype="unclassified"&gt;
            &lt;seclaw:bodytext&gt;
                &lt;p align="center"&gt;
                    &lt;text&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                ........
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
    ..........
&lt;/seclaw:seclaw&gt;

      </pre>
            <note> If emph occurs within <sourcexml>heading/title</sourcexml> with the attribute's
                value <sourcexml>emph[@typesytle="bf"]</sourcexml> then it will be omitted from the
                NL conversion. Other @typestyles will be retained under
                    <targetxml>heading/title</targetxml>. </note>
            <note>If there are multiple <sourcexml>emph</sourcexml> with same @typestyle then only
                one <sourcexml>emph</sourcexml> will be retained. </note>. For more clarification
            please refer the examples below. <b>Example 1</b>
            <pre>
&lt;heading&gt;
    &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
    &lt;/title&gt;
&lt;/heading&gt;
            </pre>
            <b>Becomes</b>
            <pre>
&lt;heading&gt;
    &lt;title&gt;
        Judgment
    &lt;/title&gt;
&lt;/heading&gt;            
            </pre>
            <b>Example 2</b>
            <pre>
&lt;heading align="left"&gt;
    &lt;title searchtype="DOC-HEADING"&gt;
        &lt;emph typestyle="bf"&gt;
            &lt;emph typestyle="bf"&gt;Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;b&lt;/emph&gt;) &amp;#x2014;
                Affidavit&lt;/emph&gt;
        &lt;/emph&gt;
    &lt;/title&gt;
&lt;/heading&gt;
            </pre>
            <b>Becomes</b>
            <pre>
&lt;heading align="left"&gt;
    &lt;title searchtype="DOC-HEADING"&gt; Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;b&lt;/emph&gt;) —
        Affidavit &lt;/title&gt;
&lt;/heading&gt;          
            </pre>
            <b>Example 3</b>
            <pre>
&lt;ci:content&gt;
    &lt;ci:span spanid="csspan00625796"&gt;
        &lt;emph typestyle="bf"&gt;&lt;emph typestyle="bf"&gt;LAX 625796&lt;/emph&gt;&lt;/emph&gt;
    &lt;/ci:span&gt;
&lt;/ci:content&gt;
            </pre>
            <b>Becomes</b>
            <pre>
&lt;lnci:content&gt;
    &lt;emph typestyle="bf"&gt;LAX 625796&lt;/emph&gt;
&lt;/lnci:content&gt;
        </pre>
        </section>   
      
      <section>
          <title>Changes</title>
          <p>2014-06-02: <ph id="change_20140602_AS">Instructions to handle multiple emph or same @typestyle under heading/title....Db issue #91,94,107</ph></p>
      </section>
      
  </body>
	</dita:topic>

    <!-- MCJ:  20170421:  Manually created from comm.body.xsl in order to better clarify source and target.  I suspect that comm.body.xsl will get deprecated. -->

    <!-- MCJ:  20170421:  comm:body is a structural element... it might be best to not rely on apply-templates and to rather create seclaw:body in the driver and pull contents.
                          But am leaving this as-is for now as I'm not yet sure if anyone else is relying on this. -->
	<xsl:template match="comm:body">

		<!--  Original Target XPath:  seclaw:body   -->
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>

	</xsl:template>

    <!-- MCJ:  20170421:  Commenting out template as this should not be handled in the comm module... template can be deleted once sure it is not used. -->
	<!-- <xsl:template match="heading/title"> -->

		<!--  Original Target XPath:  heading/title   -->
		<!-- <heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template> -->

    <!-- MCJ:  20170421:  Commenting out template as this should not be handled in the comm module... template can be deleted once sure it is not used. -->
	<!-- <xsl:template match="emph[@typesytle=&#34;bf&#34;]"> -->

		<!--  Original Target XPath:  heading/title   -->
		<!-- <heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template> -->

    <!-- MCJ:  20170421:  Commenting out template as this should not be handled in the comm module... template can be deleted once sure it is not used. -->
	<!-- <xsl:template match="emph"> -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	<!-- </xsl:template> -->

</xsl:stylesheet>