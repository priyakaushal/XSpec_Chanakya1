<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-From-Services-Head">
  <title>Head <lnpid>id-NZ12-24809</lnpid></title>
  <body>
    <p><targetxml>admindoc:head</targetxml> is created as described in the Introduction.</p>
    <section>
      <title>admindoc:head</title>
      <p>
        <ul>
          <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:juris</sourcexml> <b>becomes</b> <targetxml>admindoc:admindoc/admindoc:head/jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country </targetxml> with attributes <targetxml>@codescheme="ISO-3166-1" and @countrycode="NZ"</targetxml>. 
            
            and populate as follows:
            <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;NZ&lt;/leg:juris&gt;
&lt;/leg:info&gt;
            </pre>
            <pre>
              <b><i>Example: Target XML 1</i></b>

&lt;admindoc:head&gt;
	&lt;jurisinfo:execbodyinfo&gt;
		&lt;jurisinfo:jurisdiction&gt;
		 &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
		&lt;/jurisinfo:jurisdiction&gt;
	&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;


&lt;dc:metadata&gt;
 &lt;dc:coverage&gt;
  &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
 &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

            </pre>
          </li>
          <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:year</sourcexml> <b>becomes</b> <targetxml>admindoc:admindoc/admindoc:head/admindecision:decisioninfo/admindecision:dates/admindecision:adopteddate/date-text</targetxml> and populate as follows:
            <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:info&gt;
 &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2005&lt;/leg:year&gt;
&lt;/leg:info&gt;
            </pre>
            <pre>
              <b><i>Example: Target XML 1</i></b>

&lt;admindoc:head&gt;
 &lt;admindecision:decisioninfo&gt;
  &lt;admindecision:dates&gt;
   &lt;admindecision:adopteddate year="2005"&gt;
    &lt;date-text&gt;2005&lt;/date-text&gt;
   &lt;/admindecision:adopteddate&gt;
  &lt;/admindecision:dates&gt;
 &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

            </pre>
          </li>
        	<li><sourcexml>/LEGDOC/leg:body/leg:info/leg:dates/leg:effdate</sourcexml> <b>becomes</b> <targetxml>admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate</targetxml> and populate as follows:
        		<pre>
              <b><i>Example: Source XML 1</i></b>
        			
&lt;leg:dates&gt;
    &lt;leg:effdate&gt;[Circulated by the authority of the Minister for Transport and communications,
     Senator the Hon Bob Collins]&lt;/leg:effdate&gt;
 &lt;/leg:dates&gt;
            </pre>
        		<pre>
              <b><i>Example: Target XML 1</i></b>


  &lt;admindoc:agencymaterialinfo&gt;
   &lt;admindoc:dates&gt;
    &lt;admindoc:effdate&gt;[Circulated by the authority of the Minister for Transport and communications,
     Senator the Hon Bob Collins]&lt;/admindoc:effdate&gt;
   &lt;/admindoc:dates&gt;
  &lt;/admindoc:agencymaterialinfo&gt;

            </pre>
        	</li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>
<!-- JL: updated documentation on leg:dates/leg:effdate on 20170726 -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Regulatory-From-Services-Head.dita  -->
	 

	<xsl:template match="leg:body/leg:info/leg:juris">
		<jurisinfo:execbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:execbodyinfo>
	</xsl:template>
	
	<xsl:template match="leg:juris" mode="metadata">
		<dc:coverage>
			<location:country codescheme="ISO-3166-1" countrycode="NZ"/>
		</dc:coverage>
	</xsl:template>
	
	<xsl:template match="leg:juris/@ln.user-displayed | leg:year/@ln.user-displayed" priority="10"/>

	<xsl:template match="leg:body/leg:info/leg:year">
		<admindecision:decisioninfo>
			<admindecision:dates>
				<admindecision:adopteddate>
					<xsl:if test="matches(normalize-space(.) , '\d{4}')">
						<xsl:attribute name="year" select="normalize-space(.)"/>
					</xsl:if>
					<xsl:if test="not(@ln.user-displayed='false')">
					<date-text>
						<xsl:apply-templates select="@* | node()"/>
					</date-text>
					</xsl:if>
				</admindecision:adopteddate>
			</admindecision:dates>
		</admindecision:decisioninfo>
	</xsl:template>
	
	<xsl:template match="leg:dates">
		<xsl:apply-templates select="@*|node()"/>
	</xsl:template>
	
	<xsl:template match="leg:body/leg:info/leg:dates/leg:effdate">
		<admindoc:agencymaterialinfo>
			<admindoc:dates>
				<admindoc:effdate>
					<xsl:apply-templates select="@*|node()"/>
				</admindoc:effdate>
			</admindoc:dates>
		</admindoc:agencymaterialinfo>
	</xsl:template>

</xsl:stylesheet>