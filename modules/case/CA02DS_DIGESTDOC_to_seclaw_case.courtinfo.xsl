<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
  version="2.0" exclude-result-prefixes="dita case">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtinfo">
    <title>case:courtinfo <lnpid>id-CA02DS-12814</lnpid></title>
    <body>
      <section>
        <ul>
          <li>
            <sourcexml>case:courtinfo</sourcexml> becomes <targetxml>jurisinfo:courtinfo</targetxml>
            <pre>
&lt;case:courtinfo&gt;
    ..........
    ..........
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    ..........
    ..........
&lt;/jurisinfo:courtinfo&gt;</pre>
          </li>
        </ul>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtinfo.dita  -->

  <!-- Vikas Rohilla : Template to match the case:courtinfo -->
  <xsl:template match="case:courtinfo">
    <jurisinfo:courtinfo>
      <xsl:apply-templates select="case:courtcode,case:courtname,case:juris"/>
    </jurisinfo:courtinfo>
    <xsl:apply-templates select="node()[name() != 'case:courtcode'][name() != 'case:courtname'][name() != 'case:juris'][name() != 'abbrvname']"/>
  </xsl:template>


</xsl:stylesheet>