<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_case.content_case.author">
   <title>case:body/case:content/case:author <lnpid>id-AU07-19211</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:content/case:author</sourcexml> becomes 
                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock</targetxml>.
                
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:author&gt;
        &lt;/case:author&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:body&gt;
    &lt;sigblock&gt;...
    &lt;/sigblock&gt;    
&lt;/courtorder:body&gt;
                
</pre>
                
                The children are described below:
                <ul class="- topic/ul ">
                    <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:author/person</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person</targetxml>.
                        The children are described below:
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:author/person/name.text</sourcexml> becomes
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/person:name.text</targetxml>.
                            
<pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:author&gt;
            &lt;person&gt;
                &lt;name.text&gt;A R TRAVES&lt;/name.text&gt;
            &lt;/person&gt;
        &lt;/case:author&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;A R TRAVES&lt;/person:name.text&gt;
                &lt;/person:person&gt;    
            &lt;/text&gt;
        &lt;/p&gt;    
    &lt;/sigblock&gt;    
&lt;/courtorder:body&gt;
                
</pre>
                            
                            </li>
                        </ul>
                    </li>
                    <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:author/role</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/role</targetxml>.
                        
<pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:author&gt;
            &lt;role&gt;Senior Associate to the Chief Justice&lt;/role&gt;
        &lt;/case:author&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;role&gt;Senior Associate to the Chief Justice&lt;/role&gt;
                &lt;/person:person&gt;    
            &lt;/text&gt;
        &lt;/p&gt;    
    &lt;/sigblock&gt;    
&lt;/courtorder:body&gt;
                
</pre>    
                        
                    </li>
                    <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:author/date</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/date</targetxml>.
<pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:author&gt;
            &lt;date&gt;30 October 1996&lt;/date&gt;
        &lt;/case:author&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;date&gt;30 October 1996&lt;/date&gt;    
            &lt;/text&gt;
        &lt;/p&gt;    
    &lt;/sigblock&gt;    
&lt;/courtorder:body&gt;
                
</pre>      
                        
                    </li>
                    <li class="- topic/li ">                        
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:author/org</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/entity:org</targetxml>
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:author&gt;
            &lt;org&gt;High Court of Australia Canberra&lt;/org&gt;
        &lt;/case:author&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;entity:org&gt;High Court of Australia Canberra&lt;/entity:org&gt;
            &lt;/text&gt;     
        &lt;/p&gt;
    &lt;/sigblock&gt;                                        
&lt;/courtorder:body&gt;   
</pre>     
                    </li>
                  </ul>
                
               </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.body_case.content_case.author.dita  -->

	

	<xsl:template match="case:content/case:author">
		<!--  Original Target XPath:  courtorder:body/sigblock/p/text/person:person   -->
		<!--<courtorder:body>-->
	    <sigblock xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
  			<p>
				<text>
				    <xsl:choose>
				        <xsl:when test="person and role">
				            <xsl:apply-templates select="@* | node() except role"/>
				        </xsl:when>
				        <xsl:otherwise>				            
				            <xsl:apply-templates select="@* | node()"/>
				        </xsl:otherwise>
				    </xsl:choose>
				</text>
			</p>
		</sigblock>
		<!--</courtorder:body>-->
	</xsl:template>
    
    <xsl:template match="case:content/case:author/person" priority="35">
        <!-- bring in the sibling role if present. 35 priority needed to override other behaviors intended for case:appendix-->
        <person:person>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="preceding-sibling::role or following-sibling::role">
                <xsl:apply-templates select="preceding-sibling::role | following-sibling::role"/>
            </xsl:if>
        </person:person>
    </xsl:template>
	
	<!-- NOTE: assume the rest of this file will be handled by the person template -->

<!--	<xsl:template match="case:content/case:author/person/name.text">
		<!-\-  Original Target XPath:  courtorder:body/sigblock/p/text/person:person/person:name.text   -\->
		<courtorder:body>
			<sigblock>
				<p>
					<text>
						<person:person xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
							<person:name.text>
								<xsl:apply-templates select="@* | node()"/>
							</person:name.text>
						</person:person>
					</text>
				</p>
			</sigblock>
		</courtorder:body>
	</xsl:template>
-->
	<!--<xsl:template match="case:content/case:author/role">
		<!-\-  Original Target XPath:  courtorder:body/sigblock/p/text/person:person/role   -\->
		<courtorder:body>
			<sigblock>
				<p>
					<text>
						<person:person xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
							<role>
								<xsl:apply-templates select="@* | node()"/>
							</role>
						</person:person>
					</text>
				</p>
			</sigblock>
		</courtorder:body>
	</xsl:template>-->

	<!--<xsl:template match="case:content/case:author/date">
		<!-\-  Original Target XPath:  courtorder:body/sigblock/p/text/date   -\->
		<courtorder:body>
			<sigblock>
				<p>
					<text>
						<date>
							<xsl:apply-templates select="@* | node()"/>
						</date>
					</text>
				</p>
			</sigblock>
		</courtorder:body>
	</xsl:template>-->

	<!--<xsl:template match="case:content/case:author/org">
		<!-\-  Original Target XPath:  courtorder:body/sigblock/p/text/entity:org   -\->
		<courtorder:body>
			<sigblock>
				<p>
					<text>
						<entity:org xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/">
							<xsl:apply-templates select="@* | node()"/>
						</entity:org>
					</text>
				</p>
			</sigblock>
		</courtorder:body>-->

	<!--</xsl:template>-->

</xsl:stylesheet>