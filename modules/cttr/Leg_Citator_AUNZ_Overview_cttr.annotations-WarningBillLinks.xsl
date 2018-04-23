<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks">
		<title>cttr:body/cttr:content/cttr:annotations - Warning/Bill Links
				<lnpid>id-AU20-22255</lnpid></title>

		<body>
			<!--SNB NOTE 2016-06-10: info on AU20 generation of this Rosetta markup in an XML comment at the bottom of this file-->
			<section>
				<p>If <sourcexml>cttr:annotations</sourcexml> contains
						<sourcexml>@id="OI12"</sourcexml> or
						<sourcexml>cttr:annotations/heading/note/h</sourcexml> contains
						<sourcexml>"@id="OP15A"</sourcexml> (case insensitive) create
						<targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="billwarning"]</targetxml>.</p>
				<note>EXCEPTION: if the source
						<sourcexml>cttr:annotations[@id="OI12"]/heading/note</sourcexml> or
						<sourcexml>cttr:annotations/heading/note[h/@id="OP15A"]</sourcexml> contains
					no descendant <sourcexml>p/text</sourcexml> elements (at any depth) with
					non-whitespace text that is not "A Bill impacts this Act" (case-insensitive), do
					not create any output for this source content at all. I.e. no output is created
					if only "A Bill impacts this Act" or whitespace exists.</note>
				<p>Add <sourcexml>primlawinfo:primlawinfo/@xml:id</sourcexml> containing the value
					determined from the following logic: <ul>
						<li>When <sourcexml>cttr:annotations/heading/note/h</sourcexml> contains
								<sourcexml>"@id="OP15A"</sourcexml> (case insensitive), the value of
								<targetxml>primlawinfo:primlawinfo/@xml:id</targetxml> is
							”refsection-OP15”</li>
						<li>Otherwise, the value of
								<targetxml>primlawinfo:primlawinfo/@xml:id</targetxml> is
							”refsection-OI12”</li>
					</ul>
				</p>
				<p>Map <sourcexml>heading/title</sourcexml> and
						<sourcexml>heading/note/h</sourcexml> within
						<sourcexml>cttr:annotations</sourcexml> to be
						<targetxml>heading/title</targetxml> within the new
						<targetxml>legisinfo:statusgroup</targetxml> element.</p>
				<p>Map each <sourcexml>p/text</sourcexml> and <sourcexml>l/li/p/text</sourcexml>
					within <sourcexml>cttr:annotations/heading/note</sourcexml> to be the content of
					a single
						<targetxml>legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml>,
					separating the content of each source <sourcexml>text</sourcexml> element with
					two <targetxml>proc:nl</targetxml> elements. Any <sourcexml>lnlink</sourcexml>
					inside <sourcexml>text</sourcexml> maps to <targetxml>ref:lnlink</targetxml>
					using standard mapping rules.</p>
			</section>

			<example>
				<title>Example 1: Source Warning/Bill for Instrument/Act Document</title>
				<codeblock>
            &lt;!-- OI12 Warning/bill links --&gt;
     &lt;cttr:annotations id="OI12"&gt;
       &lt;heading&gt;
         &lt;title&gt;Bills Warning&lt;/title&gt;
         &lt;note&gt;
           &lt;p id="OI12A"&gt;
             &lt;text&gt;A Bill impacts this Act&lt;/text&gt;&lt;/p&gt;
            &lt;l id="OI12B"&gt;
            	&lt;li&gt;
            		&lt;p&gt;
            			&lt;text&gt;
            				&lt;lnlink service="DOC-ID" status="unval"&gt;
            					&lt;marker&gt;CIVIL LAW AND JUSTICE LEGISLATION AMENDMENT BILL 2014&lt;/marker&gt;
            					&lt;api-params&gt;
            						&lt;param name="dpsi" value="009K "/&gt;
            						&lt;param name="remotekey1" value="DOC-ID"/&gt;
            						&lt;param name="remotekey2" value="CTH_BIL_2014-228"/&gt;
            					&lt;/api-params&gt;
            				&lt;/lnlink&gt;
            			&lt;/text&gt;
            		&lt;/p&gt;
            	&lt;/li&gt;
            &lt;/l&gt;
            &lt;/note&gt;
        &lt;/heading&gt;
