<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-dc.coverage">
      <title>create <targetxml>dc:coverage/location:state</targetxml> or <targetxml>dc:coverage/location:country</targetxml> element <lnpid>id-AU16-21018</lnpid></title>
      <body>
          <section>
        <p>Within <targetxml>doc:metadata/dc:metadata</targetxml> the child <targetxml>dc:coverage</targetxml> is usually created, with <targetxml>dc:coverage/location:country</targetxml> or
          <targetxml>dc:coverage/location:state</targetxml> created within it depending on what the content of <sourcexml>docinfo/docinfo:doc-id</sourcexml> <b><u>ends with</u></b>, as
specified below: <ul>
<li>If the content of 
    
    <sourcexml>docinfo/docinfo:doc-id</sourcexml> <b><u>ends with</u></b> "_CTH" (without the quotes), create <targetxml>dc:metadata/
dc:coverage/location:country</targetxml> exactly like this: <targetxml>&lt;location:country codescheme="ISO-3166-1"
countrycode="AU"&gt;AU&lt;/location:state&gt;</targetxml>. Here is an example of a docinfo that ends in "_CTH": <sourcexml>&lt;docinfo:docid&gt;
LAWNOW_LEG_COMMENCEMENT_ACTS_2015_CTH&lt;/docinfo:doc-id&gt;</sourcexml></li>
    
    
<li>Otherwise, if the content of <sourcexml>docinfo/docinfo:doc-id</sourcexml> <b><u>ends with</u></b> one of the
          text sequences (without the quotes) given in the list below, create a
  <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with attributes and content set as specified in the
          list below, depending on the value that <sourcexml>docinfo/docinfo:doc-id</sourcexml> ends
          with. 
    <!--
    <ul>
            <li>"_ACT": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-CT">ACT&lt;/location:state></targetxml></li>
            <li>"_NSW": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-NS">NSW&lt;/location:state></targetxml></li>
            <li>"_NT": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-NT">NT&lt;/location:state></targetxml></li>
            <li>"_QLD": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-QL">QLD&lt;/location:state></targetxml></li>
            <li>"_SA": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-SA">SA&lt;/location:state></targetxml></li>
            <li>"_TAS": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-TS">TAS&lt;/location:state></targetxml></li>
            <li>"_VIC": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-VI">VIC&lt;/location:state></targetxml></li>
            <li>"_WA": <targetxml>&lt;location:state codescheme="ISO-3166-2"
                statecode="AU-WA">WA&lt;/location:state></targetxml></li>
          </ul> -->
          
  <!--  Added: MLV  -->
    <ul>
        <li>"CTHLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:country codescheme="ISO-3166-1" countrycode="AU"&gt;AU&lt;/location:country&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"NSWLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"QLDLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-QL"&gt;QLD&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"SALEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-SA"&gt;SA&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"TASLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-TS"&gt;TAS&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"VICLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-VI"&gt;VIC&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"WALEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-WA"&gt;WA&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"NTLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-NT"&gt;NT&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
        <li>"ACTLEG_": <targetxml>&lt;dc:coverage&gt;&lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;&lt;/dc:coverage&gt;</targetxml></li>
    </ul>
    
    <!--  -->
    
          For example, if a source file contained a docinfo such as
            <sourcexml>&lt;docinfo:docid&gt;
            LAWNOW_LEG_COMMENCEMENT_ACTS_2011_07_NSW&lt;/docinfo:doc-id&gt;</sourcexml>, then the item
  for "_NSW" would be used from the list above and <targetxml>&lt;location:state
          codescheme="ISO-3166-2" statecode="AUNS"&gt; NSW&lt;/location:state&gt;</targetxml> would be output to the
          target file.</li>
    
    
<li>If <sourcexml>docinfo/docinfo:doc-id</sourcexml> does not end with "_CTH" and also does not end with a value from the above list, then
<targetxml>dc:coverage</targetxml> and its children are not created.</li>
</ul>
</p>
      </section>
          <section>
              <title>Changes</title>
              <p>2015-04-14: <ph id="change_20150414_JM">Rules expanded. Now include mappings for
                  source content that begins with specified text. New rules are under the heading
                  "Begins With". Previous rules handle certain ending-text. Those rules remain and
                  are not changed. There are no new target xpaths. Webstar 5758149.</ph></p>
          </section>
</body>
    
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-dc.coverage.dita  -->
	
	<!--<xsl:template match="docinfo/docinfo:doc-id">

		<!-\-  Original Target XPath:  dc:metadata/dc:coverage/location:country   -\->
		<xsl:choose>
		    <xsl:when test="ends-with(., 'CTHLEG_') or ends-with(., '_CTH') or starts-with(., 'CTHLEG_')">
		        <dc:coverage>
		            <location:country codescheme='ISO-3166-1' countrycode='AU'>AU</location:country>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'NSWLEG_') or ends-with(., '_NSW') or starts-with(., 'NSWLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-NS'>NSW</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'QLDLEG_') or ends-with(., '_QLD') or starts-with(., 'QLDLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-QL'>QLD</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'SALEG_') or ends-with(., '_SA') or starts-with(., 'SALEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-SA'>SA</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'TASLEG_') or ends-with(., '_TAS') or starts-with(., 'TASLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-TS'>TAS</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'VICLEG_') or ends-with(., '_VIC') or starts-with(., 'VICLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-VI'>VIC</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'WALEG_') or ends-with(., '_WA') or starts-with(., 'WALEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-WA'>WA</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'NTLEG_') or ends-with(., '_NT') or starts-with(., 'NTLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-NT'>NT</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:when test="ends-with(., 'ACTLEG_') or ends-with(., '_ACT') or starts-with(., 'ACTLEG_')">
		        <dc:coverage>
		            <location:state codescheme='ISO-3166-2' statecode='AU-CT'>ACT</location:state>
		        </dc:coverage>
		    </xsl:when>
		    <xsl:otherwise/>
		</xsl:choose>	    
	</xsl:template>-->

	

</xsl:stylesheet>