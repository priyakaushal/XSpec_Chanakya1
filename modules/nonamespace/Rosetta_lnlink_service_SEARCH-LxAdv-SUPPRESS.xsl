<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
  exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_SEARCH-to-LexisAdvance_SUPPRESS">
  <title><sourcexml>lnlink[@service='SEARCH']</sourcexml> is SUPPRESSED <lnpid>id-CCCC-10397</lnpid></title>
  <body>
    <section>
    <p>When <sourcexml>lnlink[@service="SEARCH"]</sourcexml> occurs it is suppressed. The service type "SEARCH" is not supported in New Lexis. It is recommended that <sourcexml>lnlink</sourcexml> elements with <sourcexml>@service="SEARCH"</sourcexml> be copied as is into an XML comment. This retains the content for future analysis without creating unsupported target markup. The risk of this approach is the non-conversion of any marker/display text that is within the <sourcexml>lnlink</sourcexml> and the consequent lack of this text being displayed in NewLexis products.
    </p>
    </section>
    
        <example>
            <title>Source XML showing service type "SEARCH" converted to XML comment.</title>
            <codeblock>

&lt;lnlink scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name" service="SEARCH" status="valid"&gt;
	&lt;api-params&gt;
		&lt;param name="expressSearch" value="true"/&gt;
		&lt;param name="searchString" value="ELECTRICITY SAFETY ACT 1998 w/s LEG-REF(1)"/&gt;
	&lt;/api-params&gt;
&lt;/lnlink&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>


&lt;!--  lnlink[@service="SEARCH"] source:

&lt;lnlink scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name" service="SEARCH" status="valid"&gt;
	&lt;api-params&gt;
		&lt;param name="expressSearch" value="true"/&gt;
		&lt;param name="searchString" value="ELECTRICITY SAFETY ACT 1998 w/s LEG-REF(1)"/&gt;
	&lt;/api-params&gt;
&lt;/lnlink&gt;

--&gt;


	</codeblock>
        </example>
    <section>
      <title>Changes</title>
      <p>2015-09-08: <ph id="change_20150908_SNB">Minor XPATH correction in instruction title and body to change 
        <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita  -->

	<xsl:template match="lnlink[@service='SEARCH']">
	<xsl:comment>
		<xsl:copy-of select="."/>
	</xsl:comment>		
	</xsl:template>

	
</xsl:stylesheet>