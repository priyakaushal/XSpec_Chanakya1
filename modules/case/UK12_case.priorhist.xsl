<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_case.priorhist">
		<title>case:priorhist <lnpid>id-UK12-29838</lnpid>
		</title>
		<body>
			<section>
				<p>The element <sourcexml>case:headnote/case:priorhist</sourcexml> becomes
						<targetxml>courtcase:head/casehist:casehist/casehist:priorhist/casehist:summary</targetxml>
					with the elements <targetxml>casehist:casehist</targetxml> and
						<targetxml>casehist:priorhist</targetxml> created as containers for
						<targetxml>casehist:summary</targetxml>. The child elements of
						<sourcexml>case:priorhist</sourcexml> are converted as described in the
						<b>"General Markup"</b> section.</p>
			</section>
			<example>
				<title>Source XML </title>
				<codeblock>
					<![CDATA[
<case:priorhist>
  <p>
    <text>[1] This notice announces an immediate change in the way patent examiners will assess whether inventions are for patentable subject matter. The change results from the recent judgment of the Court of Appeal in the matters of Aerotel Ltd v Telco Holdings Ltd; Re Macrossans Application...</text>
  </p>
  ...
</case:priorhist>
]]>
				</codeblock>
				<title>Target XML </title>
				<codeblock>
					<![CDATA[
<casehist:casehist>
  <casehist:priorhist>
    <casehist:summary>
      <p>
          <text>[1] This notice announces an immediate change in the way patent examiners will assess whether inventions are for patentable subject matter. The change results from the recent judgment of the Court of Appeal in the matters of Aerotel Ltd v Telco Holdings Ltd; Re Macrossans Application...</text>
      </p>
      ...
    </casehist:summary>
  </casehist:priorhist>
</casehist:casehist>
]]>
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2017-04-24: <ph id="change_20170424_RS">Created. VSTS Issue 272255</ph></p>
			</section>
		</body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_case.priorhist.dita -->
	<!--	<xsl:message>UK12_case.priorhist.xsl requires manual development!</xsl:message> -->

<!--Vikas Rohilla :created the template-->
	<xsl:template match="case:priorhist">
		<casehist:casehist>
			<casehist:priorhist>
				<casehist:summary>
					<xsl:apply-templates select="@*|node()"/>
				</casehist:summary>
			</casehist:priorhist>
		</casehist:casehist>
	</xsl:template>






</xsl:stylesheet>
