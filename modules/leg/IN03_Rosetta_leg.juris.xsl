<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.juris">
    <title>leg:juris <lnpid>id-IN03-15814</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:juris</sourcexml> becomes
                    <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                and also create
                    <targetxml>dc:metadata/dc:coverage/location:country/@codescheme="ISO-3166-2"</targetxml>
                and
                    <targetxml>dc:metadata/dc:coverage/location:country/@countrycode="IN"</targetxml>.</p>
            <p>Drop <sourcexml>@searchtype</sourcexml> attribute from conversion.</p>
            
            <p>Drop <sourcexml>@ln.user-displayed</sourcexml> attribute from conversion.</p>
            
            <p>Conversion should create <targetxml>jurisinfo:legisbodyinfo</targetxml> in
                    <targetxml>{target.root.element}:head</targetxml> element.</p>
            
            <pre>&lt;leg:info&gt;
    ...
    &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;IN&lt;/leg:juris&gt;
    ...
&lt;/leg:info&gt;

<b>becomes</b>

&lt;jurisinfo:legisbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;IN&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;

<b>and</b>

&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-2" countrycode="IN"&gt;IN&lt;/location:country&gt;
    &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;</pre>
            <note><p>If <sourcexml>leg:juris</sourcexml> is having below mentioned state code value
                    then conversion should create
                        <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                    and also create
                        <targetxml>dc:metadata/dc:coverage/location:state/@codescheme="ISO-3166-2"</targetxml>
                    and
                    <targetxml>dc:metadata/dc:coverage/location:state/@statecode</targetxml>.</p></note>
            <table frame="all">
                <tgroup cols="2">
                    <tbody>
                        <row>
                            <entry>State</entry>
                            <entry align="center">State Code</entry>
                        </row>
                        <row>
                            <entry>Andhra Pradesh</entry>
                            <entry align="center">AP</entry>
                        </row>
                        <row>
                            <entry>Arunachal Pradesh</entry>
                            <entry align="center">AR</entry>
                        </row>
                        <row>
                            <entry>Assam</entry>
                            <entry align="center">AS</entry>
                        </row>
                        <row>
                            <entry>Bihar</entry>
                            <entry align="center">BR</entry>
                        </row>
                        <row>
                            <entry>Chhattisgarh</entry>
                            <entry align="center">CG</entry>
                        </row>
                        <row>
                            <entry>Goa</entry>
                            <entry align="center">GA</entry>
                        </row>
                        <row>
                            <entry>Gujarat</entry>
                            <entry align="center">GJ</entry>
                        </row>
                        <row>
                            <entry>Haryana</entry>
                            <entry align="center">HR</entry>
                        </row>
                        <row>
                            <entry>Himachal Pradesh</entry>
                            <entry align="center">HP</entry>
                        </row>
                        <row>
                            <entry>Jammu &amp; Kashmir</entry>
                            <entry align="center">JK</entry>
                        </row>
                        <row>
                            <entry>Jharkhand</entry>
                            <entry align="center">JH</entry>
                        </row>
                        <row>
                            <entry>Karnataka</entry>
                            <entry align="center">KA</entry>
                        </row>
                        <row>
                            <entry>Kerala</entry>
                            <entry align="center">KL</entry>
                        </row>
                        <row>
                            <entry>Madhya Pradesh</entry>
                            <entry align="center">MP</entry>
                        </row>
                        <row>
                            <entry>Maharashtra</entry>
                            <entry align="center">MH</entry>
                        </row>
                        <row>
                            <entry>Manipur</entry>
                            <entry align="center">MN</entry>
                        </row>
                        <row>
                            <entry>Meghalaya</entry>
                            <entry align="center">ML</entry>
                        </row>
                        <row>
                            <entry>Mizoram</entry>
                            <entry align="center">MZ</entry>
                        </row>
                        <row>
                            <entry>Nagaland</entry>
                            <entry align="center">NL</entry>
                        </row>
                        <row>
                            <entry>Odisha</entry>
                            <entry align="center">OR</entry>
                        </row>
                        <row>
                            <entry>Punjab</entry>
                            <entry align="center">PB</entry>
                        </row>
                        <row>
                            <entry>Rajasthan</entry>
                            <entry align="center">RJ</entry>
                        </row>
                        <row>
                            <entry>Sikkim</entry>
                            <entry align="center">SK</entry>
                        </row>
                        <row>
                            <entry>Tamil Nadu</entry>
                            <entry align="center">TN</entry>
                        </row>
                        <row>
                            <entry>Tripura</entry>
                            <entry align="center">TR</entry>
                        </row>
                        <row>
                            <entry>Uttarakhand</entry>
                            <entry align="center">UT</entry>
                        </row>
                        <row>
                            <entry>Uttar Pradesh</entry>
                            <entry align="center">UP</entry>
                        </row>
                        <row>
                            <entry>West Bengal</entry>
                            <entry align="center">WB</entry>
                        </row>
                        <row>
                            <entry>Andaman &amp; Nicobar</entry>
                            <entry align="center">AN</entry>
                        </row>
                        <row>
                            <entry>Chandigarh</entry>
                            <entry align="center">CH</entry>
                        </row>
                        <row>
                            <entry>Dadra and Nagar Haveli</entry>
                            <entry align="center">DN</entry>
                        </row>
                        <row>
                            <entry>Daman &amp; Diu</entry>
                            <entry align="center">DD</entry>
                        </row>
                        <row>
                            <entry>Delhi</entry>
                            <entry align="center">DL</entry>
                        </row>
                        <row>
                            <entry>Lakshadweep</entry>
                            <entry align="center">LD</entry>
                        </row>
                        <row>
                            <entry>Puducherry</entry>
                            <entry align="center">PY</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.juris.dita  -->
	<xsl:message>IN03_Rosetta_leg.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:legisbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:legisbodyinfo>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  jurisinfo:legisbodyinfo   -->
		<jurisinfo:legisbodyinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:legisbodyinfo>

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:  jurisinfo:legisbodyinfo   -->
		<jurisinfo:legisbodyinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:legisbodyinfo>

	</xsl:template>

</xsl:stylesheet>