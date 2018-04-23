<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_docinfo.authorattribution">
  <title><sourcexml>docinfo:authorattribution</sourcexml> to
    <targetxml>dc:contributor</targetxml> <lnpid>id-CCCC-10287</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p>
        <sourcexml>docinfo:authorattribution/contrib</sourcexml> becomes
          <targetxml>dc:metadata/dc:contributor</targetxml></p>
      <p>If the attribute <sourcexml>@ln.user-displayed</sourcexml> exists on the element
          <sourcexml>contrib</sourcexml>, then supress the attribute in the target xml as shown
          below.</p>
        <note>Conversion needs to suppress <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it's the child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.This will be applicable to all pacific content streams.</note>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>
       
        &lt;docinfo&gt;
            &lt;docinfo:authorattribution&gt;
              &lt;contrib ln.user-displayed="false"&gt;Ian Serisier&lt;/contrib&gt;
            &lt;/docinfo:authorattribution&gt;
         &lt;/docinfo&gt;
                   
			</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>
      
      &lt;doc:metadata&gt;
        &lt;doc:docinfo&gt;
            &lt;dc:metadata&gt;
                &lt;dc:contributor&gt;Ian Serisier&lt;/dc:contributor&gt;
            &lt;/dc:metadata&gt;       
        &lt;/doc:docinfo&gt;
      &lt;/doc:metadata&gt;
      
			</codeblock>
    </example>
    
    <section>
    <p>When <sourcexml>person</sourcexml> is an child of <sourcexml>docinfo:authorattribution/contrib</sourcexml> then <sourcexml>docinfo:authorattribution/contrib/person</sourcexml> becomes
        <targetxml>dc:metadata/dc:contributor/person:contributor@contributor-type="author"/person:person</targetxml></p>
      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>       
&lt;docinfo&gt;
    &lt;docinfo:authorattribution&gt;
        &lt;contrib&gt;
            &lt;person&gt;
                &lt;name.text&gt;Assistant Professor Bernard McCabe&lt;/name.text&gt;
            &lt;/person&gt;
        &lt;/contrib&gt;
    &lt;/docinfo:authorattribution&gt;
&lt;/docinfo&gt;
          		</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>
&lt;doc:docinfo&gt;
    &lt;dc:contributor&gt;
        &lt;person:contributor contributor-type="author"&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Assistant Professor Bernard McCabe&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
    &lt;/dc:contributor&gt;
&lt;/doc:docinfo&gt;
</codeblock>
    </example>
      <section>
          <p>When <sourcexml>docinfo:authorattribution</sourcexml> element is having a running text
                then it becomes <targetxml>dc:metadata/dc:contributor</targetxml>.</p>
          
      </section>
      
      <example>
          <title>Source XML</title>
          <codeblock>
       
        &lt;docinfo&gt;
            &lt;docinfo:authorattribution&gt;D C Pearce AO LLB (Adel) LLM (ANU) PhD (ANU)&lt;/docinfo:authorattribution&gt;
         &lt;/docinfo&gt;
                   
			</codeblock>
      </example>
      <example>
          <title>Target XML</title>
          <codeblock>
      
      &lt;doc:metadata&gt;
        &lt;doc:docinfo&gt;
            &lt;dc:metadata&gt;
                &lt;dc:contributor&gt;D C Pearce AO LLB (Adel) LLM (ANU) PhD (ANU)&lt;/dc:contributor&gt;
            &lt;/dc:metadata&gt;       
        &lt;/doc:docinfo&gt;
      &lt;/doc:metadata&gt;
      
