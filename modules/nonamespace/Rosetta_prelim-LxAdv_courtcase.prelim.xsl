<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_prelim-LxAdv_courtcase.prelim">
    <title>prelim <lnpid>id-CCCC-12026</lnpid></title>
    <body>
        <section>
            <p><sourcexml>prelim</sourcexml> becomes <targetxml>courtcase:prelim</targetxml>.</p>
            <p>All children of <sourcexml>prelim</sourcexml> should be mapped to children of
                    <targetxml>courtcase:prelim/bodytext</targetxml>.</p>
        </section>
        <example>
            <title>Example: AU content</title>
            <codeblock>
&lt;case:judgments&gt;
    ...
    &lt;prelim&gt;
        &lt;p&gt;
            &lt;text align="right"&gt;&lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/prelim&gt;
    ...
&lt;/case:judgments&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    ...
    &lt;courtcase:prelim&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text align="right"&gt;&lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;bodytext&gt;
    &lt;/courtcase:prelim&gt;
    ...
&lt;/courtcase:opinions&gt;
    </codeblock>
        </example>
        <example>
            <title>Example: UK content</title>
            <codeblock>
&lt;prelim&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;3. The factual background to the three claims is set out in
                [17]&amp;#x2013;[29], below. The issues raised on this application are
                described in detail in [30], below. The admissibility and value of
                statements contained in witness statements made by officials is
                considered in [32]&amp;#x2013;[36], below. The admissibility and
                significance of the report of the Parliamentary Joint Committee on
                Human Rights on the new regime is discussed in [37], below.
                Paragraphs [38] and [39], below, explain why it is the current
                effect of the new regime which has to be considered rather than when
                it was enacted.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/prelim&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:prelim&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;3. The factual background to the three claims is set out in
                    [17]&amp;#x2013;[29], below. The issues raised on this application are
                    described in detail in [30], below. The admissibility and value of
                    statements contained in witness statements made by officials is
                    considered in [32]&amp;#x2013;[36], below. The admissibility and
                    significance of the report of the Parliamentary Joint Committee on
                    Human Rights on the new regime is discussed in [37], below.
                    Paragraphs [38] and [39], below, explain why it is the current
                    effect of the new regime which has to be considered rather than when
                    it was enacted.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/courtcase:prelim&gt;
    </codeblock>
        </example>
        <!--<section>
            <title>Changes</title>
            </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_prelim-LxAdv_courtcase.prelim.dita  -->
	 

	<xsl:template match="prelim">

		<!--  Original Target XPath:  courtcase:prelim   -->
		<courtcase:prelim>
		    <bodytext>
		        <xsl:apply-templates select="@* | node()"/>
		    </bodytext>			
		</courtcase:prelim>
	</xsl:template>

</xsl:stylesheet>