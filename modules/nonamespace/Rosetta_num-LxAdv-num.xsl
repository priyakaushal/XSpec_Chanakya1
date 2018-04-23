<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  version="2.0" exclude-result-prefixes="dita">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_num-to-LexisAdvance_num">
	  <title><sourcexml>num</sourcexml> to <targetxml>num</targetxml>
    <lnpid>id-CCCC-10406</lnpid></title><body><section>
      <p><sourcexml>num</sourcexml> becomes <targetxml>num</targetxml>
      </p>
    </section><example>
      <title>Source XML</title>
      <codeblock>

&lt;h align="left"&gt;
&lt;num&gt;103&lt;/num&gt;
&lt;emph typestyle="bf"&gt;Introduction&lt;/emph&gt;
&lt;/h&gt;

	</codeblock>
    </example><example>
      <title>Target XML</title>
      <codeblock>

&lt;h align="left"&gt;
&lt;num&gt;103&lt;/num&gt;
&lt;emph typestyle="bf"&gt;Introduction&lt;/emph&gt;
&lt;/h&gt;

	</codeblock>
    </example><section>
      <title>Changes</title>
    </section></body>	</dita:topic>


        <!-- PS: templated created for num conversion -->
        <xsl:template match="num">
          <num xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="node()"/>
          </num>
        </xsl:template>
  <!-- Awnatika:2017-11-20- Webstar# 7043263- Suppressed @searchtype. -->
      
  <xsl:template match="num/@searchtype"/>
      
</xsl:stylesheet>