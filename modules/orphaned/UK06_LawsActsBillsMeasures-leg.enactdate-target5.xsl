<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.enactdate-target5">
  <title>Target XML 5 : <sourcexml>leg:dates/leg:enactdate</sourcexml> occurs <b>after</b>
    <sourcexml>leg:longtitle</sourcexml></title>
  <body>
    <codeblock>

&lt;legis:head&gt;
  &lt;!-- ETC. --&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;primlaw:prelim&gt;
  &lt;p&gt;&lt;text&gt;&lt;proc:nl/&gt;The Bill for this Act of the Scottish Parliament was passed by the Parliament on 1st December 1999 and received Royal Assent on 17th January 2000&lt;/text&gt;&lt;/p&gt;
  &lt;primlawinfo:primlawinfo&gt;
   &lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate month="01" day="17" year="2000" normdate="2000-01-17"&gt;&lt;date-text&gt;[17 January 2000&lt;/date-text&gt;]&lt;/primlawinfo:enactdate&gt;
   &lt;/primlawinfo:dates&gt;
  &lt;/primlawinfo:primlawinfo&gt;
  &lt;primlaw:synopsis&gt;
   &lt;bodytext&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;An Act of the Scottish Parliament to make provision about public resources and finances and, for the purposes of
     &lt;lnci:cite status="valid"&gt;
      &lt;lnci:sesslaw&gt;
       &lt;lnci:sesslawinfo&gt;
        &lt;lnci:sesslawnum num="1998_46a"/&gt;
        &lt;lnci:hierpinpoint&gt;
         &lt;lnci:hierlev num="70" label="section"/&gt;
        &lt;/lnci:hierpinpoint&gt;
       &lt;/lnci:sesslawinfo&gt;
       &lt;lnci:sesslawref&gt;
        &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
       &lt;/lnci:sesslawref&gt;
      &lt;/lnci:sesslaw&gt;
      &lt;lnci:content&gt;section 70&lt;/lnci:content&gt;
     &lt;/lnci:cite&gt; of the Scotland Act 1998, about accountability for their use; and for connected purposes.&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/primlaw:synopsis&gt;
  &lt;/primlaw:prelim&gt;
  &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.enactdate-target5.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.enactdate-target5.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates/leg:enactdate">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:longtitle">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>