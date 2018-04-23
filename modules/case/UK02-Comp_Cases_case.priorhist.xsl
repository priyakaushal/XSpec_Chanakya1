<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.priorhist">
		<title>case:priorhist <lnpid>id-UK02-27229</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:priorhist</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:compositecourtcase/compcase:head/casehist:casehist/casehist:priorhist/casehist:summary</targetxml>.
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:priorhist&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Application&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt;Application by Mr Allen Horn that, a compulsory
					purchase order made by the Sunderland Corporation and confirmed by the
					Minister of Health should be quashed. On 14 August 1935, the
					corporation made a compulsory purchase order under the Housing Act
					1925, s 64, by which &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/case:priorhist&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;casehist:casehist&gt; &lt;casehist:priorhist&gt;
					&lt;casehist:summary&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Application&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt;Application by Mr Allen Horn that, a compulsory
					purchase order made by the Sunderland Corporation and confirmed by the
					Minister of Health should be quashed. On 14 August 1935, the
					corporation made a compulsory purchase order under the Housing Act
					1925, s 64, by which &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/casehist:summary&gt; &lt;/casehist:priorhist&gt;
					&lt;/casehist:casehist&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.priorhist.dita  -->

	<xsl:template match="case:priorhist">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casehist:casehist/casehist:priorhist/casehist:summary   -->
		<casehist:priorhist
			xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/">
			<casehist:summary>
				<xsl:apply-templates select="@* | node()"/>
			</casehist:summary>
		</casehist:priorhist>
	</xsl:template>

</xsl:stylesheet>
