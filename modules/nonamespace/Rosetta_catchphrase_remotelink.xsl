<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchphrase_remotelink.dita">
  <title>catchphrase/remotelink <lnpid>id-CCCC-12022</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>remotelink</sourcexml> occurs as child of <sourcexml>catchphrase</sourcexml>
        then <sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink</targetxml>, i.e.
          <sourcexml>catchphrase/remotelink</sourcexml> becomes
          <targetxml>classify:classname/ref:lnlink</targetxml>. The details of this mapping are as follows:<ul>
          <li>
            <sourcexml>remotelink[@service='DOC-ID']</sourcexml> becomes
              <targetxml>ref:lnlink</targetxml>. Create the following child elements: <ul>
              <li>Create <targetxml>ref:marker</targetxml> to capture the PCDATA of
                  <sourcexml>remotelink</sourcexml>.</li>
              <li>
                <p><ul>
                    <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                        <li><targetxml>ref:key-name/@name</targetxml> will have the value
                          "DOC-ID".</li>
                        <li><targetxml>key-value/@value</targetxml> will be the value of
                            <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                            <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                          which ever is present (if both are present, use
                            <sourcexml>@remotekey2</sourcexml>).</li>
                      </ul>
                    </li>
                    <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                        <li><targetxml>ref:key-name/@name</targetxml> will have the value
                          "DOC-ID".</li>
                        <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                            <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                            <sourcexml>@docidref</sourcexml>.</li>
                        <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
                            <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                          which ever is present (if both are present, use
                            <sourcexml>@refpt</sourcexml>).</li>
                      </ul>
                    </li>
                  </ul></p>
                <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                    <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                  manifest file.</note>
                <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                  have an underscore added at start. Also apply other identifier data type format as
                  used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                  (e.g. change colon to underscore).</note>
              </li>
            </ul></li>
        </ul>
      </p>
    </section>
    <example>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID"
        refpt="05EE_2_200:HTCOMM-INDEXPARA" dpsi="05EE" docid-ref="ABCD_5641"&gt;200&lt;/remotelink&gt;
      Unfair dismissal&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID"
        refpt="05EE_2_224.1:HTCOMM-INDEXPARA" dpsi="05EE" docid-ref="ABCD_5641"&gt;224.1&lt;/remotelink&gt;
      Was employee dismissed &amp;#x2013; termination by employee &amp;#x2013; employer repudiation &amp;#x2013;
      change in status and title&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
  ...
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;ref:lnlink&gt;
          &lt;ref:marker role="content"&gt;200&lt;/ref:marker&gt;
          &lt;ref:locator anchoridref="05EE_2_200:HTCOMM-INDEXPARA"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="05EE-ABCD_5641"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt; Unfair dismissal &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;ref:lnlink&gt;
          &lt;ref:marker role="content"&gt;224.1&lt;/ref:marker&gt;
          &lt;ref:locator anchoridref="05EE_2_224.1:HTCOMM-INDEXPARA"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="05EE-ABCD_5641"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt; Was employee dismissed &amp;#x2013; termination by employee &amp;#x2013; employer
        repudiation &amp;#x2013; change in status and title &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
    </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_catchphrase_remotelink.dita  -->

	<xsl:template match="remotelink[parent::catchphrase]">
		<!--  Original Target XPath:  ref:lnlink   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>
	</xsl:template>

</xsl:stylesheet>