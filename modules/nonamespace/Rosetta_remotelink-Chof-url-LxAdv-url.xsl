<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_url">
  <title><sourcexml>url/remotelink</sourcexml> to <targetxml>url</targetxml>
    <lnpid>id-CCCC-10464</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <ul>
        <li>Use case: <sourcexml>url/remotelink</sourcexml> when the content of
            <sourcexml>remotelink</sourcexml> begins with "http".<ul>
            <li><sourcexml>url</sourcexml> becomes <targetxml>url</targetxml>.</li>
            <li><sourcexml>remotelink</sourcexml> is suppressed, but its content is mapped as
              folllows: <ul>
                <li>The content of <sourcexml>remotelink</sourcexml> is mapped to
                    <targetxml>url/@normval</targetxml>.</li>
                <li>The content of <sourcexml>remotelink</sourcexml> also becomes the content of
                    <targetxml>url</targetxml>.</li>
              </ul></li>
            <li>If <sourcexml>emph</sourcexml> occurs as a child <sourcexml>remotelink</sourcexml>,
              it should be omitted.</li>
          </ul>
        </li>
        <li>Use case: <sourcexml>url/remotelink</sourcexml> when the content of
            <sourcexml>remotelink</sourcexml> begins with "www." (4 characters, a period must follow "www").<ul>
            <li><sourcexml>url</sourcexml> becomes <targetxml>url</targetxml>.</li>
            <li><sourcexml>remotelink</sourcexml> is suppressed, but its content is mapped as
              follows: <ul>
                <li>The content of <sourcexml>remotelink</sourcexml> is mapped to
                    <targetxml>url/@normval</targetxml>, with the text "http://" prepended to the
                  value of <targetxml>url/@normval</targetxml>.</li>
                <li>The content of <sourcexml>remotelink</sourcexml> also becomes the content of
                    <targetxml>url</targetxml>. Note that “http://” is <b>not</b> prepended to the
                  content of <targetxml>url</targetxml>.</li>
                <li>If <sourcexml>emph</sourcexml> occurs as a child
                    <sourcexml>remotelink</sourcexml>, it should be omitted.</li>
              </ul></li>
          </ul>
        </li>
        <li>Use case: <sourcexml>url/remotelink</sourcexml> when the content of
            <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http" or "www.". Drop
            <sourcexml>url</sourcexml> start-tag and end-tag, but not its content. The
            <sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink</targetxml> with
          children <targetxml>ref:marker</targetxml> and <targetxml>ref:locator</targetxml>,
          populated as follows: <ul>
            <li>The attribute <sourcexml>remotelink/@status</sourcexml> is always suppressed, it is never output to the target document.</li>
            <li>The <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
            <li>The contents of <sourcexml>remotelink</sourcexml> becomes the contents of child
                <targetxml>ref:lnlink/ref:marker</targetxml>. Any subelements (such as
                <sourcexml>emph</sourcexml> and <sourcexml>inlineobject</sourcexml>) are converted
              as described elsewhere by instructions given for those specific elements. </li>
            <li>The child <targetxml>ref:lnlink/ref:locator</targetxml> is created, and within it
              the child <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> is created,
              and within it the children
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</targetxml> are
              created.</li>
            <li>The <targetxml>ref:key-name/@name</targetxml> attribute is set to "URL".</li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
                <targetxml>ref:key-value/@value</targetxml> is set to the combined value of
                <sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://" (a colon and two
              slashes), followed by the value of <sourcexml>remotelink/@href</sourcexml>.<ul>
                <li>Exception: If content of <sourcexml>@hrefclass</sourcexml> is already present in
                    <sourcexml>@href</sourcexml> then do not concatenate. Populate
                    <targetxml>@value</targetxml> with content of <sourcexml>@href</sourcexml>.</li>
              </ul></li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
                <targetxml>ref:key-value/@value</targetxml> is set to the value of
                <sourcexml>remotelink/@href</sourcexml>.</li>
            <li>Drop <sourcexml>remotelink/@newwindow</sourcexml>.</li>
          </ul>
        </li>
      </ul>
    </section>
    <example>
      <title>Source XML showing <sourcexml>url/remotelink</sourcexml> when the content of
          <sourcexml>remotelink</sourcexml> begins with "http"</title>
      <codeblock>

&lt;url&gt;
  &lt;remotelink href="www.uspto.gov/trademarks/teas/index.jsp" hrefclass="http" newwindow="YES"&gt;http://www.uspto.gov/trademarks/teas/index.jsp&lt;/remotelink&gt;
&lt;/url&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;url normval="http://www.uspto.gov/trademarks/teas/index.jsp"&gt;http://www.uspto.gov/trademarks/teas/index.jsp&lt;/url&gt;

			</codeblock>
    </example>

    <example>
      <title>Source XML showing <sourcexml>emph</sourcexml> inside
          <sourcexml>url/remotelink</sourcexml></title>
      <codeblock>

