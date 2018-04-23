<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_abstract">
  <title>abstract <lnpid>id-NZ07DN-23807</lnpid></title>

  <body>
    <p><sourcexml>abstract</sourcexml> becomes <targetxml>nitf:body/nitf:body.head/abstract</targetxml></p>
      
      <p>Create <targetxml>bodytext</targetxml> as a child of <targetxml>abstract</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;dig:body&gt;
    &lt;dig:info&gt;
    ...
    &lt;/dig:info&gt;
    &lt;abstract&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;Defined Terms: &lt;/emph&gt;
                &lt;/process-ignore&gt;
                &lt;defterm&gt;
                    &lt;emph typestyle="ro"&gt;"consideration" - "education"&lt;/emph&gt;
                &lt;/defterm&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/abstract&gt;
&lt;/dig:body&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;abstract&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="bf"&gt;Defined Terms: &lt;/emph&gt;
                        &lt;defterm&gt;
                            &lt;emph typestyle="ro"&gt;"consideration" - "education"&lt;/emph&gt;
                        &lt;/defterm&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/abstract&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>
      <section>
          <title>Changes</title>
          <p>2013-10-30: <ph id="change_20131030">Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</ph></p>
      </section>
</body>
	</dita:topic>


	<xsl:template match="abstract">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/abstract   -->
				<abstract>
					<bodytext>
					    <xsl:apply-templates select="@* | node()"/>
					</bodytext>					
				</abstract>

	</xsl:template>

</xsl:stylesheet>