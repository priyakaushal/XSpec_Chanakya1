<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_level.dita">
  <title>level <lnpid>id-CA11-14813</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>level</sourcexml> becomes <targetxml>section</targetxml>.
      </p>
      <p>Drop <sourcexml>@leveltype</sourcexml> attribute with its value.</p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;dig:body&gt;
    &lt;level leveltype="2"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt; Editor's Note&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;With this edition, the Index to Canadian
                      ...
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/dig:body&gt;

      </codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;section&gt;
            &lt;heading align="center"&gt;
                &lt;title&gt; Editor's Note&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;With this edition, the Index to Canadian
                          ...
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
        <p>2014-10-23: <ph id="change_20141023_CN">Removed <targetxml>verbatim</targetxml> noise. Phase 6 Canada Discussion RFA # 146.</ph></p>
      </section>
    </body>
	</dita:topic>

	
	<xsl:template match="level">

		<!--  Original Target XPath:  section   -->
	    <biblio:entry>
		<section>
			<xsl:apply-templates select="@* | node()"/>
		</section>
	    </biblio:entry>
	            
	</xsl:template>

	<xsl:template match="level/@leveltype"/>
	

</xsl:stylesheet>