&lt;url&gt;
    &lt;remotelink href="www.lawandarts.co.uk/" hrefclass="http"&gt;
        &lt;emph typestyle="it"&gt;
            &lt;emph typestyle="un"&gt;www.lawandarts.co.uk&lt;/emph&gt;
        &lt;/emph&gt;
    &lt;/remotelink&gt;
&lt;/url&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;url normval="http://www.lawandarts.co.uk"&gt;www.lawandarts.co.uk&lt;/url&gt;

			</codeblock>
    </example>

    <example>
      <title>Source XML showing <sourcexml>url/remotelink</sourcexml> when the content of
          <sourcexml>remotelink</sourcexml> begins with "www."</title>
      <codeblock>

&lt;url&gt;
  &lt;remotelink href="http://www.uspto.gov/trademarks/teas/index.jsp" newwindow="YES"&gt;www.uspto.gov/trademarks/teas/index.jsp&lt;/remotelink&gt;
&lt;/url&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;url normval="http://www.uspto.gov/trademarks/teas/index.jsp"&gt;www.uspto.gov/trademarks/teas/index.jsp&lt;/url&gt;

			</codeblock>
    </example>
    <example>
      <title>Source XML showing <sourcexml>url/remotelink</sourcexml> when the content of
          <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http" or "www."</title>
      <codeblock>
           
&lt;url&gt;
  &lt;remotelink href="www.ato.gov.au" hrefclass="http" newwindow="YES"
    service="SEARCH" status="valid"&gt; Australian Tax Office (ATO)&lt;/remotelink&gt;
&lt;/url&gt;
&lt;!-- The following illustrates scenario where content of @hrefclass is already present in @href and so values are not concatenated for target --&gt;
&lt;url&gt;
  &lt;remotelink href="http://www.acmecorp.com" hrefclass="http"&gt;Acme Corporation&lt;/remotelink&gt;
&lt;/url&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML showing <sourcexml>url/remotelink</sourcexml> when the content of
          <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http" or "www"</title>
      <codeblock>

