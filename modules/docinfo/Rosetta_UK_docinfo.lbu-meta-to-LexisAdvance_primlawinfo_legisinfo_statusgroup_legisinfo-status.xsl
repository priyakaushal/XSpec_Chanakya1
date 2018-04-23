<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
    docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
        primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
        id-CCCC-10549

    
        
            Special Instructions for UK06 and UK07:
            docinfo:custom-metafields and it's child elements converted
                according to below list: 
                    docinfo:custom-metafield[@name="provision-status"]
                        comes with text value "repealed" then conversion need to create the
                            primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislation-status"]/legisinfo:status[@statuscode="repealed"]
                        under the *:head (UK07 - regulation:head and UK06
                        legis:head).
                    docinfo:custom-metafield[@name="provision-status"]
                        comes with text value "in-force" then conversion need to create the
                            primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislation-status"]/legisinfo:status[@statuscode="in-force"]
                        under the *:head (UK07 - regulation:head and UK06
                        legis:head).
                    docinfo:custom-metafield[@name="provision-status"]
                        comes with text value "partly-in-force" then conversion need to
                        create the
                            primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislation-status"]/legisinfo:status[@statuscode="partly-in-force"]
                        under the *:head (UK07 - regulation:head and UK06
                        legis:head).
                    docinfo:custom-metafield[@name="provision-status"]
                        comes with text value "not-yet-in-force" then conversion need to
                        create the
                            primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislation-status"]/legisinfo:status[@statuscode="not-yet-in-force"]
                        under the *:head (UK07 - regulation:head and UK06
                        legis:head).
                    docinfo:custom-metafield[@name="provision-status"]
                        comes with text value "no-longer-in-force" then conversion need to
                        create the
                            primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislation-status"]/legisinfo:status[@statuscode="no-longer-in-force"]
                        under the *:head (UK07 - regulation:head and UK06
                        legis:head).
                
            If source is not having above mentioned attribute values then refer the general
                markup for conversion of docinfo:custom-metafield section in the
                CI.
        

        
            Source XML 1 - UK06
            

&lt;docinfo:custom-metafields&gt;
   &lt;!-- only below attribute value with specific text will appear in source document --&gt;
   &lt;docinfo:custom-metafield name="provision-status"&gt;repealed&lt;/docinfo:custom-metafield&gt;
   &lt;docinfo:custom-metafield name="provision-status"&gt;in-force&lt;/docinfo:custom-metafield&gt;
   &lt;docinfo:custom-metafield name="provision-status"&gt;partly-in-force&lt;/docinfo:custom-metafield&gt;
   &lt;docinfo:custom-metafield name="provision-status"&gt;not-yet-in-force&lt;/docinfo:custom-metafield&gt;
   &lt;docinfo:custom-metafield name="provision-status"&gt;no-longer-in-force&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

	
        

        
            Target XML 1
            

&lt;!-- regulation:head (UK07) or legis:head (UK06) --&gt;
&lt;*:head&gt;  
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ... --&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup statusgroupcode="legislation-status"&gt;
                &lt;legisinfo:status statuscode="repealed"/&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/*.head&gt;

&lt;*:head&gt;  
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ... --&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup statusgroupcode="legislation-status"&gt;
                &lt;legisinfo:status statuscode="in-force"/&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/*.head&gt;

&lt;*:head&gt;  
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ... --&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup statusgroupcode="legislation-status"&gt;
                &lt;legisinfo:status statuscode="partly-in-force"/&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/*.head&gt;

&lt;*:head&gt;  
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ... --&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup statusgroupcode="legislation-status"&gt;
                &lt;legisinfo:status statuscode="not-yet-in-force"/&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/*.head&gt;


&lt;*:head&gt;  
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ... --&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup statusgroupcode="legislation-status"&gt;
                &lt;legisinfo:status statuscode="no-longer-in-force"/&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/*.head&gt;

	
        

        
            Changes
            2016-10-26: Corrected the text value from 'repeal'
                    to 'repealed' inside
                        docinfo:custom-metafield[@name="provision-status"]
                    and it's text value in source examples..
            2016-10-21: Added rule for handling more attribute values
                        @value="not-yet-in-force" and
                        @value="no-longer-in-force" inside
                        docinfo:metaitem.
            2016-08-23: Corrected attribute @name value and it's
                    text value in source examples.
            2016-08-03: Created the rule for handling specific
                    attribute values @value="repealed",
                        @value="partly-in-force" and
                        @value="in-force" inside
                        docinfo:metaitem.
			</xd:pre>
		</xd:desc>
	</xd:doc>
    
    <xsl:template match="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='provision-status']">
        <legisinfo:legisinfo>
            <legisinfo:statusgroup statusgroupcode="legislation-status">
                <legisinfo:status>
                    <xsl:attribute name="statuscode" select="."/>
                </legisinfo:status>
            </legisinfo:statusgroup>
        </legisinfo:legisinfo>
    </xsl:template>
    
</xsl:stylesheet>
    
