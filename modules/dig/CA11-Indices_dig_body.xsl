<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_dig_body.dita">
    <title>dig:body <lnpid>id-CA11-14808</lnpid></title>

    <body>
        <p><sourcexml>dig:body</sourcexml> becomes <targetxml>biblio:body</targetxml>.</p>
        
            <pre xml:space="preserve" class="- topic/pre ">
&lt;DIGESTDOC&gt;
    &lt;dig:body&gt;
        ...
    &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:biblio&gt;
    &lt;biblio:body&gt;
        ...
    &lt;/biblio:body&gt;
&lt;/biblio:biblio&gt;
            </pre>
        
        <p>When <sourcexml>dig:body</sourcexml> is having child <sourcexml>heading/title</sourcexml> then <sourcexml>heading/title</sourcexml> becomes <targetxml>biblio:head/title</targetxml>.</p>
        
        <pre>&lt;dig:body&gt;
    &lt;heading&gt;
        &lt;title&gt;Book Review/Chronique bibliographique&lt;/title&gt;
    &lt;/heading&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:head&gt;
    &lt;title&gt;Book Review/Chronique bibliographique&lt;/title&gt;
&lt;/biblio:head&gt;</pre>
        
        <p>When <sourcexml>dig:body</sourcexml> is having child <sourcexml>bodytext</sourcexml> then <sourcexml>dig:body/bodytext</sourcexml> becomes <targetxml>biblio:body/biblio:entry/section/bodytext</targetxml>.</p>
        
        <pre>&lt;dig:body&gt;
    &lt;bodytext searchtype="COMMENTARY"&gt;
        &lt;p&gt;
            &lt;text&gt;
                ...
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;section&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        ...
                    &lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/section&gt;
    &lt;/biblio:entry&gt;
    &lt;/biblio:body&gt;</pre>
        <section>
            <title>Changes</title>
            <p>2014-07-09: <ph id="change_20140709_PS">Updated snippet for <sourcexml>dig:body/bodytext</sourcexml>.</ph></p>
            <p>2013-05-30: <ph id="change_20130530_PS">Added instruction for <sourcexml>dig:body/bodytext</sourcexml>.</ph></p>
        </section>
    </body>
	</dita:topic>



	<xsl:template match="dig:body">

		<!--  Original Target XPath:  biblio:body   -->
		<biblio:body>
		    <xsl:if test="dig:info/contrib|dig:info/publication-original|dig:info/subjectmatter-cite|dig:info/dig:type">
		        <xsl:apply-templates select="dig:info"/>
		    </xsl:if>
		    <xsl:if test="bodytext[descendant::table]">
		    <xsl:apply-templates select="bodytext"/>
		    </xsl:if>
			<xsl:apply-templates select="level"/>
		    <xsl:apply-templates select="dig:collection"/>
		</biblio:body>

	</xsl:template>

</xsl:stylesheet>