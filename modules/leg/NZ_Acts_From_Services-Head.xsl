<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="legis-Head">
		<title>Head <lnpid>id-NZ06-23408</lnpid></title>
		<body>
			<p><targetxml>legis:legis/legis:head</targetxml> is created as described
				in the Introduction.</p>
			<section>
				<title>legis:head</title>
				<p>
					<ul>
						<li>If source input document contains
								<sourcexml>leg:juris</sourcexml> then
								<sourcexml>LEGDOC/leg:body/leg:info/leg:juris</sourcexml>
							becomes
								<targetxml>legis:legis/legis:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>and
							create <targetxml>dc:metadata/dc:coverage/location:country
							</targetxml> with attributes <targetxml>@codescheme="ISO-3166-1"
								and @countrycode="NZ"</targetxml>.
							<pre>

&lt;leg:info&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;NZ&lt;/leg:juris&gt;
&lt;/leg:info&gt;

            <b>becomes</b>


  &lt;legis:legis&gt;
    &lt;legis:head&gt;
      &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
          &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
      &lt;/jurisinfo:legisbodyinfo&gt;
    &lt;/legis:head&gt;
    &lt;legis:body/&gt; 
  &lt;/legis:legis&gt; 
                          
    
  &lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
     &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

                                             </pre>
						</li>
					</ul>
					<ul>
						<li> If the source input document has no
								<sourcexml>leg:juris</sourcexml> information then conversion
							will create an empty output structure shown below.
							<pre>
          
          &lt;legis:head/&gt;
             
          </pre>
						</li>
					</ul>
				</p>
			</section>
		</body>
	</dita:topic>


	<xsl:template match="leg:body/leg:info/leg:juris" mode="head">
		<!--  Original Target XPath:  legis:legis/legis:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:legisbodyinfo
			xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:legisbodyinfo>
	</xsl:template>
	
	<!-- trap outside of mode 'head' -->
	<xsl:template match="leg:juris"/>

</xsl:stylesheet>