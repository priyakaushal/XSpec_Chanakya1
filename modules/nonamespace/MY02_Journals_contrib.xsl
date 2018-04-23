<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="contrib">
  <title>contrib <lnpid>id-MY02-16211</lnpid></title>

  <body>
  <p>
      <ul>
          <li><sourcexml>jrnl:prelim/contrib</sourcexml> becomes
                        <targetxml>nitf:body.head/nitf:byline/person:contributor</targetxml> and
                    attribute <sourcexml>@searchtype="AUTHOR"</sourcexml> within
                        <sourcexml>contrib</sourcexml> becomes
                        <targetxml>@contributor-type="author"</targetxml> in
                        <targetxml>person:contributor</targetxml>
                </li>
        <li><sourcexml>bodytext/contrib</sourcexml> becomes <targetxml>bodytext/byline/person:contributor</targetxml></li>       
      </ul>
      <note>If <sourcexml>@searchtype</sourcexml> is not present in <sourcexml>contrib</sourcexml>
                then conversion need to take <sourcexml>@searchtype="AUTHOR"</sourcexml> from
                    <sourcexml>person</sourcexml> and map it to
                    <targetxml>@contributor-type="author"</targetxml> in
                    <targetxml>person:contributor</targetxml> else create
                    <targetxml>@contributor-type="undetermined"</targetxml> in
                    <targetxml>person:contributor</targetxml>.</note>
  </p>
    
    

<pre>
  <b>Handling of <sourcexml>jrnl:prelim/contrib</sourcexml></b>

&lt;jrnl:prelim&gt;   
    &lt;contrib searchtype="AUTHOR"&gt;        
        &lt;person&gt;&lt;name.text&gt;Ashgar Ali Ali Mohamed&lt;/name.text&gt;&lt;/person&gt;        
    &lt;/contrib&gt;
&lt;/jrnl:prelim&gt;


<b>Becomes</b>


&lt;nitf:body.head&gt;
    &lt;nitf:byline&gt;
        &lt;person:contributor contributor-type="author"&gt; 
            &lt;person:person&gt;
                &lt;person:name.text&gt;Ashgar Ali Ali Mohamed&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
&lt;/nitf:body.head&gt;

</pre>    
    
    
<pre>
   <b>Handling of <sourcexml>bodytext/contrib</sourcexml></b>

&lt;bodytext&gt;
    &lt;contrib&gt;        
        &lt;person searchtype="AUTHOR"&gt;&lt;name.text&gt;&lt;emph typestyle="bf"&gt;Mohd Hishamudin bin Hj Mohd Yunus&lt;/emph&gt;&lt;/name.text&gt;&lt;/person&gt;
       &lt;!-- ... --&gt;
    &lt;/contrib&gt;
&lt;/bodytext&gt;


<b>Becomes</b>

&lt;nitf:body.content&gt;
&lt;!--...--&gt;
&lt;bodytext&gt; 
	 &lt;byline&gt;
	 	 &lt;person:contributor contributor-type="author"&gt; 
            &lt;person:person&gt;
                &lt;person:name.text&gt;&lt;emph typestyle="bf"&gt;Mohd Hishamudin bin Hj Mohd Yunus&lt;/emph&gt;&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
	 &lt;/byline&gt; 
&lt;/bodytext&gt;
&lt;/nitf:body.content&gt;

</pre>
      <section>
          <title>Changes</title>
          <p>2014-11-14: <ph id="change_20141114_PS">Change <targetxml>person:contributor/@contributor-type</targetxml> attribute value from Upper to lower case in the target.</ph></p>
      </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\contrib.dita  -->
<!--	<xsl:message>MY02_Journals_contrib.xsl requires manual development!</xsl:message> -->

	<xsl:template match="jrnl:prelim/contrib">
		<nitf:byline>
			<person:contributor>
				<xsl:attribute name="contributor-type">
					<xsl:choose>
						<xsl:when test="@searchtype = 'AUTHOR'">
							<xsl:value-of select="lower-case(@searchtype)"/>
						</xsl:when>
						<xsl:when test="not(@searchtype) and ./child::person[1][@searchtype = 'AUTHOR']">
							<xsl:value-of select="lower-case(child::person[1]/@searchtype)"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>undetermined</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				<xsl:apply-templates select="node()"/>
			</person:contributor>
		</nitf:byline>
	</xsl:template>
	
	<xsl:template match="bodytext/contrib">
		<byline>
			<person:contributor>
				<xsl:attribute name="contributor-type">
					<xsl:choose>
						<xsl:when test="@searchtype = 'AUTHOR'">
							<xsl:value-of select="lower-case(@searchtype)"/>
						</xsl:when>
						<xsl:when test="not(@searchtype) and ./child::person[1][@searchtype = 'AUTHOR']">
							<xsl:value-of select="lower-case(child::person[1]/@searchtype)"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>undetermined</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				<xsl:apply-templates select="node()"/>
			</person:contributor>
		</byline>
	</xsl:template>
	
	<xsl:template match="contrib/@searchtype[matches(normalize-space(.), 'AUTHOR')]">
		<!--  Original Target XPath:  @contributor-type="AUTHOR"   -->
		<xsl:attribute name="contributor-type">
			<xsl:text>author</xsl:text>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="contrib[not(@searchtype[matches(normalize-space(.), 'AUTHOR')])]/@contribtype">
		<!--  Original Target XPath:  @contributor-type="undetermined"   -->
		<xsl:attribute name="contributor-type">
			<xsl:text>undetermined</xsl:text>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="contrib/bio[normalize-space(.)='']" priority="2"/>
	
</xsl:stylesheet>