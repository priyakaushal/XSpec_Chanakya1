<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_verbatim.dita">
    <title>verbatim <lnpid>id-CA11-14816</lnpid></title>
    <body>
        <section>
            <p>This conversion is applicable when <sourcexml>verbatim</sourcexml> is found in these two XPaths:</p>
            <p> /DIGESTDOC/dig:body/bodytext/p/text/verbatim</p>
            <p> /DIGESTDOC/dig:body/level/bodytext/p/text/verbatim</p>
            <p><sourcexml>verbatim</sourcexml> is always removed in the target markup and single newlines removed. Multiple consecutive newlines are retained.</p>
            <p>When we have single <sourcexml>&lt;nl/&gt;</sourcexml> element then
                    <sourcexml>&lt;nl/&gt;</sourcexml> replace with <b>single space</b> and when we
                have consecutive <sourcexml>&lt;nl/&gt;&lt;nl/&gt;</sourcexml> then consecutive
                    <sourcexml>&lt;nl/&gt;&lt;nl/&gt;</sourcexml> becomes single
                    <targetxml>&lt;proc:nl/&gt;</targetxml> element in target.</p>
        </section>
        <section>
            <title>When <sourcexml>verbatim</sourcexml> contains word <b>DATE/PLACE:</b></title>
            <p>When <sourcexml>verbatim</sourcexml> contains word <b>DATE/PLACE:</b> in the PCDATA then conversion should place DATE/PLACE: value in
                    <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/biblio:provenance</targetxml>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;DATE/PLACE: October 10-13, 2000; Beau Rivage Resort -
            Biloxi, Mississippi (Pre-Symposium Special Sessions October 8-10, 2000) &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

          </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        ...
        &lt;biblio:publicationinfo&gt;
            &lt;biblio:provenance&gt;October 10-13, 2000; Beau Rivage Resort - Biloxi, Mississippi
            (Pre-Symposium Special Sessions October 8-10, 2000) &lt;/biblio:provenance&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;

          </codeblock>
        </example>
        <section>
            <title>When <sourcexml>verbatim</sourcexml> contains word <b>URL</b></title>
            <p>When <sourcexml>verbatim</sourcexml> contains word <b>URL:</b> in the PCDATA then
                conversion should place URL: value in
                    <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/ref:relatedrefs/ref:referenceitem/textitem/url/@normval</targetxml>.</p>
            <p>The value for <targetxml>url/@normval</targetxml> should be taken from the value of <sourcexml>verbatim</sourcexml> element</p>
            <p>Conversion should generate <targetxml>@referencetype="URL"</targetxml> attribute in <targetxml>ref:relatedrefs</targetxml> element.</p>
            <note>Remove extraneous spaces to 0 spaces within the unit of text.</note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;URL:           http://haven.ios.com/[tilde]nyrc/homepage.html
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

          </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        ...
        &lt;biblio:relevantinfo&gt;
            &lt;ref:relatedrefs referencetype="URL"&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt;
                        &lt;url normval="http://haven.ios.com/[tilde]nyrc/homepage.html"&gt;http://haven.ios.com/[tilde]nyrc/homepage.html&lt;/url&gt;
                    &lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;

          </codeblock>
        </example>
        <section>
            <title>When <sourcexml>verbatim</sourcexml> contains word <b>PUBLISHING INFO:</b></title>
            <p>When <sourcexml>verbatim</sourcexml> contains word <b>PUBLISHING INFO:</b> in the PCDATA then conversion should place PUBLISHING INFO: value in
                    <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/textitem</targetxml>.</p>
            <note>Remove extraneous spaces to 1 spaces within the unit of text.</note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;PUBLISHING INFO:    2nd Edition (March 1999): Springer Verlag;                     ISBN: 0387915842 &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

          </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        ...
        &lt;biblio:publicationinfo&gt;
            &lt;textitem&gt;2nd Edition (March 1999): Springer Verlag; ISBN: 0387915842 &lt;/textitem&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;

          </codeblock>
        </example>
        <section>
            <title>When <sourcexml>verbatim</sourcexml> contains word <b>COUNTRY:</b></title>
            <p>When <sourcexml>verbatim</sourcexml> contains word <b>COUNTRY:</b> in the PCDATA than conversion should place COUNTRY: value in the
                    <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/biblio:jurisdiction</targetxml>.</p>
            <p>Always last label of <sourcexml>verbatim</sourcexml> element, follows SUBJECT: or DESCRIPTION: label.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;&lt;nl/&gt;
            &lt;nl/&gt; DESCRIPTION: The programme is sponsored by
            Promega&lt;nl/&gt; Corporation. The symposium features
            sessions&lt;nl/&gt; addressing:&lt;nl/&gt;
            &lt;nl/&gt; * Innovations in DNA Typing
            Technologies&lt;nl/&gt; * DNA Databases &amp;amp;amp; Their
            Impact on Crime&lt;nl/&gt; * Grant Outlook and Funding
            for DNA Programs&lt;nl/&gt; * Case Studies using DNA
            Typing to Solve&lt;nl/&gt; Crimes&lt;nl/&gt;
            &lt;nl/&gt; Fees for the symposium are US$450 if&lt;nl/&gt;
            registering before August 1, 2000. After
            August&lt;nl/&gt; 1, the registration fee will increase
            to&lt;nl/&gt; US$525. For more information, please
            contact&lt;nl/&gt; Carol Zabit, Phone: (608) 277-2670,
            Fax: (608)&lt;nl/&gt; 273-6455 or e-mail czabit&amp;amp;#x0040;promega.com.&lt;nl/&gt;
            &lt;nl/&gt; COUNTRY: U.S.A.&lt;nl/&gt;
            &lt;nl/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

          </codeblock>
            <title>Target XML</title>
            <codeblock>
