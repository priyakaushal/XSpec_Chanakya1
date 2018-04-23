<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08_OPDOC_Regulation-copyright-Target">
		<title>Target XML: <sourcexml>copyright</sourcexml></title>
		<body>
			<codeblock> &lt;regulation:body&gt; &lt;!-- ETC. --&gt;
				&lt;/regulation:body&gt; &lt;doc:metadata&gt; &lt;!-- ETC. --&gt;
				&lt;pubinfo:pubinfo&gt; &lt;copyright&gt;© European Union,
				http://eur-lex.europa.eu/, 1998-2015&lt;/copyright&gt;
				&lt;/pubinfo:pubinfo&gt; &lt;/doc:metadata&gt; </codeblock>
			<note>If <sourcexml>leg:endmatter</sourcexml> has contain only in
					<sourcexml>copyright</sourcexml> element, then
					<sourcexml>leg:endmatter</sourcexml> and other children will be
				suppressed in NL conversion.</note>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-copyright-target.dita  -->

</xsl:stylesheet>