</codeblock>
      </example>
      
      <section>
          <p>Exceptio scenario for AU14-Journals/Newsletters/Bulletins - When <sourcexml>docinfo:authorattribution/contrib</sourcexml> contains <sourcexml>remotelink</sourcexml> as a child element then conversion need to omit the <sourcexml>remotelink</sourcexml> element from conversion and retain the text in <targetxml>dc:contributor</targetxml>.</p>
      </section>
      
      <example>
          <title>Source XML</title>
          <codeblock>
       
        &lt;docinfo&gt;
         &lt;docinfo:authorattribution&gt;
            &lt;contrib&gt;The following is an outline of the planned changes to the [#b#]&lt;remotelink
                dpsi="02IJ" remotekey1="REFPTID" service="DOC-ID" refpt="2000A24"
                docidref="2000A24.BODY"&gt;Employment Relations Act 2000&lt;/remotelink&gt;[#/b#] announced
            by Prime Minister John Key at the National Party conference on 18 July. It was added as
            a link from the press release of Minister of Labour Kate Wilkinson &amp;#x201C;90-Day Trial
            Period extended to all employees&amp;#x201D;, available at [#b#]&lt;remotelink
                href="www.beehive.govt.nz/release/90-day+trial+period+extended+all+employers"
                hrefclass="http" newwindow="YES"
                &gt;www.beehive.govt.nz/release/90-day+trial+period+extended+all+employers&lt;/remotelink&gt;[#/b#].
            The material is subject to Crown copyright protection.&lt;/contrib&gt;
         &lt;/docinfo:authorattribution&gt;
        &lt;/docinfo&gt;
                   
			</codeblock>
      </example>
      <example>
          <title>Target XML</title>
          <codeblock>
      
      &lt;doc:metadata&gt;
         &lt;doc:docinfo&gt;
            &lt;dc:metadata&gt;
             &lt;dc:contributor&gt;The following is an outline of the planned changes to the
                 Employment Relations Act 2000 announced by Prime Minister John Key at the National
                Party conference on 18 July. It was added as a link from the press release of
                Minister of Labour Kate Wilkinson &amp;#x201C;90-Day Trial Period extended to all
                employees&amp;#x201D;, available at www.beehive.govt.nz/release/90-day+trial+period+extended+all+employers.
                The material is subject to Crown copyright protection.&lt;/dc:contributor&gt;
            &lt;/dc:metadata&gt;
        &lt;/doc:docinfo&gt;
    &lt;/doc:metadata&gt;
      
</codeblock>
      </example>
      
    <section>
      <title>Changes</title>
      <p>2013-04-10: <ph id="change_20130410_WLL"> Created</ph></p>
      <p>2013-06-25: <ph id="change_20130625_WLL">added to AU and NZ ditamap for content enrichment</ph></p>
      <p>2013-08-13: <ph id="change_20130813_PS">Added instruction and example when
            <sourcexml>person</sourcexml> is an child of
        <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</ph></p>
        <p>2013-08-22: <ph id="change_20130822_PS">Updated instruction and example when
            <sourcexml>person</sourcexml> is an child of
            <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</ph></p>
        <p>2013-09-16: <ph id="change_20130916_VV">Instruction added for suppressing
                        <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
                        <sourcexml>leg:levelinfo</sourcexml> and
                    <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam #
                    is 234193.</ph>
            </p>
        <p>2013-10-08: <ph id="change_20131008_SS">Instruction added for handling
                        <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
                        text. Affects all Pacific content streams. WebTeam # is 238798.</ph></p>
        <p>2013-10-11: <ph id="change_20131011_PS">Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</ph></p>
    </section>
  </body>
	</dita:topic>

    <xsl:template match="docinfo:authorattribution">
        <dc:contributor>
            <xsl:apply-templates select="@* | node()"/>
        </dc:contributor>
    </xsl:template>
    
    <xsl:template match="docinfo:authorattribution[$streamID='AU08'][contrib/@ln.user-displayed='false']" priority="2"/>
    
    
	<xsl:template match="docinfo:authorattribution/contrib">

		<!--  Original Target XPath:  dc:metadata/dc:contributor   -->
			<xsl:apply-templates select="@* | node()"/>	
	</xsl:template>
    
    <xsl:template match="docinfo:authorattribution/contrib/@ln.user-displayed"/>
    
    <xsl:template match="docinfo:authorattribution[parent::leg:levelinfo|parent::levelinfo]"/>

        <xsl:template match="docinfo:authorattribution/contrib/person">

		<!--  Original Target XPath:  dc:metadata/dc:contributor/person:contributor@contributor-type="author"/person:person   -->
				<person:contributor contributor-type='author'>
					<person:person>
						<xsl:apply-templates select="@* | node()"/>
					</person:person>
				</person:contributor>

	</xsl:template>
        
    <xsl:template match="docinfo:authorattribution/contrib/remotelink">
            
        <xsl:apply-templates select="node()"/>	
            
    </xsl:template>

<!--	<xsl:template match="leg:levelinfo">

		<!-\-  Original Target XPath:  dc:metadata/dc:contributor/person:contributor@contributor-type="author"/person:person   -\->
		<dc:metadata>
			<dc:contributor>
				<person:contributor>
					<person:person>
						<xsl:apply-templates select="@* | node()"/>
					</person:person>
				</person:contributor>
			</dc:contributor>
		</dc:metadata>

	</xsl:template>-->


</xsl:stylesheet>