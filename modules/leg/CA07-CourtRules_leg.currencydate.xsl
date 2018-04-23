<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.currencydate">
  <title>leg:currencydate <lnpid>id-CA07-14011</lnpid></title>
  <body>
   
   
        <p><sourcexml>leg:currencydate</sourcexml> with it's child <sourcexml>remotelink</sourcexml>
            and it's contnent will be suppressed in target conversion.</p>
      
      <example>
          <title>Source XML</title>
          <codeblock>

&lt;leg:dates&gt;
    &lt;leg:currencydate&gt;
        &lt;remotelink dpsi="03J4" remotekey1="DOC-ID" remotekey2="currentness" service="DOC-ID" xml:lang="fr"&gt;À&amp;#x20;jour&amp;#x20;en&amp;#x20;date&amp;#x20;du&amp;#x20;20&amp;#x20;juin&amp;#x20;2012&lt;/remotelink&gt;
    &lt;/leg:currencydate&gt;
&lt;/leg:dates&gt;

    </codeblock>
      </example>
      
      <example>
          <title>Target XML</title>
          <codeblock>

    &lt;!-- Suppressed in output --&gt;

    </codeblock>
      </example>
        <!--  As per the (R4.5 Content Issue List: Remove currencystatement from legislation docs ) #1760 remove output markup of leg:currencydate from conversion -->
      <!-- <section>
          <p><sourcexml>leg:dates/leg:currencydate</sourcexml> becomes <targetxml>primlaw:prelim/note/currencystatement</targetxml></p> 
        <note>DPSI value must be taken from manifest file and should be used in target documents.</note>
        <note>For handling <sourcexml>remotelink</sourcexml> refer <xref
            href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
            >Remotelink</xref> section in CI but drop the attribute with value
            <targetxml>ref:crossreference@crossreferencetype="seeAlso"</targetxml> in target
            markup and this rule is applicable for scenario
            "<sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml>".</note>
    </section>
      
      <example>
          <title>Source XML</title>
          <codeblock>
<![CDATA[
<leg:dates>
    <leg:currencydate>
        <remotelink dpsi="03J4" remotekey1="DOC-ID" remotekey2="currentness" service="DOC-ID" xml:lang="fr">À&#x20;jour&#x20;en&#x20;date&#x20;du&#x20;20&#x20;juin&#x20;2012</remotelink>
    </leg:currencydate>
</leg:dates>
]]>
    </codeblock>
      </example>
      
      <example>
          <title>Target XML</title>
          <codeblock>
<![CDATA[
<primlaw:prelim>
    <note>
        <currencystatement>            
            <ref:crossreference>
                <ref:content xml:lang="fr">À&#x20;jour&#x20;en&#x20;date&#x20;du&#x20;20&#x20;juin&#x20;2012</ref:content>
                <ref:locator>
                    <ref:locator-key>
                        <ref:key-name name="DOC-ID"/>
                        <ref:key-value value="03J4-currentness"/>
                    </ref:locator-key>
                </ref:locator>
            </ref:crossreference>
        </currencystatement>
    </note>
</primlaw:prelim>
]]>
    </codeblock>
      </example>
      
       -->
      
      <section>
          <title>Changes</title>
          <p>2014-07-25: <ph id="change_20140725_SSX">Added instruction to suppress target markup of
                        <sourcexml>leg:currencydate</sourcexml> with it's child
              <sourcexml>remotelink</sourcexml> from conversion Webteam # 271366.</ph></p>
          <p>2013-03-20: <ph id="change_20130320_SP">Added attribute <targetxml>crossreferencetype="seeAlso"</targetxml> to the target example.</ph></p>
          <p>2013-05-07: <ph id="change_20130507_SP">Updated example and rule for handling of
              <sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml></ph>.</p>
      </section>
      
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.currencydate.dita  -->

    <xsl:template match="leg:currencydate"/>
    <xsl:template match="remotelink [child::leg:currencydate]"/>
	
	

</xsl:stylesheet>