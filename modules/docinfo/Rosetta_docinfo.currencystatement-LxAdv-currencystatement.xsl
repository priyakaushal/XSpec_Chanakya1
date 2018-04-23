<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.currencystatement-to-LexisAdvance_currencystatement">
    <title><sourcexml>docinfo:currencystatement</sourcexml> to
            <targetxml>doc:docinfo/currencystatement</targetxml> <lnpid>id-CCCC-10289</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p>The source element<sourcexml>docinfo:currencystatement</sourcexml> becomes <targetxml>doc:docinfo/currencystatment</targetxml>. </p>
            <note>Conversion needs to suppress <sourcexml>docinfo:currencystatement</sourcexml> when it's the child of <sourcexml>leg:levelinfo</sourcexml> and  <sourcexml>levelinfo</sourcexml>. This will be applicable to all <b>Pacific Content Streams</b>.</note>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>
            
                &lt;docinfo:currencystatement&gt;Consolidated as in force on &lt;date&gt;10 September 2012&lt;/date&gt;&lt;/docinfo:currencystatement&gt;
            
	       </codeblock>
        </example>
        <example>
          <title>Target XML</title>
          <codeblock>
            
                &lt;doc:docinfo&gt;
                    &lt;currencystatement&gt;Consolidated as in force on &lt;date&gt;10 September 2012&lt;/date&gt;&lt;/currencystatement&gt;
                &lt;/doc:docinfo&gt;
            
	      </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-09: <ph id="change_20130409_WLL">Created</ph></p>
            <p>2013-06-25: <ph id="change_20130625_WLL">added to AU and NZ ditamap for content enrichment</ph></p>
            <p>2013-09-16: <ph id="change_20130916_VV">Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and  <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</ph></p>
            <p>2013-09-16: <ph id="change_20131029_AB">WebTeam <b>#233318</b> created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="docinfo:currencystatement[not(parent::leg:levelinfo | parent::levelinfo)]">

		<!--  Original Target XPath:  doc:docinfo/currencystatement   -->
	    <currencystatement xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</currencystatement>		

	</xsl:template>

    <xsl:template match="leg:levelinfo/docinfo:currencystatement | leg:levelinfo/docinfo:currencystatement/contrib | levelinfo/docinfo:currencystatement"/>

</xsl:stylesheet>