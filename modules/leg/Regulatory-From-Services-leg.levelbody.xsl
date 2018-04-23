<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-From-Services-leg.levelbody">
	<title>leg:levelbody and leg:bodytext <lnpid>id-NZ12-24817</lnpid></title>
   <body>
      <section>
         <ul>
         	<li><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> comes in following scenarios:
         		<ul>
         			<li>If the elements <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then <b>becomes</b>
         				<targetxml>admindoc:bodytext</targetxml> and populated as:
         				<pre>
         					<b><i>Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
 &lt;leg:bodytext&gt;
  &lt;p&gt;&lt;text&gt;This procedure is not mandatory and should be used only where there is doubt surrounding the timing of a vehicle&amp;#x2019;s air brake system. In the event, response times are required to be measured, this procedure should be closely followed.&lt;/text&gt;&lt;/p&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

         				</pre>
         				<pre>
         					<b><i>Example: Target XML 1</i></b>

&lt;admindoc:bodytext&gt;
 &lt;p&gt;&lt;text&gt;This procedure is not mandatory and should be used only where there is doubt surrounding the timing of a vehicle&amp;#x2019;s air brake system. In the event, response times are required to be measured, this procedure should be closely followed.&lt;/text&gt;&lt;/p&gt;
&lt;/admindoc:bodytext&gt;

         				</pre>
         			</li> 

              <li>If the element <sourcexml>leg:levelbody</sourcexml> has child <sourcexml>leg:level</sourcexml> then it <b>becomes</b> 
                  <targetxml>admindoc:level</targetxml> and populated as:
              	<pre>
              		<b><i>Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
 &lt;leg:level id="HWINSOLV-FORMS-AND-PRECEDENTS-F1-1"&gt;
  &lt;leg:level-vrnt leveltype="form" searchtype="LEGISLATION FORM" subdoc="false" toc-caption="Form 1.1 Deed of Appointment of Receiver"&gt;
   &lt;leg:levelinfo&gt;
    &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
   &lt;/leg:levelinfo&gt;
   &lt;leg:heading&gt;
    &lt;desig searchtype="FORM-NUM"&gt;
     &lt;designum&gt;&lt;refpt id="HWINSOLV-FORMS-AND-PRECEDENTS-F1-1" type="ext"/&gt;Form 1.1&lt;/designum&gt;
    &lt;/desig&gt;
    &lt;title searchtype="FORM-TITLE"&gt;Deed of Appointment of Receiver&lt;/title&gt;
   &lt;/leg:heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

              	</pre>
              	<pre>
              		<b><i>Example: Target XML 1</i></b>

&lt;admindoc:bodytext&gt;
 &lt;admindoc:level leveltype="form" alternatetoccaption="Form 1.1 Deed of Appointment of Receiver" includeintoc="false"&gt;
  &lt;ref:anchor id="HWINSOLV-FORMS-AND-PRECEDENTS-F1-1" anchortype="global"/&gt;
  &lt;heading&gt;
   &lt;desig&gt;Form 1.1&lt;/desig&gt;
   &lt;title&gt;Deed of Appointment of Receiver&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/admindoc:level&gt;
&lt;/admindoc:bodytext&gt;

              	</pre>
              	<note>Refer "common_rosetta_refpt" for handling of <sourcexml>refpt</sourcexml>.</note>
              </li>
         			<li> The first occurence of <sourcexml>leg:bodytext</sourcexml> <b>becomes</b> <targetxml>admindoc:bodytext</targetxml> and after if <sourcexml>leg:bodytext</sourcexml> has other <sourcexml>leg:bodytext</sourcexml> or <sourcexml>leg:level</sourcexml> as siblings then wrap each of them <targetxml>admindoc:level</targetxml> with <targetxml>@leveltype="unclassified"</targetxml>
         				<pre>
         					<b>Source XML 1</b>
			
&lt;leg:level id="ASC_ARCHIVE.SGM_REL.FRONT_6"&gt;
	&lt;leg:level-vrnt toc-caption="Media Release 05/110 ASIC welcomes financial services refinements proposals paper" 
	subdoc="true" searchtype="LEGISLATION RELEASE" leveltype="release"&gt;
		&lt;leg:heading searchtype="RELEASE-TITLE"&gt;
			&lt;desig&gt;&lt;designum&gt;&lt;refpt type="ext" id="ASCR.MR.MR05-110"&gt;&lt;/refpt&gt;Media Release 05/110&lt;/designum&gt;&lt;/desig&gt;
			&lt;title&gt;ASIC welcomes financial services refinements proposals paper&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;leg:levelbody&gt;
			&lt;leg:bodytext&gt;
				&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;amp;nbsp;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;

			&lt;leg:bodytext&gt;
				&lt;p&gt;&lt;text&gt;&amp;amp;ldquo;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;
		&lt;/leg:levelbody&gt;
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

         				</pre>
         				<pre>
         					<b>Target XML 1</b>

&lt;admindoc:level xml:id="ASC_ARCHIVE.SGM_REL.FRONT_6" leveltype="instrument" includeintoc="true" alternatetoccaption="Media Release 05/110 ASIC welcomes financial services refinements proposals paper"&gt;
 &lt;ref:anchor id="ASCR.MR.MR05-110" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;desig&gt;Media Release 05/110&lt;/desig&gt;
  &lt;title&gt;ASIC welcomes financial services refinements proposals paper&lt;/title&gt;
 &lt;/heading&gt;
 &lt;admindoc:bodytext&gt;
  &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;amp;#x00A0;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
 &lt;/admindoc:bodytext&gt;
 &lt;admindoc:level leveltype="unclassified"&gt;
  &lt;admindoc:bodytext&gt;
   &lt;p&gt;&lt;text&gt;&amp;amp;#x201C;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
  &lt;/admindoc:bodytext&gt;
 &lt;/admindoc:level&gt;
&lt;/admindoc:level&gt;

         				</pre>
         			</li>
         		</ul>
         	</li>
         </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Regulatory-From-Services-leg.levelbody.dita  -->
	
	<xsl:template match="leg:levelbody[not(ancestor::leg:comntry or ancestor::legfragment)]">
		<xsl:for-each select="*">
			<xsl:choose>
				<xsl:when test="self::leg:bodytext and preceding-sibling::leg:bodytext">
						<admindoc:level leveltype="unclassified">
							<xsl:apply-templates select="."/>
						</admindoc:level>					
				</xsl:when>				
				<xsl:otherwise>
					<xsl:apply-templates select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="leg:levelbody[ancestor::leg:comntry or ancestor::legfragment]">
		<xsl:apply-templates/>
	</xsl:template>
	
	
	<xsl:template match="leg:bodytext[not(ancestor::leg:comntry or ancestor::legfragment)]" priority="35">
		<xsl:for-each-group select="*" group-adjacent="if (self::leg:comntry) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=0">
					<xsl:apply-templates select="current-group()"/>
				</xsl:when>
				<xsl:otherwise>
					<admindoc:bodytext>
						<xsl:apply-templates select="current-group()"/>
					</admindoc:bodytext>
				</xsl:otherwise>
			</xsl:choose>			
		</xsl:for-each-group>			
	</xsl:template>
	
		<xsl:template match="leg:bodytext[ancestor::leg:comntry or ancestor::legfragment]">
			<primlaw:bodytext>				
				<xsl:apply-templates/>
			</primlaw:bodytext>	
		</xsl:template>
</xsl:stylesheet>