&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;section&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;proc:nl/&gt;
                        The programme is sponsored by Promega
                        Corporation. The symposium features sessions addressing:
                        &lt;proc:nl/&gt; * Innovations in DNA Typing Technologies * DNA
                        Databases &amp;amp;amp; Their Impact on Crime&lt; * Grant Outlook and
                        Funding for DNA Programs * Case Studies using DNA Typing to
                        Solve Crimes&lt;proc:nl/&gt;
                        Fees for the symposium are US$450 if registering
                        before August 1, 2000. After August 1, the registration fee
                        will increase to US$525. For more information, please
                        contact Carol Zabit, Phone: (608) 277-2670, Fax:
                        (608) 273-6455 or e-mail czabit&amp;amp;#x0040;promega.com.&lt;proc:nl/&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/section&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;biblio:jurisdiction&gt;U.S.A.&lt;/biblio:jurisdiction&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;
          </codeblock>
        </example>
        <section>
            <title>When <sourcexml>verbatim</sourcexml> contains word <b>DESCRIPTION:</b> or <b>SUBJECT: </b></title>
            <p>When <sourcexml>verbatim</sourcexml> contains word <b>DESCRIPTION:</b> or <b>SUBJECT: </b> in the PCDATA than conversion should remove the label
                    <b>DESCRIPTION:</b> or <b>SUBJECT:</b>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;&lt;nl/&gt;
            &lt;nl/&gt; DESCRIPTION: Includes analysis of such topics as DNA&lt;nl/&gt; typing to identify
            suspects, the origin&lt;nl/&gt; and maintenance of DNA polymorphism, and&lt;nl/&gt; technical and
            ethical issues of further&lt;nl/&gt; forensic DNA development.&lt;nl/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

          </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;section&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;proc:nl/&gt;
                            Includes analysis of such
                            topics as DNA typing to identify suspects, the
                            origin and maintenance of DNA polymorphism, and
                            technical and ethical issues of further forensic DNA
                            development.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/section&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;

          </codeblock>
        </example>
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;
            &lt;nl/&gt;
            &lt;nl/&gt;SUBJECT: DNA Testing&lt;nl/&gt;
            &lt;nl/&gt; Statistics&lt;nl/&gt;
            &lt;nl/&gt; Population Genetic Data&lt;nl/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;
          </codeblock>
            <title>Target XML</title>
            <codeblock>
