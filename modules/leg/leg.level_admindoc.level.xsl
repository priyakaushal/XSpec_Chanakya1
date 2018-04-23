<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-CN02-31818</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
          <sourcexml>leg:level</sourcexml> becomes <targetxml>admindoc:level</targetxml>. The
          attributes are handled as follows:<ul>
            <li><sourcexml>@id</sourcexml> becomes <targetxml>admindoc:level/@xml:id</targetxml>. If
              <sourcexml>@id</sourcexml> begins with a number, prepend underscore '_' to the value.</li>
            <li><sourcexml>leg:level/leg:level-vrnt/@leveltype</sourcexml> becomes
                <targetxml>admindoc:level/@leveltype</targetxml>. <note>If
                  <sourcexml>leg:level-vrnt/@leveltype="sect"</sourcexml>, set the value of
                  <targetxml>admindoc:level/@leveltype</targetxml> to "section".</note><p>If there is
                no value for <sourcexml>@leveltype</sourcexml>, set
                  <targetxml>@leveltype="unclassified"</targetxml>.</p></li>
            <li><sourcexml>leg:level-vrnt/@subdoc</sourcexml> becomes <targetxml>admindoc:level/@includeintoc</targetxml> </li>
            <li><sourcexml>leg:level-vrnt/@toc-caption</sourcexml> becomes <targetxml>admindoc:level/@alternatetoccaption</targetxml></li>
            <li> drop <sourcexml>leg:level-vrnt/@searchtype</sourcexml></li>
          </ul></li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading</sourcexml> becomes
            <targetxml>admindoc:level/heading</targetxml>.</li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading/title</sourcexml> becomes
            <targetxml>admindoc:level/heading/title</targetxml>.</li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading/title/refpt</sourcexml> becomes
            <targetxml>admindoc:level/ref:anchor</targetxml>. Follow the instructions in <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/> to create the markup
            for ref:anchor.</li>
          <li>Pass through the content in 
            <sourcexml>leg:level/leg:level-vrnt/leg:levelbody</sourcexml>.</li>
          <li>
               <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml> becomes
                  <targetxml>admindoc:level/admindoc:bodytext</targetxml>. Follow the instructions
               in General Markup to process the children of
               <sourcexml>leg:bodytext</sourcexml>.</li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

  &lt;leg:level id="PRCI.212874.CHAP.d2e41"&gt;
                  &lt;leg:level-vrnt toc-caption="Chapter 1 General Provisions" searchtype="LEGISLATION CHAPTER"
                                  subdoc="true" leveltype="chapter"&gt;
                     &lt;leg:heading&gt;
                        &lt;title&gt;&lt;refpt type="ext" id="PRCI.212874.CHAP.d2e41"/&gt;Chapter 1 General Provisions&lt;/title&gt;
                     &lt;/leg:heading&gt;
                     &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                           &lt;p&gt;
                              &lt;text&gt;
                                 &lt;refpt type="ext" id="PRCI.212874.i1"/&gt;
                                 &lt;emph typestyle="bf"&gt;Article 1&lt;/emph&gt; These Measures are formulated in accordance with the Banking Supervision Law of the People's Republic of China, the &lt;remotelink refpt="PRCI.3327" dpsi="0IT2" remotekey1="REFPTID" service="DOC-ID"&gt;Law of the People&amp;#x0027;s Republic of China on Commercial Banks&lt;/remotelink&gt;, the &lt;remotelink refpt="PRCI.112203199412" dpsi="0IT2" remotekey1="REFPTID" service="DOC-ID"&gt;Administrative Regulations of the People&amp;#x0027;s Republic of China on Foreign-invested Financial Institutions&lt;/remotelink&gt;, as well as other laws and regulations for the purposes of strengthening the risk management of electronic banking, safeguarding the lawful rights and interests of customers and banks, and promoting the sound and orderly development of electronic banking.&lt;/text&gt;
                           &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

     &lt;admindoc:level leveltype="chapter" includeintoc="true"
            alternatetoccaption="Chapter 1 General Provisions"&gt;
            &lt;ref:anchor id="PRCI.212874.CHAP.d2e41" anchortype="global"/&gt;

            &lt;heading&gt;
               &lt;title&gt; Chapter 1 General Provisions&lt;/title&gt;
            &lt;/heading&gt;

            &lt;admindoc:bodytext&gt;
               &lt;p&gt;
                  &lt;ref:anchor id="PRCI.212874.i1" anchortype="global"/&gt;
                  &lt;text&gt;
                     &lt;emph typestyle="bf"&gt;Article 1&lt;/emph&gt; These Measures are formulated in
                     accordance with the Banking Supervision Law of the People's Republic of China,
                     the &lt;!--Converted from remotelink--&gt;&lt;ref:crossreference
                        crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Law of the People's Republic of China on Commercial
                           Banks&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="PRCI.3327"&gt;
                           &lt;ref:locator-key&gt;
                              &lt;ref:key-name name="DOC-ID"/&gt;
                              &lt;ref:key-value
                                 value="0IT2-***no @docidref - obtain from manifest file"/&gt;
                           &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                     &lt;/ref:crossreference&gt;, the &lt;!--Converted from remotelink--&gt;&lt;ref:crossreference
                        crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Administrative Regulations of the People's Republic of China on
                           Foreign-invested Financial Institutions&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="PRCI.112203199412"&gt;
                           &lt;ref:locator-key&gt;
                              &lt;ref:key-name name="DOC-ID"/&gt;
                              &lt;ref:key-value
                                 value="0IT2-***no @docidref - obtain from manifest file"/&gt;
                           &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                     &lt;/ref:crossreference&gt;, as well as other laws and regulations for the purposes
                     of strengthening the risk management of electronic banking, safeguarding the
                     lawful rights and interests of customers and banks, and promoting the sound and
                     orderly development of electronic banking.&lt;/text&gt;
               &lt;/p&gt;
 
         &lt;/admindoc:bodytext&gt;
    &lt;/admindoc:level&gt;

             </codeblock>
           </example>
     <section>
       <title>Changes</title>
       <p>2014-06-20: <ph id="change_20140620_brt">deleted xml:id from target example. Also changed underscores '_' to periods '.'</ph>.</p>
       <p>2014-05-06: <ph id="change_20140417_brt">Created</ph>.</p>
     </section>
   </body> 
	</dita:topic>

	<xsl:template match="leg:level|level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="leg:level-vrnt/@*"/>
			<xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
				<xsl:attribute name="leveltype">unclassified</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="leg:level-vrnt/leg:heading/title/refpt | heading/title/refpt | heading/edpnum/refpt |heading/desig/designum/refpt"/>
			<!--<xsl:apply-templates select="leg:level-vrnt/leg:heading|heading"/>-->
			<xsl:apply-templates select="node()"/>
		</admindoc:level>

	</xsl:template>


	<xsl:template match="leg:level/leg:level-vrnt/@leveltype | level/@leveltype">

		<!--  Original Target XPath:  admindoc:level/@leveltype   -->
					<xsl:attribute name="leveltype">
						<xsl:choose>		
							<xsl:when test=". = ('agreement','attachment','part')">
								<xsl:value-of select="."/>
							</xsl:when>
							<xsl:when test=".='attachments'">
								<xsl:value-of select="'attachment'"/>
							</xsl:when>
							<xsl:when test=".='comm.intro'">
								<xsl:value-of select="'annotation-group'"/>
							</xsl:when>
							<xsl:when test=".='convention'">
								<xsl:value-of select="'treaty'"/>
							</xsl:when>
							<xsl:when test=". = 'group'">
								<xsl:value-of select="'subchapter'"/>
							</xsl:when>
							<xsl:when test=". = 'leg-inst'">
								<xsl:value-of select="'instrument'"/>
							</xsl:when>
							<xsl:when test=". = 'miscins'">
								<xsl:value-of select="'instrument'"/>
							</xsl:when>
							<xsl:when test=". = 'proc-guide'">
								<xsl:value-of select="'procedural-guide'"/>
							</xsl:when>
							<xsl:when test=". = 'reg-code'">
								<xsl:value-of select="'regulatory-code'"/>
							</xsl:when>
							<xsl:when test=". = 'reg'">
								<xsl:value-of select="'regulation'"/>
							</xsl:when>
							<xsl:when test=". = 'subreg'">
								<xsl:value-of select="'subregulation'"/>
							</xsl:when>
							<xsl:when test=". = 'release'">
								<xsl:value-of select="'instrument'"/>
							</xsl:when>
							<xsl:when test=". = 'scale'">
								<xsl:value-of select="'schedule'"/>
							</xsl:when>
							<xsl:when test=". = 'scalep'">
								<xsl:value-of select="'paragraphs'"/>
							</xsl:when>
							<xsl:when test=". = 'scales'">
								<xsl:value-of select="'schedule'"/>
							</xsl:when>
							<xsl:when test=". = 'scalesp'">
								<xsl:value-of select="'paragraph'"/>
							</xsl:when>
							<xsl:when test=". = 'schedulegrp'">
								<xsl:value-of select="'schedule'"/>
							</xsl:when>
							<xsl:when test=". = 'subgroup'">
								<xsl:value-of select="'subchapter'"/>
							</xsl:when>
							<xsl:when test=". = 'summary'">
								<xsl:value-of select="'introduction'"/>
							</xsl:when>
							<xsl:when test=". = 'sect'">
								<xsl:value-of select="'section'"/>
							</xsl:when>
							<xsl:when test=". = 'subsect'">
								<xsl:value-of select="'subsection'"/>
							</xsl:when>
								<xsl:when test=". = 'comm.chap'">
									<xsl:value-of select="'chapter'"/>
								</xsl:when>
								<xsl:when test=". = 'para0'">
									<xsl:value-of select="'paragraph'"/>
								</xsl:when>
								<xsl:when test=". = 'subgroup'">
									<xsl:value-of select="'subchapter'"/>
								</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="'unclassified'"/>
							</xsl:otherwise>
				
				
				
				</xsl:choose>
			</xsl:attribute>
		

	</xsl:template>
	
	<xsl:template match="leg:levelbody">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	<xsl:template match="leg:bodytext|bodytext[parent::level]">
		<admindoc:bodytext>
			<xsl:apply-templates select="@*|node() except(glp:note[blockquote/p/text/copyright])"/>
		</admindoc:bodytext>
	</xsl:template>
	
