<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
   <title>case:references <lnpid>id-AU09-19610</lnpid></title>
   <body>
      <section>
        <ul>
         <li>
                    <sourcexml>case:references</sourcexml> becomes
                        <targetxml>casedigest:head/ref:relatedrefs</targetxml>
                    <p>With the exception of <sourcexml>heading</sourcexml>, every child of
                            <sourcexml>case:references</sourcexml> should be mapped to
                            <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
                    <pre>

&lt;case:references&gt;
    &lt;page reporter="ald" count="213" text="90 ALD 212 at " subdoc="true"/&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
                &lt;ci:content&gt;(CTH) &lt;citefragment searchtype="LEG-NAME-REF"&gt;Social Security Act
                    1991&lt;/citefragment&gt;
                    &lt;citefragment searchtype="CI-LEG-LAWNUM"&gt; ss 17(1), &lt;/citefragment&gt;
                    &lt;citefragment searchtype="CI-LEG-LAWNUM"&gt;17(3), &lt;/citefragment&gt;
                    &lt;citefragment searchtype="CI-LEG-LAWNUM"&gt;1170, &lt;/citefragment&gt;
                    &lt;citefragment searchtype="CI-LEG-LAWNUM"&gt;1184&lt;/citefragment&gt;. &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:references&gt;



<b>Becomes:</b>
 
 
&lt;casedigest:head&gt;
    &lt;ref:relatedrefs&gt;
        &lt;ref:page page-scheme="ald" num="213" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;lnci:cite type="legislation"&gt;
                        &lt;lnci:content&gt;(CTH) Social Security Act 1991 ss 17(1), 17(3), 1170, 1184. &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/ref:relatedrefs&gt;
&lt;/casedigest:head&gt;

          </pre>    
                </li>
        </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\case.references.dita  -->
	<!--<xsl:message>AU09_case_digest_case.references.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:references">
			<ref:relatedrefs>
			    <xsl:if test="child::heading | child::page">
			        <xsl:apply-templates select="heading | page"/>
			    </xsl:if>
			    <bodytext>
    				<xsl:apply-templates select="@* | node() except (child::p | child::heading)"/>
			    </bodytext>
			</ref:relatedrefs>
	</xsl:template>
</xsl:stylesheet>