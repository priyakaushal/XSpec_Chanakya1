<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.annotations">
  <title>cttr:annotations <lnpid>id-MY10-18015</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refs/cttr:refsection</targetxml>. </li>
        <li class="- topic/li ">The attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations/@annotationtype</sourcexml> is converted to <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection/@reftype</targetxml> as
          follows: <table id="table_uka_vdm_vl">
            <tgroup cols="2">
              <colspec colnum="1" colname="c1" colwidth="2.68in"/>
              <colspec colnum="2" colname="c2" colwidth="2.77in"/>
              <thead>
                <row>
                  <entry><sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations/@annotationtype</sourcexml></entry>
                  <entry><targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection/@reftype</targetxml></entry>
                </row>
              </thead>
              <tbody>
                <row>
                  <entry>subseqcases</entry>
                  <entry>citing-cases</entry>
                </row>
                <row>
                  <entry>subseqarticles</entry>
                  <entry>citing-publications</entry>
                </row>
                <row>
                  <entry>consideredcases</entry>
                  <entry>considered-cases</entry>
                </row>
                <row>
                  <entry>consideredleg</entry>
                  <entry>considered-legislation</entry>
                </row>
                <row>
                  <entry>appealproc</entry>
                  <entry>appeal-proceedings</entry>
                </row>
              </tbody>
            </tgroup>
          </table><p>The target should contain 1 or more <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection</targetxml> elements based on
            the above values.</p><p>The children are processed as follows:</p><ul class="- topic/ul " id="ul_fxa_ddm_vl">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml>
              <ul class="- topic/ul " id="ul_jab_ddm_vl">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">title</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>
                </li>
              </ul></li>
          </ul><pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
  .........
&lt;/cttr:annotations&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="considered-cases"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
   ........
&lt;/cttr:refsection&gt;
                
</pre>
        </li>
           </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-10-15: <ph id="change_20131016_brt">Created this new topic to give high-level overview
          of <sourcexml>cttr:annotations</sourcexml> conversion.</ph></p>
       </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\cttr.annotations.dita  -->
	<xsl:message>cttr.annotations.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refs/cttr:refsection   -->
		<cttr:refs>
			<cttr:refsection>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refsection>
		</cttr:refs>

	</xsl:template>

	<xsl:template match="cttr:annotations/@annotationtype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/@reftype   -->
		<cttr:refsection>
			<xsl:attribute name="reftype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

</xsl:stylesheet>