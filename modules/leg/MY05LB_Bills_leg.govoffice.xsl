<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:billtrack="urn:x-lexisnexis:content:billtracking:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.govoffice">
    <title>leg:govoffice <lnpid>id-MY05LB-16825</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:govoffice</sourcexml> becomes <targetxml>billtrack:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname</targetxml>.</p> 

        <pre>
              <b><i>Source Example:</i></b>


&lt;leg:info&gt;
    ......
    &lt;leg:govoffice&gt;Parliament of India&lt;/leg:govoffice&gt;
    ......
&lt;/leg:info&gt;

           </pre>
                <pre>

              <b><i>Target Example:</i></b>


&lt;regulation:head&gt;
    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:approvedby&gt;
            &lt;jurisinfo:govbodyname&gt;Parliament of India&lt;/jurisinfo:govbodyname&gt;
        &lt;/jurisinfo:approvedby&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
&lt;/regulation:head&gt;
          
      </pre>      
        </section>    
    <section>
      <title>Changes</title>
      <p>2016-11-07: <ph id="change_20161107_SS">Created</ph>.</p>
    </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LB_Bills\leg.govoffice.dita  -->
<!--	<xsl:message>MY05LB_Bills_leg.govoffice.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:govoffice">
        <jurisinfo:govbodyname>
            <xsl:apply-templates/>
        </jurisinfo:govbodyname>
    </xsl:template>
    
</xsl:stylesheet>