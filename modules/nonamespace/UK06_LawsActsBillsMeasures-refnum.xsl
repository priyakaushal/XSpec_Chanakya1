<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-refnum">
  <title>refnum <lnpid>id-UK06-28040</lnpid></title>
  <body>
    <section>
      <p><sourcexml>refnum</sourcexml> becomes <targetxml>classify:classification/@classscheme="uk-government-code"/classify:classitem/classify:classitem-identifier</targetxml> and create child elements <targetxml>classify:classname</targetxml> and <targetxml>classify:classcode</targetxml>. Where:
        <ul>
          <li>The value of the <targetxml>classify:classcode</targetxml> will have the value of <sourcexml>refnum</sourcexml></li>
          <li>The value of the <targetxml>classify:classname</targetxml> will be picked from the below mention pick list:
            <ul>
              <li><b>Commencement</b> : for <sourcexml>refnum</sourcexml> values of the form "(C n)", where <b>n</b> is integer value in <sourcexml>refnum</sourcexml></li>
              <li><b>Commencement (Welsh Language)</b> : for <sourcexml>refnum</sourcexml> values of the form "(Cy n)", where <b>n</b> is integer value in <sourcexml>refnum</sourcexml></li>
              <li><b>UK Legal Series</b> : for <sourcexml>refnum</sourcexml> values of the form "(L n)", where <b>n</b> is integer value in <sourcexml>refnum</sourcexml></li>
              <li><b>Scottish Legal Series</b> : for <sourcexml>refnum</sourcexml> values of the form "(S n)", where <b>n</b> is integer value in <sourcexml>refnum</sourcexml></li>
              <li><b>Welsh Legal Series</b> : for <sourcexml>refnum</sourcexml> values of the form "(W n)", where <b>n</b> is integer value in <sourcexml>refnum</sourcexml></li>
            </ul>
          </li>
        </ul>
        <note>If attribute <sourcexml>@refnumtype</sourcexml> inside <sourcexml>refnum</sourcexml> then <sourcexml>@refnumtype</sourcexml> will be suppressed from conversion.</note>
        And populated as below:
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-10-16 <ph id="change_20151016_AB"> Conversion Instruction Created. (DB #2440).</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-refnum.dita  -->
	 
  <!-- Sudhanshu Srivastava :
       Edited : 16 June 2017.
       Comments : This is content specific module handling refnum.
  -->

	<xsl:template match="refnum">
	  <classify:classification classscheme="uk-government-code">
	    <classify:classitem>
	      <classify:classitem-identifier>
	        <classify:classname>
	        	<xsl:choose>
	        		<xsl:when test="starts-with(normalize-space(.),'(Cy')">
	        			<xsl:text>Commencement (Welsh Language)</xsl:text>
	        		</xsl:when>
	        		<xsl:when test="starts-with(normalize-space(.),'(C')">
	        			<xsl:text>Commencement</xsl:text>
	        		</xsl:when>
	        		<xsl:when test="starts-with(normalize-space(.),'(L')">
	        			<xsl:text>UK Legal Series</xsl:text>
	        		</xsl:when>
	        		<xsl:when test="starts-with(normalize-space(.),'(S')">
	        			<xsl:text>Scottish Legal Series</xsl:text>
	        		</xsl:when>
	        		<xsl:when test="starts-with(normalize-space(.),'(W')">
	        			<xsl:text>Welsh Legal Series</xsl:text>
	        		</xsl:when>
	        	</xsl:choose>
	        </classify:classname>
	        <classify:classcode>
	          <xsl:apply-templates select="@* | node()"/>
	        </classify:classcode>
	      </classify:classitem-identifier>
	    </classify:classitem>
	  </classify:classification>
	</xsl:template>

  <xsl:template match="refnum/@refnumtype"/>
</xsl:stylesheet>