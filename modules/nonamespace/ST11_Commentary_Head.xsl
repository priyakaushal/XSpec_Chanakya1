<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_Head">
  <title>Head <lnpid>id-ST11-37813</lnpid></title>
  <body>
    <p><targetxml>/seclaw:seclaw/seclaw:head</targetxml> is created as described in the Introduction.</p>

    <section>
      <title>seclaw:head</title>

      <p>Create <targetxml>/seclaw:head/ref:citations</targetxml> and children as described below:
        <ul>
          <li>Create <targetxml>/seclaw:head/ref:citations/ref:cite4thisresource</targetxml>.
            <ul>
              <li>Create <targetxml>/seclaw:head/ref:citations/ref:cite4thisresource/lnci:cite</targetxml> with <targetxml>@type</targetxml> attribute.
                Attribute <targetxml>@type</targetxml> value is CDATA and populated as follow:
                <pre>&lt;lnci:cite type="book"&gt;</pre>
                <ul>
                  <li>Create <targetxml>/seclaw:head/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>.
                    <note>Currently the value for <targetxml>lnci:cite[@type="book"]</targetxml> and element <targetxml>lnci:content</targetxml> will TBD (To be decided). This is temporary value until we have the business requirement from LBU.</note>
<pre>

&lt;seclaw:head&gt;
 &lt;ref:citations&gt;
  &lt;ref:cite4thisresource&gt;
   &lt;lnci:cite type="book"&gt;
    &lt;lnci:content&gt;Citation TBD&lt;/lnci:content&gt;
   &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
 &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;
</pre>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_Head.dita  -->
	<xsl:message>ST11_Commentary_Head.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>