&lt;cttr:annot&gt;
&lt;comm:info&gt;
&lt;title&gt;&lt;/title&gt;&lt;/comm:info&gt;&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;     
        </codeblock>

				<title>Example 1: Target Warning/Bill for Instrument/Act Document</title>
				<codeblock>
            &lt;primlawinfo:primlawinfo xml:id="refsection-OI12"&gt;
              	&lt;legisinfo:legisinfo&gt;
                   &lt;legisinfo:statusgroup statusgroupcode="billwarning"&gt;
                      &lt;heading&gt;
                         &lt;title&gt;Bills Warning&lt;/title&gt;
                      &lt;/heading&gt;
                       
                  &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;A Bill impacts this Act&lt;proc:nl/&gt;&lt;proc:nl/&gt;
                     	   &lt;ref:lnlink service="DOCUMENT"&gt;
                             &lt;ref:marker&gt;CIVIL LAW AND JUSTICE LEGISLATION AMENDMENT BILL 2014&lt;/ref:marker&gt;
                             &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                   &lt;ref:key-name name="DOC-ID"/&gt;
                                   &lt;ref:key-value value="009K-CTH_BIL_2014-228"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;                
                    &lt;/legisinfo:statustext&gt;
                  &lt;/legisinfo:status&gt; 
                 &lt;/legisinfo:statusgroup&gt;
                 
        </codeblock>
			</example>
			<example>
				<title>Example 2: Source Warning/Bill for Provision Document</title>
				<codeblock>
&lt;cttr:annotations id="OP15"&gt;
	&lt;heading&gt;
		...
    &lt;!-- OP15A – Bills warning --&gt;
  &lt;note&gt;
  	&lt;!--OP15A – Bills warning--&gt;
  	&lt;h id="OP15A"&gt;Bills Warning&lt;/h&gt;
  	&lt;p&gt;
  		&lt;text&gt;A Bill impacts this Act&lt;/text&gt;
  	&lt;/p&gt;
  	&lt;!--OP15B – Bills List--&gt;
  	&lt;l id="OP15B"&gt;
  		&lt;li&gt;
  			&lt;p&gt;
  				&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;CIVIL LAW AND JUSTICE LEGISLATION AMENDMENT BILL
												2014&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="CTH_BIL_2014-228"/&gt;
									&lt;param name="dpsi" value="009K"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
  				&lt;/text&gt;
  			&lt;/p&gt;
  		&lt;/li&gt;
  	&lt;/l&gt;
  	&lt;!--OP17 Instrument info - View Citator (link)--&gt;
			&lt;p&gt;
				&lt;text&gt;See &lt;lnlink service="DOC-ID" status="unval"&gt;
						&lt;marker&gt;Citator Report&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="LCIT-CTH_ACT_1995-2"/&gt;
							&lt;param name="dpsi" value="0QQI"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt; for detail &lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
		...
&lt;/cttr:annotations&gt;
        </codeblock>

				<title>Example 2: Target Warning/Bill for Provision Document</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
		...
    &lt;primlawinfo:primlawinfo xml:id="refsection-OP15"&gt;
    	&lt;legisinfo:legisinfo&gt;
    		&lt;legisinfo:statusgroup statusgroupcode="billwarning"&gt;
    			&lt;heading&gt;
    				&lt;title&gt;Bills Warning&lt;/title&gt;
    			&lt;/heading&gt;
    			&lt;legisinfo:status&gt;
    				&lt;legisinfo:statustext&gt;A Bill impacts this Act&lt;proc:nl/&gt;
    					&lt;proc:nl/&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;CIVIL LAW AND JUSTICE LEGISLATION AMENDMENT BILL 2014&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="009K-CTH_BIL_2014-228"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    					&lt;proc:nl/&gt;
    					&lt;proc:nl/&gt;See &lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;Citator Report&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="0QQI-LCIT-CTH_ACT_1995-2"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt; for detail &lt;/legisinfo:statustext&gt;
    			&lt;/legisinfo:status&gt;
    		&lt;/legisinfo:statusgroup&gt;
    	&lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;                 
		...
