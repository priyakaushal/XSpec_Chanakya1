<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.sectionlist">
 <title>leg:sectionlist <lnpid>id-UK22CS-36420</lnpid></title>
 <body>
  <section>
   <p>
    <ul>
     <li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> appearing within
        <sourcexml>leg:info</sourcexml></b>: <ul>
       <li>Then <sourcexml>leg:sectionlist</sourcexml> becomes
         <targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml>. </li>
      </ul></li>
    </ul>
   </p>
      <note>For <sourcexml>leg:sectionlist/toc</sourcexml> becomes 
          <targetxml>primlaw:level[@leveltype="table-of-contents"]/primlaw:bodytext/toc</targetxml></note>
  </section>
  <example>
   <codeblock>
&lt;legfragment&gt;
        &lt;leg:info&gt;
            &lt;leg:officialname&gt;Model convention with respect to taxes on income and on
                capital&lt;/leg:officialname&gt;
            &lt;leg:sectionlist&gt;
                &lt;toc&gt;
                    &lt;toc-entry&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Title and Preamble&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;toc-entry&gt;
                            &lt;heading&gt;
                                &lt;desig&gt;
                                    &lt;designum&gt;Chapter I&lt;/designum&gt;
                                &lt;/desig&gt;
                                &lt;title&gt;Scope of the Convention&lt;/title&gt;
                            &lt;/heading&gt;
                        &lt;/toc-entry&gt;
                    &lt;/toc-entry&gt;
                &lt;/toc&gt;
            &lt;/leg:sectionlist&gt;
        &lt;/leg:info&gt;
    &lt;/legfragment&gt;

   </codeblock>
   <b>Becomes</b>
   <codeblock>

&lt;primlaw:excerpt&gt;
        &lt;primlaw:level&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;Model convention with
                            respect to taxes on income and on capital&lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
            &lt;primlaw:level leveltype="table-of-contents"&gt;
              &lt;primlaw:bodytext&gt;
                &lt;toc&gt;
                    &lt;toc-entry&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Title and Preamble&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;toc-entry leveltype="table-of-contents"&gt;
                            &lt;heading&gt;
                                &lt;desig&gt;Chapter I&lt;/desig&gt;
                                &lt;title&gt;Scope of the Convention&lt;/title&gt;
                            &lt;/heading&gt;
                        &lt;/toc-entry&gt;
                    &lt;/toc-entry&gt;
                &lt;/toc&gt;
              &lt;primlaw:bodytext&gt;
            &lt;/primlaw:level&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:excerpt&gt;

   </codeblock>
  </example>
  <section>
   <title>Changes</title>
      <p>2016-02-04: <ph id="change_20160204_HP">Added a note for handling input scenario
                        <sourcexml>leg:sectionlist/toc</sourcexml> to
                        <targetxml>primlaw:level/primlaw:bodytext/toc</targetxml>. [<b>RFA
                    #2751</b>]</ph></p>
   <p>2015-10-12: <ph id="change_20151012_HP">Created</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\legis-leg.sectionlist.dita  -->
	<xsl:message>UK22CS_legis-leg.sectionlist.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:sectionlist/toc">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]/primlaw:bodytext/toc   -->
		<primlaw:level>
			<primlaw:bodytext>
				<toc>
					<xsl:apply-templates select="@* | node()"/>
				</toc>
			</primlaw:bodytext>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>