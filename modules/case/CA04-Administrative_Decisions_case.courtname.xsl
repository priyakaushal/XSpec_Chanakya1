<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtname">
   <title>case:courtname <lnpid>id-CA04-13419</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtname</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
           <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;Alberta Environmental Appeal Board&lt;nl/&gt;
 Preliminary meeting by written submission&lt;/case:courtname&gt;  
&lt;/case:courtinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
            
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:courtname&gt;Alberta Environmental Appeal Board&lt;proc:nl/&gt;
 Preliminary meeting by written submission&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;
           </pre>
          
                    
          <note>For handling <b>@ln.user-displayed</b>
           attribute, refer the general markup <xref href="../../common_newest/Rosetta_case.courtname_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note> 
        </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.courtname.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.courtname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:courtname">
	  <xsl:choose>
	    <xsl:when test="preceding-sibling::abbrvname">
	      <xsl:apply-templates select="@* | node()"/>
	    </xsl:when>
	    <xsl:otherwise>
	      <jurisinfo:courtname>
	        <xsl:apply-templates select="@* | node()"/>
	      </jurisinfo:courtname>
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>

</xsl:stylesheet>