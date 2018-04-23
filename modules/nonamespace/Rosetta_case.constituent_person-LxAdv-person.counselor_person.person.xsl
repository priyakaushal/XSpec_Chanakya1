<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.constituent_person-to-LexisAdvance_person.counselor_person.person">
    <title><sourcexml>case:constituent/person</sourcexml> to <targetxml>person:counselor/person:person</targetxml> <lnpid>id-CCCC-10256</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:constituent/person</sourcexml> becomes
                    <targetxml>person:counselor/person:person</targetxml>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:constituent&gt;
     &lt;role&gt;Respondent's Counsel:&lt;/role&gt; 
     &lt;person&gt;
         &lt;name.text&gt;B Keith and V A Cochrane&lt;/name.text&gt;
     &lt;/person&gt;
 &lt;/case:constituent&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;courtcase:counsel&gt;
     &lt;role&gt;Respondent's Counsel:&lt;/role&gt;
     &lt;person:counselor&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;B Keith and V A Cochrane&lt;/person:name.text&gt;
        &lt;/person:person&gt;
     &lt;/person:counselor&gt;
&lt;/courtcase:counsel&gt;

	</codeblock>
        </example>       
        <section>
            <title>Changes</title>
            <p>2011-08-23: Created.</p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_case.constituent_person-LxAdv-person.counselor_person.person.dita  -->
	
	
    <!-- Vikas Rohilla : Initial updated may be changed if required-->
	<xsl:template match="case:constituent/person">
		<person:counselor>
			<person:person>
				<xsl:apply-templates select="@* | node()"/>
			</person:person>
		</person:counselor>
	</xsl:template>

</xsl:stylesheet>