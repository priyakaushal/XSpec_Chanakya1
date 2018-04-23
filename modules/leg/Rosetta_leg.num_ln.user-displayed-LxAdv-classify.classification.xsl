<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification">
  <title>leg:num[@ln.user-displayed="false"] to classify:classification</title>
  <body>
    <section>
		<ul>
			<li> If <sourcexml>leg:info/leg:num</sourcexml> comes with attribute
                        <sourcexml>[@ln.user-displayed="false"]</sourcexml> and the element contains
                    the text "solsak" in rosetta document then only it should be converted in
                        <targetxml>primlawinfo:primlawinfo/classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                    <pre>
            
              <b><i>Example: Source Markup</i></b>

    &lt;leg:num ln.user-displayed="false"&gt;solsak&lt;/leg:num&gt;

</pre>
                    <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;primlawinfo:primlawinfo&gt;
    &lt;classify:classification classscheme="legislation.indicator"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt;solsak&lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
&lt;/primlawinfo:primlawinfo&gt;

          </pre>
                    <note>For <b>CA05, CA06, CA07</b> and <b>CA08</b>: Target conversion requirement
                        for placement of "<b>solsak</b>" (i.e.
                            "<targetxml>classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>")
                        should be placed just above the first
                            <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
                        instead of the last element in the <targetxml>*:head</targetxml> section and
                        create the single <targetxml>primlawinfo:primlawinfo</targetxml> for capture
                        the both markup. Refer the below examples:</note>
                    <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:info subseqdoc="true"&gt;
    &lt;!--....--&gt;
    &lt;leg:num ln.user-displayed="false"&gt;solsak&lt;/leg:num&gt; 
    &lt;leg:officialname&gt;Statute Law Revision Act, 1893&lt;/leg:officialname&gt; 
    &lt;leg:officialnum&gt;56-57 Victoria, c. 14 (U.K.)&lt;/leg:officialnum&gt; 
    &lt;leg:officialnum&gt;[Reprinted in R.S.C. 1985, App. II, No. 17]&lt;/leg:officialnum&gt; 
    &lt;leg:officialnum&gt;[9th June 1893]&lt;/leg:officialnum&gt; 
    &lt;!--....--&gt; 
&lt;/leg:info&gt;

</pre>
                    <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;legis:head&gt;
    &lt;!--....--&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;classify:classification classscheme="legislation.indicator"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;solsak&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:names&gt;
                &lt;legisinfo:officialtitle&gt;Statute Law Revision Act, 1893&lt;/legisinfo:officialtitle&gt;
            &lt;/legisinfo:names&gt;
        &lt;/legisinfo:legisinfo&gt;
        &lt;primlawinfo:identifier idtype="officialnum"&gt;R.S.C. 1985, App. II, No. 17&lt;/primlawinfo:identifier&gt;
        &lt;primlawinfo:identifier idtype="officialnum"&gt;9th June 1893&lt;/primlawinfo:identifier&gt;
    &lt;/primlawinfo:primlawinfo&gt;
    &lt;!--....--&gt;
&lt;/legis:head&gt;

          </pre>
                </li>
		</ul>
    </section> 
    
    <section>
        <title>Changes</title>
        <p>2014-08-01: <ph id="change_20140801_ss">Updated the note with example for handling
                        "<b>solsak</b>" scenario means it should be placed above the first
                        <targetxml>legisinfo:officialtitle</targetxml> instead of the last element
                    in the <targetxml>*:head</targetxml> section</ph>.</p>
        <p>2014-07-30: <ph id="change_20140730_ss">Added a note for handling "<b>solsak</b>"
                    scenario means it should be placed above the first
                        <targetxml>legisinfo:officialtitle</targetxml> instead of the last element
                    in the <targetxml>*:head</targetxml> section</ph>.</p>
        <p>2013-04-10: <ph id="change_20130410_ss">Updated the <b>note</b> for handling of
            leg:num/@ln.user-displayed="false"</ph>.</p>
        <p>2013-03-14: <ph id="change_20130314_vv">Updated instruction and example for handling of
            leg:num/@ln.user-displayed="false"</ph>.</p>
        <p>2013-01-09: <ph id="change_20130109_jd">Updated instructions to eliminate any confusion</ph>.</p>
    </section>
      
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita  -->
	<!--<xsl:message>Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.xsl requires manual development!</xsl:message> 
-->
	<xsl:template match="leg:info/leg:num">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<!--<primlawinfo:primlawinfo>-->
			<classify:classification>
				<classify:classitem>
					<classify:classitem-identifier>
						<classify:classname>
							<xsl:apply-templates select="@* | node()"/>
						</classify:classname>
					</classify:classitem-identifier>
				</classify:classitem>
			</classify:classification>
		<!--</primlawinfo:primlawinfo>-->

	</xsl:template>

    <xsl:template match="leg:info/leg:num[@ln.user-displayed = &#34;false&#34;]">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<primlawinfo:primlawinfo>
			<classify:classification>
				<classify:classitem>
					<classify:classitem-identifier>
						<classify:classname>
							<xsl:apply-templates select="@* | node()"/>
						</classify:classname>
					</classify:classitem-identifier>
				</classify:classitem>
			</classify:classification>
		</primlawinfo:primlawinfo>

	</xsl:template>

</xsl:stylesheet>