&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;section&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;verbatim verbatimclass="future"&gt;
                            &lt;proc:nl/&gt; 
                            SUBJECT: DNA Testing&lt;proc:nl/&gt;
                            Statistics&lt;proc:nl/&gt;
                            Population Genetic Data 
                        &lt;/verbatim&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/section&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;
          </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-09-24: <ph id="change_20150924_PS">Added instruction for <sourcexml>nl</sourcexml> element processing and updated snippet accordingly, Applicable on CA11, Webteam # 310235.</ph></p>
            <p>2014-12-18: <ph id="change_20141218_AK">Added <targetxml>@normval</targetxml> attribute in <targetxml> url</targetxml> element in order for url to be linkable, applies to CA11.</ph></p>
            <p>2014-10-23: <ph id="change_20141023_CN">Removed <targetxml>verbatim</targetxml> and converted to paragraphs. Phase 6 Canada Discussion RFA #
                    146.</ph></p>
            <p>2014-08-01: <ph id="change_20140801_PS">Added <targetxml>@referencetype</targetxml> attribute in <targetxml>ref:relatedrefs</targetxml>, R4.5
                    Issue # 1780, this immediately applies to CA11.</ph></p>
            <p>2014-06-30: <ph id="change_20140630_PS">Updated sample snippet to capture <targetxml>proc:nl</targetxml> element as per input source data, This
                    change is immediate allpies to CA11 Indices.</ph></p><p>2013-09-03: <ph id="change_20130903_PS">Updated sample snippet when the
                        <sourcexml>verbatim</sourcexml> text contains both COUNTRY and DESCRIPTION label.</ph></p>
            <p>2013-08-08: <ph id="change_20130808_PS">Removed note that says CR has been created to allow <targetxml>biblio:publicationinfo</targetxml> can
                    occur at any sequence to the content model of <targetxml>biblio:entry</targetxml> and CR # is DADB2013072905525800.</ph></p>
            <p>2013-07-31: <ph id="change_20130731_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	

	
    
    <!-- Apply below template inside  <biblio:provenance> element-->
    <xsl:template match="verbatim[contains(.,'DATE/PLACE:')]" priority="25">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            <biblio:publicationinfo>
                <biblio:provenance>
                    <xsl:apply-templates select="node()"/>
                </biblio:provenance>
            </biblio:publicationinfo>
        </xsl:if>
    </xsl:template>

    <!-- Apply below template in @normval attribute and ref:relatedrefs element -->
    <xsl:template match="verbatim[contains(.,'URL:')]" priority="25">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            <xsl:apply-templates select="node()"/>
        </xsl:if>
    </xsl:template>

    <!-- Apply below template inside textitem -->
    <xsl:template match="verbatim[contains(.,'PUBLISHING INFO:')]" priority="25">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            <xsl:apply-templates select="node()"/>
        </xsl:if>
    </xsl:template>

    <!-- Apply below template inside biblio:jurisdiction  -->
    <xsl:template match="verbatim[contains(.,'COUNTRY:')]" priority="25">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            <xsl:apply-templates select="node()"/>
        </xsl:if>
    </xsl:template>
<!-- Apply template inside text element -->
    <xsl:template match="verbatim[contains(.,'DESCRIPTION:')]" priority="26">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            
            <xsl:apply-templates select="node()"/>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="verbatim[contains(.,'SUBJECT:')]" priority="25">
        <xsl:if test="/DIGESTDOC/dig:body/bodytext/p/text/verbatim |/DIGESTDOC/dig:body/level/bodytext/p/text/verbatim">
            <xsl:apply-templates select="node()"/>
        </xsl:if>
    </xsl:template>
    
    <!-- JL 20171204 fixed this to follow CI and accommodate for insignificant whitespace between nls-->
    
    <xsl:template match="verbatim/nl" priority="20">
        <xsl:choose>
            <xsl:when test="preceding-sibling::node()[1][self::nl] or preceding-sibling::node()[1][self::text()][matches( . , '^\s+$')][preceding-sibling::node()[1][self::nl]]">
                <proc:nl/>
            </xsl:when>
            <xsl:when test="following-sibling::node()[1][self::nl] or following-sibling::node()[1][self::text()][matches( . , '^\s+$')][following-sibling::node()[1][self::nl]]"/>
           <xsl:otherwise>
               <xsl:value-of select="' '"/>
           </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="verbatim/text()[contains(.,'DESCRIPTION:')]">
        <xsl:value-of select="normalize-space(replace(.,'DESCRIPTION:',''))"/>
    </xsl:template>    

    <xsl:template match="verbatim/text()[contains(.,'DATE/PLACE:')]">
        <xsl:value-of select="normalize-space(replace(.,'DATE/PLACE:',''))"/>
    </xsl:template>
    
    <xsl:template match="verbatim/text()[contains(.,'URL:')]">
        <xsl:value-of select="normalize-space(replace(.,'URL:',''))"/>
    </xsl:template>
    
    <xsl:template match="verbatim/text()[contains(.,'PUBLISHING INFO:')]">
        <xsl:value-of select="normalize-space(replace(.,'PUBLISHING INFO:',''))"/>
    </xsl:template>
    
    <xsl:template match="verbatim/text()[contains(.,'COUNTRY:')]">
        <xsl:value-of select="normalize-space(replace(.,'COUNTRY:',''))"/>
    </xsl:template>
    
    <xsl:template match="verbatim/text()[contains(.,'SUBJECT:')]">
        <xsl:value-of select="normalize-space(replace(.,'SUBJECT:',''))"/>
    </xsl:template>
</xsl:stylesheet>