&lt;/cttr:legisinfo&gt;
        </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-06-09: <ph id="change_20160609_snb">Modified logic for identifiying
						provision bills/warnings to solve webteam 326604 issue. Detailed logic on
						contruction of Rosetta source markup received from LBU and this section was
						modified accordingly to look for
							<sourcexml>cttr:annotations/heading/note/h</sourcexml> contains
							<sourcexml>"@id="OP15A"</sourcexml> instead of previous
							<sourcexml>cttr:annotations/heading/note</sourcexml> contains
							<sourcexml>@id="OP15"</sourcexml>. Corresponding changes to the logic
						for suppression of entire section, and for determination of
							<targetxml>primlawinfo:primlawinfo/@xml:id</targetxml> value. Updated
						Example 2 target markup to have correct structure based upon new LBU
						info.</ph></p>
				<p>2016-06-03: <ph id="change_20160603a_snb">Modified Example 1 source markup
						example to match new lnlink structures and instructions.</ph></p>
				<p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress
						output when only whitespace or the text "A Bill impacts this Act" exist
						within descendant <sourcexml>p/text</sourcexml> elements.</ph></p>
				<p>2016-03-22: <ph id="change_20160322a_snb">Added
							<sourcexml>cttr:annotations</sourcexml> contains
							<sourcexml>"@id="OP15"</sourcexml> as an entry condition for this
						section.</ph>
				</p>
				<p>2016-03-01: <ph id="change_20160301a_snb">Changed logic for determining value of
							<sourcexml>primlawinfo:primlawinfo/@xml:id</sourcexml> to use explicit
						values instead of inherting the value of
							<sourcexml>cttr:annotations/@id</sourcexml>. This change solves an issue
						found during conversion testing where a different source markup structure
						was resulting in creation of two <sourcexml>@xml:id</sourcexml> attributes
						within different elements.</ph>
				</p>
				<p>2015-12-11: <ph id="change_20151211g_snb">Added mapping for provisions
							(<sourcexml>"@id="OP15"</sourcexml>). Moved
							<sourcexml>[@xml:id="refsection-OI12"]</sourcexml> to be an attribute of
							<sourcexml>primlawinfo:primlawinfo</sourcexml>, and added values to
						support provisions. Add instruction to map the title
							(<sourcexml>heading/title</sourcexml> and
							<sourcexml>heading/note/h</sourcexml>). Replaced the structure for
						mapping content of <sourcexml>cttr:annotations/heading/note/p</sourcexml>
						and <sourcexml>cttr:annotations/heading/note/l/li/p</sourcexml> with a more
						general mapping that supports additional elements existing in provision
						documents. Added <sourcexml>@xml:id="refsection-OI12"</sourcexml> to example
						target markup. Adding example of Provision markup.</ph>
				</p>

				<!--RICK on bills warnings
      -	Cttr:annotation[@id-“OP15”] will always be generated.  It is the larger grouping indicated.  (It is still called OP15 for historical reasons, as the design has changed, don’t be confused)
      -	If there are some bills it will generate Note (containing h[@id=”OP15A”]) (otherwise no Note)
      -	If there is a former title it will then generate Note with <h>Former Title</h>  in a <p>, and then if it exists, a paragraph with the OP19 [renamed by]
        -	If there is an OP19.1 replacing it will hen generate a Note with <h>Replacing</h>  plus optionally <p> for the replacing link
          -	It will then always then generate a note with h[@id=”OP201”] [More Links]
          -	It will  generate always then generate sub note for OP20 and optionally OP22 and optionally OP21 [defined terms]
          
          The behavior of the current main code is this:
          
          -	If there are bills then <cttr:annotations[@id=”OI12”] will be generated.
            -	If this annotations is generated, then it will always have  p[@id=”OI12a”  for the “A bill impacts this Act”  and it will always have l[@id=”OI12B”]  for the bills list.
          -->
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita  -->
	<xsl:template match="source_cttr:annotations[@id='OP15']/heading/note[child::h[contains(.,'More Links')]]/p/text" mode="morelinks">
		
			
			<xsl:for-each-group select="*" group-adjacent="if(self::note) then 1 else 0">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=1">
						<ref:relatedcontent>
							<xsl:attribute name="xml:id">refsection-links</xsl:attribute>
							<xsl:attribute name="contenttype">more-links</xsl:attribute>
							<ref:anchor>
								<xsl:attribute name="id">
									<xsl:text>ref-more-links</xsl:text>
								</xsl:attribute>
							</ref:anchor>  
							<heading>
								<title>More Links</title>
							</heading>
							<xsl:for-each select="current-group()">
								<ref:relatedcontentitem>
									<ref:related-content-link>
										<xsl:apply-templates select="node()"/> 
									</ref:related-content-link>
								</ref:relatedcontentitem>
							</xsl:for-each>
						</ref:relatedcontent> 
					</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
			
		
		
	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id='OI12' or @id='OP15']">
		
		<primlawinfo:primlawinfo>	
			<xsl:choose>
				<xsl:when test="@id='OP15A'">
					<xsl:attribute name="xml:id">
						<xsl:text>refsection-OP15</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="@id='OP15'">
					<xsl:attribute name="xml:id">
						<xsl:text>refsection-OP15</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="xml:id">
						<xsl:text>refsection-OI12</xsl:text>
					</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>	
			
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:attribute name="statusgroupcode">
						<xsl:text>billwarning</xsl:text>
					</xsl:attribute>
					<xsl:apply-templates select="heading"></xsl:apply-templates>
					<xsl:if test="child::heading/note">
						<xsl:for-each select="child::heading/note/p/text | child::heading/note/l/li/p/text">
							<legisinfo:status>
								<legisinfo:statustext>
									<xsl:apply-templates/>
								</legisinfo:statustext>
							</legisinfo:status>
						</xsl:for-each>
					</xsl:if>
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>
		<xsl:apply-templates select="heading/note[child::h[contains(.,'More Links')]]/p/text" mode="morelinks"></xsl:apply-templates>
	</xsl:template>

	<!--<xsl:template match="source_cttr:annotations[@id='OI12' or @id='OP15A']">
		
		<primlawinfo:primlawinfo>	
			<xsl:choose>
				<xsl:when test="@id='OP15A'">
					<xsl:attribute name="xml:id">
						<xsl:text>refsection-OP15</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="xml:id">
						<xsl:text>refsection-OI12</xsl:text>
					</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>			
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:attribute name="statusgroupcode">
						<xsl:text>billwarning</xsl:text>
					</xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>
	</xsl:template>-->
	
	
	<!--<xsl:template match="source_cttr:annotations[@id='OI12' or @id='OP15A' or @id='OP15' or @id='OI17']/heading/note">
		<xsl:if test="child::p/text or child::l/li/p/text">
			<legisinfo:status>
				<legisinfo:statustext>
					<proc:nl/>
					<proc:nl/>
					<xsl:apply-templates select="@* |node()"/>
				</legisinfo:statustext>
			</legisinfo:status>
		</xsl:if>		
	</xsl:template>-->
	
	<!--<xsl:template match="source_cttr:annotations[@id='OI12' or @id='OP15A' or @id='OP15']/heading/title | source_cttr:annotations[@id='OI12'or @id='OP15A' or @id='OP15']/heading/note/h">
		<legisinfo:statusgroup>
			<heading>
				<title>
					<xsl:apply-templates/>
				</title>
			</heading>
			<xsl:apply-templates select="../note/p/text | ../note/l/li/p/text" mode="billtext"/>
		</legisinfo:statusgroup>		
	</xsl:template>-->
	
<!--	<xsl:template match="source_cttr:annotations[@id='OI12' or @id='OP15A' or @id='OP15']/heading/note/p/text | source_cttr:annotations[@id='OI12' or @id='OP15A' or @id='OP15']/heading/note/l/li/p/text | source_cttr:annotations[@id='OI12' or @id='OP15A' or @id='OP15']/heading/note/p" mode="billtext" priority="2">
		
		<legisinfo:status>
			<legisinfo:statustext>
				<proc:nl/>
				<proc:nl/>
				<xsl:apply-templates select="@* |node()"/>
			</legisinfo:statustext>
		</legisinfo:status>
	</xsl:template>	-->
	
	<!--<xsl:template match="source_cttr:annotations/source_cttr:annot/leg:info/note[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>-->
	
	<!--<xsl:template match="source_cttr:annotations[@id='OI12']/heading/note[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)=''] | source_cttr:annotations[@id='OI12']/heading/note/h[@id='OP15A'][not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>-->
	
	<!--<xsl:template match="@id=&#34;OI12&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="billwarning"]   -\->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note/h">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="billwarning"]   -\->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="&#34;@id=&#34;OP15A&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="billwarning"]   -\->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:annotations[@id=&#34;OI12&#34;]/heading/note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/@xml:id   -\->
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note[h/@id=&#34;OP15A&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/@xml:id   -\->
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="p/text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/@xml:id   -\->
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="primlawinfo:primlawinfo/@xml:id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/@xml:id   -\->
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="heading/title">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="heading/note/h">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="l/li/p/text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -\->
		<legisinfo:statusgroup>
			<legisinfo:status>
				<legisinfo:statustext>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statustext>
			</legisinfo:status>
		</legisinfo:statusgroup>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -\->
		<legisinfo:statusgroup>
			<legisinfo:status>
				<legisinfo:statustext>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:statustext>
			</legisinfo:status>
		</legisinfo:statusgroup>

	</xsl:template>
	

	

	<xsl:template match="@id=&#34;OP15&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/@xml:id   -\->
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="&#34;@id=&#34;OP15&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="cttr:annotations/@id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="@xml:id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="[@xml:id=&#34;refsection-OI12&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="primlawinfo:primlawinfo">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note/p">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note/l/li/p">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="@xml:id=&#34;refsection-OI12&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>
-->
</xsl:stylesheet>
