<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_docinfo-normcite">
 <title>docinfo:normcite <lnpid>id-PH03-34607</lnpid></title>
 <body>
  <p><sourcexml>docinfo:normcite</sourcexml> becomes <targetxml>admindoc:head/ref:citations/ref:cite4thisresource/@citetype="normcite"</targetxml></p>
  <section>
   <title>Source XML</title>
   <pre>
   
    &lt;docinfo:normcite&gt;
            &lt;ci:cite searchtype="LEG-REF" type="cite4thisdoc"&gt;
                &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                        &lt;ci:jurisinfo&gt;
                            &lt;ci:my/&gt;
                        &lt;/ci:jurisinfo&gt;
                        &lt;ci:hier&gt;
                            &lt;ci:hierlev label="act" num="AO0001y1986"/&gt;
                        &lt;/ci:hier&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="PHILPI"/&gt;
                    &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;ADMINISTRATIVE ORDER NO. 1 CREATING A PRESIDENTIAL FACT-FINDING
                    COMMITTEE TO INVESTIGATE THE MANILA HOTEL INCIDENT ON JULY 6-8,
                    1986&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/docinfo:normcite&gt;
   
   </pre>
  </section>
  <p>Becomes</p>
  <section>
   <title>Target XML</title>
   <pre>
   
&lt;admindoc:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="normcite"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:sesslaw&gt;
                    &lt;lnci:sesslawinfo&gt;
                        &lt;lnci:jurisinfo&gt;
                            &lt;lnci:my/&gt;
                        &lt;/lnci:jurisinfo&gt;
                        &lt;lnci:hier&gt;
                            &lt;lnci:hierlev label="act" num="AO0001y1986"/&gt;
                        &lt;/lnci:hier&gt;
                    &lt;/lnci:sesslawinfo&gt;
                    &lt;lnci:sesslawref&gt;
                        &lt;lnci:standardname normpubcode="PHILPI"/&gt;
                    &lt;/lnci:sesslawref&gt;
                &lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;ADMINISTRATIVE ORDER NO. 1 CREATING A PRESIDENTIAL FACT-FINDING
                    COMMITTEE TO INVESTIGATE THE MANILA HOTEL INCIDENT ON JULY 6-8,
                    1986&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/admindoc:head&gt;
   
   
   </pre>
  </section>
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_docinfo-normcite.dita  -->
	<xsl:message>GPL_PH03_docinfo-normcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:normcite">

		<!--  Original Target XPath:  admindoc:head/ref:citations/ref:cite4thisresource/@citetype="normcite"   -->
		<admindoc:head>
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<xsl:attribute name="citetype">
						<xsl:text>normcite</xsl:text>
					</xsl:attribute>
				</ref:cite4thisresource>
			</ref:citations>
		</admindoc:head>

	</xsl:template>

</xsl:stylesheet>