&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Australian Tax Office (ATO)&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.ato.gov.au"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Acme Corporation&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.acmecorp.com"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

			</codeblock>
    </example>

    <section>
      <title>Changes</title>
      <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</ph></p>
      <p>2015-01-09: <ph id="change_20150109_jm">Within use case that maps to
            <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values when
            <sourcexml>@hrefclass</sourcexml> content is already present in
            <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
          data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</ph></p>
      <p>2013-03-11: <ph id="change_20130311_DSF">Added instructions for omitting
            <sourcexml>emph</sourcexml> when it occurs as a child of
            <sourcexml>url/remotelink</sourcexml>. Added an sample mapping demonstrating this
          scenario.</ph></p>
      <p>2012-06-28: Added instructions for the use case where <sourcexml>remotelink</sourcexml>
        begins with "www." as well as an example of this conversion.</p>
      <p>2012-06-22: Corrected to show mapping to <targetxml>ref:lnlink</targetxml> (instead of
          <targetxml>ref:crossreference</targetxml>) when content of
          <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http" or "www.".</p>
      <p>2012-05-21: Created.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-Chof-url-LxAdv-url.dita  -->
	<!--<xsl:message>Rosetta_remotelink-Chof-url-LxAdv-url.xsl requires manual development!</xsl:message> -->

	<xsl:template match="url/remotelink" priority="25">
	  <xsl:choose>
	  
         <!-- SNB: 2017-11-10 : add logic for LPA CI Section 6.103. remotelink/@href (id-CCCC-10467) 
         (Rosetta_remotelink-LxAdv-url_(special).dita"), which is different from logic below. Fix for webstar 7045572. -->
         <xsl:when test="(not(@service) or @service!='DOC-ID') and @href and $streamID=('USLPA')">
            <xsl:choose>
               <xsl:when test="(starts-with(., 'http://') or starts-with(., 'https://') 
                           or starts-with(., 'nohttp://') or starts-with(., 'mailto://')
                           or starts-with(., 'ftp://') or starts-with(., 'www.')
                           )">
                  <url>
                     <xsl:attribute name="normval">
                        <xsl:choose>
                           <xsl:when test="@hrefclass">
                              <xsl:value-of select="concat(@hrefclass,'://', ./@href)"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="./@href"/>
                           </xsl:otherwise>
                        </xsl:choose>
                      </xsl:attribute>
                     <xsl:apply-templates/>
                  </url>
               </xsl:when>
               <xsl:otherwise>
                  <ref:lnlink service="URL">
                     <ref:marker>
                        <xsl:apply-templates/>
                     </ref:marker>
                     <ref:locator>
                        <ref:locator-key>
                           <ref:key-name name="URL"/>
                           <ref:key-value>
                              <xsl:attribute name="value">
                                 <xsl:choose>
                                    <xsl:when test="@hrefclass and not(starts-with(./@href, ./@hrefclass))">
                                       <xsl:value-of select="concat(@hrefclass,'://', ./@href)"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <xsl:value-of select="./@href"/>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:attribute>
                           </ref:key-value>
                        </ref:locator-key>
                     </ref:locator>
                  </ref:lnlink>                  
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <!-- SNB: 2017-11-10 : end change -->	  
	  
	    <xsl:when test="starts-with(., 'http') or starts-with(., 'www')">
	      <url xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:attribute name="normval">
	          <xsl:if test="starts-with(./@href, 'http')">
	            <xsl:value-of select="./@href"/>
	          </xsl:if>
	          <xsl:if test="starts-with(./@href, 'www')">
	            <xsl:value-of select="concat('http://', ./@href)"/>
	          </xsl:if>    
	        </xsl:attribute>
	        <xsl:choose>
	          <xsl:when test="$streamID='UK09'">
	            <xsl:apply-templates select="text()"/> <!-- AS:child element under url/remotelink should be suppressed -->
	          </xsl:when>
	        <xsl:otherwise>
	          <xsl:apply-templates/> 
	        </xsl:otherwise>
	        </xsl:choose>
	      </url>
	    </xsl:when>
	    <xsl:when test="descendant::emph[starts-with(.,'http')] or descendant::emph[starts-with(.,'www')]">
	      <url xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:attribute name="normval">
	          <xsl:if test="starts-with(./@href, 'http')">
	            <xsl:value-of select="./@href"/>
	          </xsl:if>
	          <xsl:if test="starts-with(./@href, 'www')">
	            <xsl:value-of select="concat('http://', ./@href)"/>
	          </xsl:if>     
	        </xsl:attribute>
	        <xsl:apply-templates/>
	      </url>
	    </xsl:when>
	    
	    <xsl:when test="(starts-with(., 'http') or starts-with(., 'www') or starts-with(@href, 'http') or starts-with(@href, 'www')) and $streamID='AU21'">
	      <url xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:attribute name="normval">
	          <xsl:if test="starts-with(./@href, 'http')">
	            <xsl:value-of select="./@href"/>
	          </xsl:if>
	          <xsl:if test="starts-with(./@href, 'www')">
	            <xsl:value-of select="concat('http://', ./@href)"/>
	          </xsl:if>    
	        </xsl:attribute>
	       <xsl:apply-templates select="node()"/>
	      </url>
	    </xsl:when>
	    
	    <xsl:when test="not(starts-with(., 'http')) and not(starts-with(., 'www'))">
	      <ref:lnlink>
	        <xsl:attribute name="service">
	         <xsl:text>URL</xsl:text>
	        </xsl:attribute>
	          <ref:marker>
	            <xsl:choose>
	              <xsl:when test="$streamID='AU21'">
	                <ref:inlineobject>
	                  <ref:locator>
	                    <ref:locator-key>
	                      <ref:key-name name="object-key"/>
	                      <ref:key-value value="5DT1-HR81-66TK-240F-00000-00-12633-4354-CM-{ancestor::p[1]/preceding-sibling::h[1]}-2"/>
	                    </ref:locator-key>
	                    <ref:locator-params>
	                      <proc:param name="componentseq" value="1"/>
	                      <proc:param name="object-type" value="image"/>
	                      <proc:param name="object-smi" value="12633"/>
	                    </ref:locator-params>
	                  </ref:locator>
	                </ref:inlineobject>
	              </xsl:when>
	              <xsl:otherwise>
	                <xsl:apply-templates/>    
	              </xsl:otherwise>
	            </xsl:choose>
	            
	          </ref:marker>
	          <ref:locator>
	            <ref:locator-key>
	              <ref:key-name>
	                <xsl:attribute name="name">
	                  <xsl:text>URL</xsl:text>
	                </xsl:attribute>
	              </ref:key-name>
	              <ref:key-value>
	                <xsl:attribute name="value">
	                  <xsl:choose>
	                    <xsl:when test="starts-with(./@href, 'http')">
	                      <xsl:value-of select="./@href"/>
	                    </xsl:when>
	                    <xsl:when test="starts-with(./@href, 'www')">
	                      <xsl:value-of select="concat('http://', ./@href)"/>
	                    </xsl:when>
	                    <xsl:when test="./@hrefclass='http'">
	                      <xsl:value-of select="concat('http://', ./@href)"/>
	                    </xsl:when>
	                    <xsl:otherwise>
	                      <xsl:value-of select="./@href"/>
	                    </xsl:otherwise>
	                  </xsl:choose>
	                </xsl:attribute>
	              </ref:key-value>
	            </ref:locator-key>
	          </ref:locator>
	      </ref:lnlink>
	    </xsl:when>
	  </xsl:choose>
	  
		<!--  Original Target XPath:  url   -->
		<!--<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>-->

	</xsl:template>
  
  <xsl:template match="url[remotelink]">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>

	<!-- JL need to add emph passthrough to make this validate! -->
  <xsl:template match="emph[ancestor::remotelink[parent::url]]" priority="30">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>