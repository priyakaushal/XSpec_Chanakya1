<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_contrib">
  <title>contrib and org <lnpid>id-UK11DN-29608</lnpid></title>
  <body>
    <section>
      <p><sourcexml>contrib/org</sourcexml> becomes
          <targetxml>nitf:body.head/nitf:byline</targetxml>.</p></section>

    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;contrib&gt;
      &lt;org&gt;Produced in partnership with &lt;remotelink&gt;...&lt;/remotelink&gt;&lt;/org&gt;
    &lt;/contrib&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;nitf:body&gt;
  &lt;nitf:body.head&gt;
    &lt;nitf:byline&gt;Produced in partnership with &lt;ref:lnlink&gt;...&lt;/ref:lnlink&gt;&lt;/nitf:byline&gt;
  &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2013-04-08: <ph id="change_20130408_jm"><sourcexml>contrib/org</sourcexml> -
        <targetxml>nitf:byline</targetxml> now allows child <targetxml>ref:lnlink</targetxml>. Removed reference to pending
        CR.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_contrib.dita  -->
	 

	<xsl:template match="contrib/org">

		<!--  Original Target XPath:  nitf:body.head/nitf:byline   -->
		<nitf:body.head>
			<nitf:byline>
				<xsl:apply-templates select="@* | node()"/>
			</nitf:byline>
		</nitf:body.head>
	</xsl:template>

</xsl:stylesheet>