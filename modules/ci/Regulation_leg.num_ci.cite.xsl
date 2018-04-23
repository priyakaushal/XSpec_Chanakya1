<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num_ci.cite">
  <title>leg:num/ci:cite <lnpid>id-ST04-26839</lnpid></title>
  <body>
    <section>
		<ul>
		    <li><sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> and create child
                    element <targetxml>lnci:cite</targetxml> for handling citation markup. <pre>
            
              <b><i>Source example based on CA content</i></b>

&lt;leg:num&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:stat&gt;
            &lt;ci:statinfo spanref="stcspan1"&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="reg-no" num="225"&gt;
                        &lt;ci:hierlev label="year" num="2007"&gt;
                               &lt;ci:hierlev label="section" num="7" /&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hierlev&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:statinfo&gt;
            &lt;ci:statref spanref="stcspan1"&gt;
                &lt;ci:publicationname normpubcode="ABRG" value="ABRG" /&gt;
            &lt;/ci:statref&gt;
        &lt;/ci:stat&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="stcspan1"&gt;Alta. Reg. 225/2007, s. 7&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/leg:num&gt;

		</pre>
                    <pre>
              <b><i>Target Example</i></b>
            

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:stat&gt;
               &lt;lnci:statinfo&gt;
                &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="reg-no" num="225"&gt;
                        &lt;lnci:hierlev label="year" num="2007"&gt;
                            &lt;lnci:hierlev label="section" num="7" /&gt;
                        &lt;/lnci:hierlev&gt;
                    &lt;/lnci:hierlev&gt;
                &lt;/lnci:hier&gt;
            &lt;/lnci:statinfo&gt;
             &lt;lnci:statref&gt;
                &lt;lnci:publicationname normpubcode="ABRG" value="ABRG" /&gt;
            &lt;/lnci:statref&gt;
            &lt;/lnci:stat&gt;
            &lt;lnci:content&gt;Alta. Reg. 225/2007, s. 7&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

                    </pre>
                    <note>When text appears inside <sourcexml>leg:num</sourcexml>, then conversion
                        need to move the pinpoint information into
                            <targetxml>lnci:content</targetxml>.</note>
                    <pre>
            
              <b><i>Source example based on CA content</i></b>

&lt;leg:num&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:stat&gt;
            &lt;ci:statinfo spanref="stcspan1"&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="reg-no" num="298"&gt;
                        &lt;ci:hierlev label="year" num="2001" /&gt; 
                    &lt;/ci:hierlev&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:statinfo&gt;
            &lt;ci:statref spanref="stcspan1"&gt;
                &lt;ci:publicationname normpubcode="ONRG2" value="ONRG2" /&gt; 
            &lt;/ci:statref&gt;
        &lt;/ci:stat&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="stcspan1"&gt;O. Reg. 298/01&lt;/ci:span&gt; 
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;, Table2 
&lt;/leg:num&gt;

		</pre>
                    <pre>
              <b><i>Target Example</i></b>
            

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:stat&gt;
               &lt;lnci:statinfo&gt;
                &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="reg-no" num="298"&gt;
                        &lt;lnci:hierlev label="year" num="2001"/&gt;
                    &lt;/lnci:hierlev&gt;
                &lt;/lnci:hier&gt;
            &lt;/lnci:statinfo&gt;
             &lt;lnci:statref&gt;
                &lt;lnci:publicationname normpubcode="ONRG2" value="ONRG2"/&gt;
            &lt;/lnci:statref&gt;
            &lt;/lnci:stat&gt;
                &lt;lnci:content&gt;O. Reg. 298/01, Table2&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

                    </pre>
                </li>
		    
		</ul>
    </section> 
      <section>
          <title>Changes</title>
          <p>YYYY-MM-DD: ______________________________________________________________________.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.num_ci.cite.dita  -->
	<xsl:message>Regulation_leg.num_ci.cite.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:num/ci:cite[@type=&#34;cite4thisdoc&#34;]">

		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
		<ref:citations>
			<ref:cite4thisresource>
				<xsl:apply-templates select="@* | node()"/>
			</ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

	<xsl:template match="leg:num">

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

</xsl:stylesheet>