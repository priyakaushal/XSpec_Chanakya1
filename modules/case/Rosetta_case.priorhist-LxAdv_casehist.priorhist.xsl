<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.priorhist-LxAdv_casehist.priorhist">
    <title>case:priorhist <lnpid>id-CCCC-12017</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:priorhist</sourcexml> becomes
                    <targetxml>courtcase:head/casehist:casehist/casehist:priorhist</targetxml>.</p>
            <p>The children of <sourcexml>case:priorhist</sourcexml> should be mapped to children of
                    <targetxml>casehist:priorhist/casehist:summary</targetxml>.</p>
            <note>If <sourcexml>refpt</sourcexml> comes under
                    "<sourcexml>case:priorhist/heading/title</sourcexml>" then conversion needs to
                move <targetxml>ref:anchor</targetxml> as child of
                    "<targetxml>casehist:priorhist/casehist:summary</targetxml>" and other child
                elements mapped according to general rules.</note>
        </section>
        <example>
            <title>Example: CA content</title>
            <codeblock>
&lt;case:headnote&gt;
    ...
    &lt;case:priorhist&gt;
        &lt;p&gt;
            &lt;text&gt;On appeal from Q.B. No. 174 of 1991. I also make an order prohibiting publication
                of any information that could disclose the identity of the complainant: see s.
                486(3) of the Criminal Code.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:priorhist&gt;
    ...
&lt;/case:headnote&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:head&gt;
    ...
    &lt;casehist:casehist&gt;
        &lt;casehist:priorhist&gt;
            &lt;casehist:summary&gt;
                &lt;p&gt;
                    &lt;text&gt;On appeal from Q.B. No. 174 of 1991. I also make an order prohibiting
                        publication of any information that could disclose the identity of the
                        complainant: see s. 486(3) of the Criminal Code.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/casehist:summary&gt;
        &lt;/casehist:priorhist&gt;
    &lt;/casehist:casehist&gt;
    ...
&lt;/courtcase:head&gt;
           </codeblock>
        </example>
        <example>
            <title>Example: UK content</title>
            <codeblock>
&lt;case:priorhist&gt;
    &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Appeal&lt;/emph&gt;
    &lt;/h&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;Appeal by the defendants from an order of Greaves-Lord J, dated 9
                January 1936, dismissing with costs an appeal of the defendants against
                an order of Master Jelf, dated 20 December 1935, ordering that the
                plaintiff be at liberty to deliver to the defendants interrogatories in
                writing as initialled by the Master and that the defendants answer the
                interrogatories by 11 January 1936.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:priorhist&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casehist:casehist&gt;
    &lt;casehist:priorhist&gt;
        &lt;casehist:summary&gt;
                &lt;h&gt;
                    &lt;emph typestyle="bf"&gt;Appeal&lt;/emph&gt;
                &lt;/h&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;Appeal by the defendants from an order of Greaves-Lord J, dated 9
                            January 1936, dismissing with costs an appeal of the defendants against
                            an order of Master Jelf, dated 20 December 1935, ordering that the
                            plaintiff be at liberty to deliver to the defendants interrogatories in
                            writing as initialled by the Master and that the defendants answer the
                            interrogatories by 11 January 1936.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt; 
        &lt;/casehist:summary&gt;
    &lt;/casehist:priorhist&gt;
&lt;/casehist:casehist&gt;
           </codeblock>
        </example>
        <section id="changes">
            <title>Changes</title>
            <p>2016-12-05 <ph id="change_20161205_SS">Added the note for hadling input scenario
                        "<sourcexml>case:priorhist/heading/title/refpt</sourcexml>". Applicable on
                    CA01, Webstar # <b>6699088</b>.</ph></p>
            <p>2015-08-12 <ph id="change_20150812_SS">Created.</ph></p>
        </section>
        
    </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.priorhist-LxAdv_casehist.priorhist.dita  -->
	 
    <!--Vikas Rohilla : Template to match the case:priorhist and creates the casehist:casehist/casehist:priorhist/casehist:summary-->
	<xsl:template match="case:priorhist">
	    <casehist:casehist>
	        <casehist:priorhist>
	            <casehist:summary>
	                <xsl:apply-templates select="@* | node() except heading/title/refpt"/>
	            </casehist:summary>
	        </casehist:priorhist>
	    </casehist:casehist>
	</xsl:template>
    
<!-- Vikas Rohilla : Added for the streamID CA 01   -->
    <xsl:template match="case:priorhist[ancestor::case:appendix][$streamID='CA01']" priority="2"/>


</xsl:stylesheet>