<!--	<xsl:template match="leg:level/@leveltype | level/@leveltype | leg:level-vrnt/@leveltype">
		<xsl:attribute name="leveltype" select="."/>
	</xsl:template>-->
	

	<xsl:template match="leg:level-vrnt/@subdoc | leg:level/@subdoc | level/@subdoc">

		<!--  Original Target XPath:  admindoc:level/@includeintoc   -->
			<xsl:attribute name="includeintoc" select="."/>		

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@toc-caption | leg:level/@toc-caption | level/@toc-caption">

		<!--  Original Target XPath:  admindoc:level/@alternatetoccaption   -->
			<xsl:attribute name="alternatetoccaption" select="."/>

	</xsl:template>
	
	<xsl:template match="levelinfo | leg:levelinfo">
		<xsl:choose>
			<xsl:when test="(docinfo:currencystatement or docinfo:authorattribution or docinfo:overview) and 
				*[not(self::docinfo:currencystatement) or not(self::docinfo:authorattribution) or not(self::docinfo:overview)]">
				<admindoc:levelinfo>
					<xsl:apply-templates select="node() except(docinfo:currencystatement, docinfo:authorattribution, docinfo:overview)"/>
				</admindoc:levelinfo>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
<!--
	<xsl:template match="leg:level-vrnt/@searchtype">

		<!-\-  Original Target XPath:  admindoc:level/heading   -\->
		<admindoc:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading">

		<!-\-  Original Target XPath:  admindoc:level/heading   -\->
		<admindoc:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/title">

		<!-\-  Original Target XPath:  admindoc:level/heading/title   -\->
		<admindoc:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/title/refpt">

		<!-\-  Original Target XPath:  admindoc:level/ref:anchor   -\->
		<admindoc:level>
			<ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody">

		<!-\-  Original Target XPath:  admindoc:level/admindoc:bodytext   -\->
		<admindoc:level>
			<admindoc:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:bodytext>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext">

		<!-\-  Original Target XPath:  admindoc:level/admindoc:bodytext   -\->
		<admindoc:level>
			<admindoc:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:bodytext>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>