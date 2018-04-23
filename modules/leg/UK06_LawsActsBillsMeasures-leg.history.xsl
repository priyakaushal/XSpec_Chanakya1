<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.history">
  <title>leg:history <lnpid>id-UK06-28024</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:history</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem</targetxml> and child elements includes:
          <ul>
              <li><sourcexml>leg:history/p/text</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml></li>
          </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.history.dita  -->
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is content specific module handling leg:history.
	-->	

	<xsl:template match="leg:history">
		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
					<xsl:apply-templates select="node()"/>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>
	</xsl:template>
</xsl:stylesheet>