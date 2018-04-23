<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_bio">
  <title>bio <lnpid>id-NZ07DN-23808</lnpid></title>

  <body>
      <p><sourcexml>bio</sourcexml> becomes
                <targetxml>person:contributor/person:person/person:bio</targetxml></p>
    
    <p>Create <targetxml>person:bio.text/bodytext</targetxml> as a wrapper of <targetxml>p</targetxml> element.</p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;contrib&gt;
    &lt;bio&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;Author(s): &lt;/emph&gt;
                &lt;/process-ignore&gt;
                &lt;person&gt;
                    &lt;name.text&gt;BARON, PD&lt;/name.text&gt;
                &lt;/person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bio&gt;
&lt;/contrib&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;person:contributor contributor-type="undetermined"&gt;
    &lt;person:person&gt;
        &lt;person:bio&gt;
            &lt;person:bio.text&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;Author(s): &lt;/emph&gt;
                            &lt;person:person&gt;
                                &lt;person:name.text&gt;BARON, PD&lt;/person:name.text&gt;
                            &lt;/person:person&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
        &lt;/person:bio&gt;
    &lt;/person:person&gt;
&lt;/person:contributor&gt;
</pre>
      <section>
          <title>Changes</title>
          <p>2013-10-30: <ph id="change_20131030">Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</ph></p>
      </section>
</body>
	</dita:topic>


	<xsl:template match="bio" priority="25">

		<!--  Original Target XPath:  person:contributor/person:person/person:bio   -->
			<person:person>
				<person:bio>
					<person:bio.text>
					    <bodytext>
					        <xsl:apply-templates select="@* | node()"/>
					    </bodytext>
					</person:bio.text>
				</person:bio>
			</person:person>
		

	</xsl:template>

</xsl:stylesheet>