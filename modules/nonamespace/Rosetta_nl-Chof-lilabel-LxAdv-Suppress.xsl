<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_nl-Chof-lilabel-LxAdv-Suppress">
    <title><sourcexml>lilabel/nl</sourcexml> <lnpid>id-CCCC-10403</lnpid></title>
    <body>
        <section>
            <p>If <sourcexml>nl</sourcexml> encounter in <sourcexml>lilabel</sourcexml>, then <sourcexml>nl</sourcexml> will suppress in NL conversion.
            <note><sourcexml>lilabel/nl</sourcexml> is Data error.</note></p>
        </section>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;li&gt;
 &lt;lilabel&gt;&lt;nl/&gt;&amp;#x2002;&lt;nl/&gt;8&lt;/lilabel&gt;
 &lt;p&gt;
  &lt;text&gt;&lt;emph typestyle="bf"&gt;Trustees&amp;#x2019; liability&lt;/emph&gt;&lt;/text&gt;
  &lt;text&gt;The Trustees shall not be liable for (and shall be indemnified out of the Trust Fund for) any loss or liability which they may incur by reason of the exercise, manner of exercise or non-exercise of any of the powers, authorities or discretions conferred on them by this deed or by law. &amp;#x2002; &lt;/text&gt;
 &lt;/p&gt;
&lt;/li&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;listitem&gt;
 &lt;label&gt;8&lt;/label&gt;
 &lt;bodytext&gt;
  &lt;p&gt;
   &lt;text&gt;&lt;emph typestyle="bf"&gt;Trustees&amp;#x2019; liability&lt;/emph&gt;&lt;/text&gt;
   &lt;text&gt;The Trustees shall not be liable for &amp;#x0028;and shall be indemnified out of the Trust Fund for&amp;#x0029; any loss or liability which they may incur by reason of the exercise, manner of exercise or non-exercise of any of the powers, authorities or discretions conferred on them by this deed or by law. &amp;#x2002;&lt;/text&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/listitem&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2012-09-27: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_nl-Chof-lilabel-LxAdv-Suppress.dita  -->
	

	<xsl:template match="lilabel/nl"/>

</xsl:stylesheet>