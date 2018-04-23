<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_refnum-LxAdv_refnum">
   <title>refnum <lnpid>id-CCCC-12027</lnpid></title>
   <body>
      <section>
         <p><sourcexml>refnum</sourcexml> becomes <targetxml>jurisinfo:courtinfo/refnum</targetxml>.</p>
         <p>The content of <sourcexml>refnum</sourcexml> should become the content of <targetxml>refnum</targetxml>, unless
               <sourcexml>@ln.user-displayed="false"</sourcexml> is present in <sourcexml>refnum</sourcexml>.</p>
         <p>The attributes of <targetxml>refnum</targetxml> are populated as follows:<ul>
               <li><sourcexml>refnum/@refnumtype</sourcexml> becomes <targetxml>refnum/@refnumscheme</targetxml>.</li>
               <li>The content of <sourcexml>refnum</sourcexml> is placed in <targetxml>refnum/@num</targetxml>
                  <i>regardless</i> of the value of <sourcexml>@ln.user-displayed</sourcexml> in the source.</li>
            </ul></p>
      </section>
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> with <sourcexml>@ln.user-displayed="false"</sourcexml></title>
         <codeblock>
&lt;refnum refnumtype="UCN" ln.user-displayed="false"&gt;00770463&lt;/refnum&gt;
           </codeblock>
         <b>becomes</b>
         <codeblock>
&lt;jurisinfo:courtinfo&gt;
   &lt;refnum refnumscheme="UCN" num="00770463"/&gt;
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
      </example>
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> with <sourcexml>@ln.user-displayed="true"</sourcexml></title>
         <codeblock>
&lt;refnum refnumtype="UCN" ln.user-displayed="true"&gt;00770463&lt;/refnum&gt;
           </codeblock>
         <b>becomes</b>
         <codeblock>
&lt;jurisinfo:courtinfo&gt;
   &lt;refnum refnumscheme="UCN" num="00770463"&gt;00770463&lt;/refnum
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
      </example>
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> without <sourcexml>@ln.user-displayed</sourcexml></title>
         <codeblock>
&lt;refnum refnumtype="UCN"&gt;00770463&lt;/refnum&gt;
           </codeblock>
         <b>becomes</b>
         <codeblock>
&lt;jurisinfo:courtinfo&gt;
   &lt;refnum refnumscheme="UCN" num="00770463"&gt;00770463&lt;/refnum
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
      </example>
      <!--<section>
         <title>Changes</title>
         </section>-->
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_refnum-LxAdv_refnum.dita  -->
	<!-- JD: 2017-06-09: initial dev -->

	<xsl:template match="refnum">
		<!--  Original Target XPath:  jurisinfo:courtinfo/refnum   -->
		<jurisinfo:courtinfo>
			<refnum>
				<xsl:apply-templates select="@*"/>
				<xsl:if test="not(@ln.user-displayed='false')">
					<xsl:apply-templates />
				</xsl:if>
			</refnum>
		</jurisinfo:courtinfo>
	</xsl:template>


	<xsl:template match="refnum/@refnumtype">
		<!--  Original Target XPath:  refnum/@refnumscheme   -->
			<xsl:attribute name="refnumscheme">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>