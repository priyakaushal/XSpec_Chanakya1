<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="custom-metafield-edit-date">
  <title>docinfo:custom-metafield @name="EDIT-DATE" and @name="LAST-UPDATE-DATE" <lnpid>id-USPA-31008</lnpid></title>
  <body>
    <p>When <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="EDIT-DATE" and @name="LAST-UPDATE-DATE"</sourcexml> occurs, a copy of this date value should be parsed 
      as MM(month)/DD(day)/YYYY(year) and placed into the first <targetxml>seclaw:body/seclaw:level/seclaw:levelinfo/miscdate</targetxml>.
    <sl>
      <sli>Parsing the date fields to place month into <targetxml>@month</targetxml>, day into <targetxml>@day</targetxml>, and year into <targetxml>@year</targetxml>.</sli>
      <sli>Map <sourcexml>name</sourcexml> value to the attribute <targetxml>datetype</targetxml></sli>
    </sl>
    </p>
    
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;docinfo:custom-metafields&gt;
     &lt;docinfo:custom-metafield name="EDIT-DATE" searchtype="EDIT-DATE" &gt;03/18/2012&lt;/docinfo:custom-metafield&gt;
     &lt;docinfo:custom-metafield name="LAST-UPDATE-DATE" searchtype="LAST-UPDATE-DATE" &gt;03/18/2012&lt;/docinfo:custom-metafield&gt;
  ...   
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
      

    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

        &lt;seclaw:level leveltype="topic"&gt;
...
            &lt;seclaw:levelinfo&gt;
...
               &lt;miscdate datetype="EDIT-DATE" year="2012" month="03" day="18"/&gt;
               &lt;miscdate datetype="LAST-UPDATE-DATE" year="2012" month="03" day="18"/&gt;
            &lt;/seclaw:levelinfo&gt;
         
      </codeblock>
     
    </example>
    
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_custom-metafield-edit-date-US.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_custom-metafield-edit-date-US.xsl requires manual development!</xsl:message> -->


<!--	<xsl:template match="name">

		<!-\-  Original Target XPath:  datetype   -\->
		<datetype>
			<xsl:apply-templates select="@* | node()"/>
		</datetype>

	</xsl:template>-->

</xsl:stylesheet>