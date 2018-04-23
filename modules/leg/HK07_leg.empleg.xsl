<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK07_leg.empleg">
  <title><sourcexml>leg:empleg</sourcexml> <lnpid>id-HK07-37413</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:empleg</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>.
        In the source document, element <sourcexml>leg:empleg</sourcexml> occurs in two scenarios:
          <ul>
            <li><sourcexml>level/heading/leg:empleg</sourcexml> becomes
              <targetxml>form:form/form:document/form:info/primlaw:authority/primlaw:authority-item/textitem</targetxml>.
              <note>The
                <targetxml>form:info/primlaw:authority/primlaw:authority-item/textitem</targetxml>
              will be sibling and must occur in the output immediately after a
                <targetxml>heading</targetxml>. </note></li>
          </ul>
      </p>
      <pre>
&lt;leg:heading&gt;
    &lt;leg:empleg&gt;[r. 2]&lt;/leg:empleg&gt;
    &lt;title&gt;FIRST SCHEDULE&lt;/title&gt;
&lt;/leg:heading&gt;
      </pre>
      <p><b>becomes</b></p>
      <pre>
&lt;heading&gt;
    &lt;title&gt;FIRST SCHEDULE&lt;/title&gt;
&lt;/heading&gt;
&lt;primlaw:authority&gt;
    &lt;primlaw:authority-item&gt;
        &lt;textitem&gt;[r. 2]&lt;/textitem&gt;
    &lt;/primlaw:authority-item&gt;
&lt;/primlaw:authority&gt;
      </pre>
    </section>
    <section>
      <title>Change Log</title>
      <p>2016-04-12: <ph id="change_20160412_PS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK07_Commentary\HK07_leg.empleg.dita  -->
	

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

	<xsl:template match="level/heading/leg:empleg">

		<!--  Original Target XPath:  form:form/form:document/form:info/primlaw:authority/primlaw:authority-item/textitem   -->
		<form:form>
			<form:document>
				<form:info>
					<primlaw:authority>
						<primlaw:authority-item>
							<textitem>
								<xsl:apply-templates select="@* | node()"/>
							</textitem>
						</primlaw:authority-item>
					</primlaw:authority>
				</form:info>
			</form:document>
		</form:form>

	</xsl:template>

</xsl:stylesheet>