<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_LA_ASX-leg.levelbody">
 <title>leg:levelbody and leg:bodytext <lnpid>id-AU19LA-22015</lnpid></title>
 <body>
  <section>
   <ul>
    <li><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> comes in
     following scenarios: <ul>
      <li>If the elements <sourcexml>leg:bodytext</sourcexml> is the immediate child of
        <sourcexml>leg:levelbody</sourcexml> then <b>becomes</b>
       <targetxml>admindoc:bodytext</targetxml> and populated as: <pre>
         					<b><i>Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
 &lt;leg:bodytext&gt;
&lt;p&gt;
&lt;text&gt;Please click here to have access a pdf of ASX Settlement Operating Rules Appendix 1.&lt;/text&gt;
...
&lt;/p&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

         				</pre>
       <pre>
         					<b><i>Example: Target XML 1</i></b>

&lt;admindoc:bodytext&gt;
 &lt;p&gt;&lt;text&gt;Please click here to have access a pdf of ASX Settlement Operating Rules Appendix 1.&lt;/text&gt;&lt;/p&gt;
&lt;/admindoc:bodytext&gt;

         				</pre>
      </li>

      <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
        <sourcexml>leg:level</sourcexml> then it <b>becomes</b>
       <targetxml>admindoc:level</targetxml> and populated as: <pre>
              		<b><i>Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
&lt;leg:level id="ASXASR.APP.APP1"&gt;
&lt;leg:level-vrnt leveltype="attachment" searchtype="LEGISLATION ATTACHMENT" subdoc="true" toc-caption="APPENDIX 1 SCHEDULED TIMES"&gt;
&lt;leg:heading&gt;&lt;desig searchtype="ATTACH-NUM"&gt;
&lt;designum&gt;&lt;refpt id="ASXASR.APP.APP1" type="ext"/&gt;APPENDIX 1&lt;/designum&gt;&lt;/desig&gt;&lt;title searchtype="ATTACH-TITLE"&gt;SCHEDULED TIMES&lt;/title&gt;
&lt;/leg:heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

              	</pre>
       <pre>
              		<b><i>Example: Target XML 1</i></b>

&lt;admindoc:bodytext&gt;
 &lt;admindoc:level leveltype="attachment" alternatetoccaption="APPENDIX 1 SCHEDULED TIMES" includeintoc="true"&gt;
  &lt;ref:anchor id="ASXASR.APP.APP1" anchortype="global"/&gt;
  &lt;heading&gt;
   &lt;desig&gt;APPENDIX 1&lt;/desig&gt;
   &lt;title&gt;SCHEDULED TIMES&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/admindoc:level&gt;
&lt;/admindoc:bodytext&gt;

              	</pre>
       <note>Refer "common_rosetta_refpt" for handling of <sourcexml>refpt</sourcexml>.</note>
      </li>


      <li>If the input documents are having scenario <sourcexml>leg:bodytext/leg:heading
       </sourcexml> then it will becomes <targetxml>admindoc:bodytext/h</targetxml>
       <pre>
         					<b>Source XML 1</b>
        
      
      &lt;leg:levelbody&gt;
       &lt;leg:bodytext&gt;
        &lt;leg:heading&gt;
        &lt;title&gt;Please click here to access a pdf of ASX Listing Rules Chapter 1.&lt;/title&gt;
        &lt;/leg:heading&gt;
           &lt;p&gt;
             &lt;text&gt;
             &lt;link filename="ch1.pdf" type="pdf"&gt;Download in PDF&lt;/link&gt;
             &lt;/text&gt;
           &lt;/p&gt;
            &lt;pgrp&gt;
            &lt;heading&gt;&lt;title&gt;Table of Contents&lt;/title&gt;&lt;/heading&gt;
               &lt;p&gt;
               &lt;table frame="all" pgwide="1"/&gt;
               &lt;/p&gt;
            &lt;/pgrp&gt;
          &lt;!-- ETC --&gt;
          &lt;/leg:bodytext&gt;
          &lt;/leg:levelbody&gt;
      
      
        				</pre>
       <pre>
         					<b>Target XML 1</b>
        
        
            &lt;admindoc:bodytext&gt;
                &lt;h&gt;Please click here to access a pdf of ASX Listing Rules Chapter 1.&lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:lnlink service="ATTACHMENT"&gt;
                            &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="attachment-key"/&gt;
                                    &lt;ref:key-value value="X-Y-ch1"/&gt;
									&lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
									&lt;proc:param name="componentseq" value="1"/&gt;
                                    &lt;proc:param name="attachment-type" value="pdf"/&gt;
                                    &lt;proc:param name="attachment-smi" value=""/&gt;
									&lt;!-- @value populated with SMI obtained from CSSM --&gt;
									&lt;!-- This @value assignment is done by conversion program --&gt;
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                     &lt;/text&gt;
                &lt;/p&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Table of Contents&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;p&gt;
                        &lt;table frame="all" pgwide="1"/&gt;
                   &lt;/p
               &lt;/pgrp&gt;
                        &lt;!-- ETC --&gt;
               &lt;/admindoc:bodytext&gt;
        
        
        </pre>
      </li>
     </ul>
    </li>
   </ul>
  </section>
  <section>
	<title>Changes</title>
	<p>2013-05-02: Created .</p>
	<p>2013-05-02: <ph id="change_20130502_SP">Updated target example to reflect changes per latest Apollo markup.</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_leg.levelbody.dita  -->

	<xsl:template match="leg:levelbody">
	    <xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="leg:bodytext">
		<admindoc:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:bodytext>
	</xsl:template>

	

	<xsl:template match="leg:bodytext/leg:heading" priority="25">

		<!--  Original Target XPath:  admindoc:bodytext/h   -->
	    <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="title" mode="h"/>
		</h>
	</xsl:template>

	<xsl:template match="leg:heading/title" mode="h">
	    <xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>