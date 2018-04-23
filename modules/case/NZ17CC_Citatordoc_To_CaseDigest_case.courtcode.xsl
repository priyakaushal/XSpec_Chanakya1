<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcode">
   <title>case:courtcode <lnpid>id-NZ17CC-25809</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> and
          create <targetxml class="+ topic/keyword xml-d/targetxml ">doc:legacy-metadata/meta/metaitem</targetxml> and attributes will be populated as
            <targetxml class="+ topic/keyword xml-d/targetxml ">@name="case:courtcode"</targetxml>
          and <targetxml class="+ topic/keyword xml-d/targetxml ">@value</targetxml> will be value of
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>.<pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;
  &lt;case:courtcode ln.user-displayed="false"&gt;NZHC&lt;/case:courtcode&gt; 
&lt;/case:courtinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
            
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZHC"/&gt;
&lt;/jurisinfo:courtinfo&gt;


&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="NZHC"&gt;  
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
</pre>

<note>For more information on handling <b>@ln.user-displayed</b>
             attribute, refer the general markup <xref href="../../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
           
<note class="- topic/note ">The Connector "," between <sourcexml>case:courtname</sourcexml> and <sourcexml>case:courtcode</sourcexml> 
             will be added by the presentation stylesheet and also the ordering of elements will be adjusted by the stylesheet.</note>
           
           <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;High Court&lt;/case:courtname&gt;, 
  &lt;case:courtcode ln.user-displayed="false"&gt;NZHC&lt;/case:courtcode&gt;
  &lt;case:courtloc&gt;Auckland&lt;/case:courtloc&gt;
&lt;/case:courtinfo&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;!--Connector "," and Ordering will be adjusted by presentation stylesheet--&gt;
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZHC"/&gt;            
    &lt;jurisinfo:courtname&gt;High Court&lt;/jurisinfo:courtname&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;location:city&gt;Auckland&lt;/location:city&gt;
        &lt;/jurisinfo:location&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

</pre>         

         </li>  
      </ul>
  </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.courtcode.dita  -->
	
	<xsl:template match="case:courtcode">
	  <jurisinfo:alternatecourtcode>
			<xsl:attribute name="alternatecourtcode">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</jurisinfo:alternatecourtcode>
	</xsl:template>

<!-- metaitem is handled in docinfo module-->

</xsl:stylesheet>