<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-AU15-20813</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml>leg:info/leg:officialname</sourcexml>
          <b class="+ topic/ph hi-d/b ">becomes</b>
          <targetxml>admindoc:body/admindoc:info/admindoc:officialtitle</targetxml>. <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>
                  

&lt;leg:info&gt;
  &lt;leg:officialname searchtype="LEGISLATION"&gt;SCALES &amp;mdash; COUNTY COURT CIVIL PROCEDURE RULES 2008&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

	</pre>
          <pre xml:space="preserve" class="- topic/pre ">
                    
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>
                  

&lt;admindoc:body&gt;
  &lt;admindoc:info&gt;
    &lt;admindoc:officialtitle&gt;SCALES &amp;#x2014; COUNTY COURT CIVIL PROCEDURE RULES 2008&lt;/admindoc:officialtitle&gt;
  &lt;/admindoc:info&gt;
&lt;/admindoc:body&gt;

                </pre>
        </li>

        <li>When <sourcexml>leg:officialname</sourcexml> has comes with
          attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then it <b>becomes</b>
          <targetxml>admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"]</targetxml>.
            <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup
              <b>ln.user_displayed="false"</b> section in the CI.</note>
          <pre xml:space="preserve" class="- topic/pre ">
                  
              <b><i>Example: Source XML 1</i></b>


&lt;leg:info&gt;
	&lt;leg:officialname searchtype="LEGISLATION" ln.user-displayed="false"&gt;Information Sheets&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

                  
	</pre>
          <pre xml:space="preserve" class="- topic/pre ">

              <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:info&gt;
      &lt;admindoc:officialtitle source="editoriallyassigned"&gt;Information Sheets&lt;/admindoc:officialtitle&gt;
&lt;/admindoc:info&gt;

	</pre>
          <note class="- topic/note ">When <sourcexml>leg:officialname</sourcexml> element has
            attribute <sourcexml>@ln.user-displayed="false"</sourcexml> without any text inside the
            source markup. It should be suppressed and not converted into the output.</note>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:info/leg:officialname[not(@ln.user-displayed='false')]">

		<!--  Original Target XPath:  admindoc:body/admindoc:info/admindoc:officialtitle   -->
				  <admindoc:officialtitle>
				    <xsl:apply-templates select="@* | node()"/>
				  </admindoc:officialtitle>
				
	</xsl:template>
	
	<xsl:template match="leg:officialname[@ln.user-displayed='false' and not(text())]"/>

	<xsl:template match="leg:officialname[@ln.user-displayed='false' and text()]">

		<!--  Original Target XPath:  admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"]   -->
			  <admindoc:officialtitle>
			    <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
			    <xsl:apply-templates select="@* | node()"/>
			  </admindoc:officialtitle>
			
	</xsl:template>

<xsl:template match="leg:juris/@ln.user-displayed"/>
	

</xsl:stylesheet>