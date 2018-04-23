<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.govoffice">
    <title><sourcexml>leg:govoffice</sourcexml> <lnpid>id-IN01-15424</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:govoffice</sourcexml> becomes
                    <targetxml>legis:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname</targetxml>.</p>
        </section>
        <codeblock>

&lt;leg:info&gt;
 &lt;!-- ETC. --&gt;
 &lt;leg:govoffice&gt;
  &lt;emph typestyle="it"&gt;Draft Regulations laid before Parliament under
    &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
     &lt;ci:sesslaw&gt;
      &lt;ci:sesslawinfo&gt;
       &lt;ci:sesslawnum num="2006_46a"/&gt;
       &lt;ci:hierpinpoint&gt;
        &lt;ci:hierlev label="section" num="473"/&gt;
       &lt;/ci:hierpinpoint&gt;
      &lt;/ci:sesslawinfo&gt;
      &lt;ci:sesslawref&gt;
       &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
      &lt;/ci:sesslawref&gt;
     &lt;/ci:sesslaw&gt;
     &lt;ci:content&gt;sections 473(3)&lt;/ci:content&gt;
    &lt;/ci:cite&gt;,
    &lt;!-- ETC. --&gt;
  &lt;/emph&gt;
 &lt;/leg:govoffice&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:info&gt;

    </codeblock>
<p><b>Becomes</b></p>
        <codeblock>

&lt;legis:head&gt;
 &lt;jurisinfo:legisbodyinfo&gt;
  &lt;jurisinfo:approvedby&gt;
   &lt;jurisinfo:govbodyname&gt;
    &lt;emph typestyle="it"&gt;Draft Regulations laid before Parliament under
     &lt;lnci:cite status="valid"&gt;
      &lt;lnci:sesslaw&gt;
       &lt;lnci:sesslawinfo&gt;
        &lt;lnci:sesslawnum num="2006_46a"/&gt;
        &lt;lnci:hierpinpoint&gt;
         &lt;lnci:hierlev num="473" label="section"/&gt;
        &lt;/lnci:hierpinpoint&gt;
       &lt;/lnci:sesslawinfo&gt;
       &lt;lnci:sesslawref&gt;
        &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
       &lt;/lnci:sesslawref&gt;
      &lt;/lnci:sesslaw&gt;
      &lt;lnci:content&gt;sections 473(3)&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;,
      &lt;!-- ETC. --&gt;
    &lt;/emph&gt;
   &lt;/jurisinfo:govbodyname&gt;
  &lt;/jurisinfo:approvedby&gt;
 &lt;/jurisinfo:legisbodyinfo&gt;
&lt;/legis:head&gt;
 
    </codeblock>
        
        <section>
            <title>Changes</title>
            <p>2016-07-25 <ph id="change_20160725"> Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.govoffice.dita  -->
	<xsl:message>leg.govoffice.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:govoffice">

		<!--  Original Target XPath:  legis:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname   -->
		<legis:head>
			<jurisinfo:legisbodyinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<jurisinfo:approvedby>
					<jurisinfo:govbodyname>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:govbodyname>
				</jurisinfo:approvedby>
			</jurisinfo:legisbodyinfo>
		</legis:head>

	</xsl:template>

</xsl:stylesheet>