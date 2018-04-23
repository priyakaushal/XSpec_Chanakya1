<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_h-to-LexisAdvance_form_bodytext_h">
 <title><sourcexml>form/bodytext/h</sourcexml> to  <targetxml>form:h</targetxml> <lnpid>id-CCCC-10324</lnpid></title>
 <body>
  <section>
   <p><sourcexml>form/bodytext/h</sourcexml> becomes <targetxml>form:h</targetxml>. The attributes of <sourcexml>h</sourcexml> are handled as follows:<ul>
     <li><sourcexml>h/@l</sourcexml> becomes <targetxml>h/@level</targetxml>.</li>
     <li><sourcexml>h/@align</sourcexml> becomes <targetxml>h/@align</targetxml>. The valid values for <targetxml>h/@align</targetxml> are:<ul>
       <li>"left"</li>
       <li>"right"</li>
       <li>"center"</li>
      </ul></li>
    </ul></p>
  </section>
  <example>
   <title>Source XML</title>
   <codeblock>

&lt;form&gt;
&lt;bodytext searchtype="FORM"&gt;
&lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Constitution of a national organisation with a federal structure for incorporation in New South Wales&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;RULES&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ___________________________________
 Society of Australasia, incorporated&lt;/text&gt;&lt;/p&gt;&lt;h align="left"&gt;Name&lt;/h&gt;
&lt;p&gt;&lt;text&gt;  
 1.    The name of the association is the ___________________ society of Australasia incorporated (&amp;#x2018;the society&amp;#x2019;).&lt;/text&gt;&lt;/p&gt;&lt;h align="left"&gt;Membership&lt;/h&gt;
&lt;p&gt;&lt;text&gt;  
 2.    (1) The members of the society are:&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ______________________________________ society of Australia&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;(New South Wales division) incorporated&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ______________________________________
 society of Australia&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;(Queensland division) incorporated&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ______________________________________
 society of Australia&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;(South Australia) incorporated&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ______________________________________
 society of Australia&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;(Victoria) incorporated&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;The ______________________________________
 society of Australia&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;(Western Australia) incorporated&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;and such other ______________________________________ societies&lt;/text&gt;&lt;/p&gt;
.....
.....
&lt;/bodytext&gt;&lt;/form&gt;

   </codeblock>
   <title>Target XML</title>
   <codeblock>

&lt;form:form&gt;&lt;form:document annotated="true" official="true" typeofdoc="application"&gt;&lt;form:bodytext&gt;&lt;form:p&gt;&lt;form:text&gt;&lt;emph typestyle="bf"&gt;Constitution of a national organisation with a federal structure for incorporation in New South Wales&lt;/emph&gt;&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;RULES&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ___________________________________
                    Society of Australasia, incorporated&lt;/form:text&gt;&lt;/form:p&gt;
                    &lt;form:h align="left"&gt;Name&lt;/form:h&gt;
                    &lt;form:p&gt;&lt;form:text&gt;  
 1.    The name of the association is the ___________________ society of Australasia incorporated (&amp;#x2018;the society&amp;#x2019;).&lt;/form:text&gt;&lt;/form:p&gt;
 &lt;form:h align="left"&gt;Membership&lt;/form:h&gt;
 &lt;form:p&gt;&lt;form:text&gt;  
 2.    (1) The members of the society are:&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ______________________________________ society of Australia&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;(New South Wales division) incorporated&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ______________________________________
                                society of Australia&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;(Queensland division) incorporated&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ______________________________________
                                    society of Australia&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;(South Australia) incorporated&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ______________________________________
                                        society of Australia&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;(Victoria) incorporated&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;The ______________________________________
                                            society of Australia&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;(Western Australia) incorporated&lt;/form:text&gt;&lt;/form:p&gt;&lt;form:p&gt;&lt;form:text&gt;and such other ______________________________________ societies&lt;/form:text&gt;&lt;/form:p&gt;
.....
.....
&lt;/form:bodytext&gt;&lt;/form:document&gt;&lt;/form:form&gt;

	</codeblock>
  </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_form.bodytext_h-LxAdv-form.h.dita  -->
	<!--<xsl:message>Rosetta_form.bodytext_h-LxAdv-form.h.xsl requires manual development!</xsl:message> 
-->
	<xsl:template match="form/bodytext/h">

		<!--  Original Target XPath:  form:h   -->
		<form:h>
			<xsl:apply-templates select="@* | node()"/>
		</form:h>

	</xsl:template>

	<xsl:template match="h">

		<!--  Original Target XPath:  h/@level   -->
		<h>
			<xsl:attribute name="level">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</h>

	</xsl:template>

	<xsl:template match="h/@l">

		<!--  Original Target XPath:  h/@level   -->
		<h>
			<xsl:attribute name="level">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</h>

	</xsl:template>

	<xsl:template match="h/@align">

		<!--  Original Target XPath:  h/@align   -->
		<h>
			<xsl:attribute name="align">
			  <xsl:value-of select="."/>
			</xsl:attribute>
		</h>

	</xsl:template>

</xsl:stylesheet>