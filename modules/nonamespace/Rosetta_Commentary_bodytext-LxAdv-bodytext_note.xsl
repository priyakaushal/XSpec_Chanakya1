<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_COMMENTARY_bodytext-to-LexisAdvance_bodytext_note">
  <title>(Commentary) <sourcexml>bodytext</sourcexml> to <targetxml>bodytext/note</targetxml> <lnpid>id-CCCC-10270</lnpid></title>
    <body>
        <section>
            <p>Currency statements in commentary sourced material (applies to
                    <sourcexml>COMMENTARYDOC</sourcexml> sources only regardless of target, i.e.
                seclaw, legis, regs).<ul>
                    <li>If <sourcexml>bodytext/@searchtype="COMMENTARY"</sourcexml> AND</li>
                    <li>the first child element is <sourcexml>p</sourcexml> AND</li>
                    <li>the first child element <sourcexml>p</sourcexml> contains child element
                            <sourcexml>text</sourcexml> AND</li>
                    <li>the string within <sourcexml>text</sourcexml> starts with "[Current to"
                        (without quotes), THEN</li>
                </ul>This <sourcexml>bodytext</sourcexml> element contains a currency statement.  In
                this case, <targetxml>note</targetxml> is created and the
                    <sourcexml>bodytext</sourcexml> contents are mapped to
                    <targetxml>note/currencystatement/bodytext</targetxml>.</p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>

&lt;bodytext searchtype="COMMENTARY"&gt;
     &lt;p&gt;
        &lt;text&gt;[Current to October 2005.]&lt;/text&gt;
     &lt;/p&gt;
    ...
&lt;/bodytext&gt;


	</codeblock>
       
            <title>Target XML 1</title>
            <codeblock>

&lt;bodytext&gt;
  &lt;note&gt;
     &lt;currencystatement&gt;
       &lt;bodytext&gt;
         &lt;p&gt;
           &lt;text&gt;
              &lt;emph typestyle="ro"&gt;[Current to October 2005.]&lt;/emph&gt;
           &lt;/text&gt;
         &lt;/p&gt;
       &lt;/bodytext&gt;
     &lt;/currencystatement&gt;
  &lt;/note&gt;
&lt;bodytext&gt;


	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>YYYY-MM-DD:  </p>
        </section>
    </body>
	</dita:topic>

    <xsl:template match="bodytext[@searchtype='COMMENTARY' and *[1][self::p/*[1][self::text[contains(., '[Current to')]]]]">
        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <note>
                <currencystatement>
                    <bodytext>
                        <xsl:apply-templates/>
                    </bodytext>
                </currencystatement>
            </note>
        </bodytext>
    </xsl:template>

</xsl:stylesheet>