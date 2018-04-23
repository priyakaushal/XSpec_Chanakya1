<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcode">
   <title>case:courtcode <lnpid>id-CA02CC-12414</lnpid></title>
   <body>
      <section>
<ul>
  <li>
                    <sourcexml>case:courtcode</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the attributes
                    will be populated as <targetxml>@name="case:courtcode"</targetxml> and
                        <targetxml>@value</targetxml> will be the value of
                        <sourcexml>case:courtcode</sourcexml>. <!--<note>From now
      onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under
      <targetxml>casedigest:head</targetxml> and not in
      <targetxml>casedigest:body</targetxml> and rest all converion scenarios
      will remain same. Please see below target examples for more details.</note>-->
                    <pre>
&lt;case:courtinfo&gt;
  &lt;case:courtcode&gt;NFSC&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="NFSC"&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
</pre>
                    <!--<note>For handling @ln.user-displayed attribute, please refer to <xref
                            href="../../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita"
                            >Rosetta_case.courtcode_ln.user-displayed</xref> in General Markup
                        section of the CI.</note>-->
                </li>
  
      </ul>
</section>
      <section>
          <title>Changes</title>
		  <p>2014-03-26: <ph id="change_20140326_SEP">Removed ambiguity caused by the note beginning "From now onwards..."<b>DB item # 145</b></ph></p>          
          <p>2014-11-11: <ph id="change_20141111_AS">Updated the mapping for
                        <sourcexml>case:courtcode</sourcexml>, schema issue for
                    jurisinfo:alternatecourtcode....Db issue #361 </ph></p>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.courtcode.dita  -->
	
<!-- Sudhanshu Srivastava edited on 16-May-2017. -->
	<!--<xsl:template match="case:courtcode">
		<!-\-  Original Target XPath:  doc:legacy-metadata/meta/metaitem   -\->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
				    <xsl:attribute name="name" select="'case:courtcode'"/>
				    <xsl:attribute name="value" select="."/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>
	</xsl:template>-->
</xsl:stylesheet>