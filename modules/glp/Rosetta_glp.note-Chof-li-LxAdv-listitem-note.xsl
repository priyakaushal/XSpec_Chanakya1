<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    version="2.0" exclude-result-prefixes="dita glp xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_li-glp.note-to-LexisAdvance_listitem-note">
  <title><sourcexml>l/glp:note</sourcexml> to <targetxml>list/note</targetxml> <lnpid>id-CCCC-10336</lnpid></title>
  <body>
    <section>
      <p>When <sourcexml>l</sourcexml> has 2 or more <i>consecutive</i>
        <sourcexml>glp:note</sourcexml> children, they should be mapped to a single <targetxml>note</targetxml> child of
        <targetxml>list</targetxml>. The content of each <sourcexml>glp:note</sourcexml> should be placed inside
        <targetxml>note/bodytext</targetxml>.</p>
      
    </section>
    
    <example>
      <title>Source XML 4 - Multiple Consecutive <sourcexml>glp:note</sourcexml> Children of <sourcexml>l</sourcexml></title>
      <codeblock>

&lt;l&gt;
    ...
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;Estoppel &amp;#x2013; if the true owner induces another to believe in a state of affairs and causes that other person to act on that
                belief to his or her detriment, the true owner will not be allowed to deny that the state of affairs exists. In the context of sale of
                goods, this means that if the true owner knowingly allows a seller to represent to a buyer that the seller has title to the goods and
                the buyer, believing the representation, purchases the goods from the seller, the buyer will get title to the goods as against the
                true owner. If the true owner owes the buyer a duty of care to the buyer to make the true owner&amp;#x2019;s title to the goods known or
                apparent to the buyer, but breaches that duty and the buyer purchases the goods from a seller who in fact has no title, the true owner
                might be estopped by negligence from asserting that ownership. Proving the existence of the duty is usually very difficult.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Big Rock Pty Ltd v Esanda Finance Corp Ltd &lt;/emph&gt;10 WAR 259&lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Thomas Australia Wholesale Vehicle Trading Co Pty Ltd v Marac Finance Australia Ltd &lt;/emph&gt;(1985) 3 NSWLR
                452&lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/l&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML 4</title>
      <codeblock>

&lt;list&gt;
    ...
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x2022;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Estoppel &amp;#x2013; if the true owner induces another to believe in a state of affairs and causes that
                    other person to act on that belief to his or her detriment, the true owner will not be allowed to deny
                    that the state of affairs exists. In the context of sale of goods, this means that if the true owner
                    knowingly allows a seller to represent to a buyer that the seller has title to the goods and the buyer,
                    believing the representation, purchases the goods from the seller, the buyer will get title to the goods
                    as against the true owner. If the true owner owes the buyer a duty of care to the buyer to make the true
                    owner&amp;#x2019;s title to the goods known or apparent to the buyer, but breaches that duty and the buyer
                    purchases the goods from a seller who in fact has no title, the true owner might be estopped by negligence
                    from asserting that ownership. Proving the existence of the duty is usually very difficult.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;note notetype="xref"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;Big Rock Pty Ltd v Esanda Finance Corp Ltd &lt;/emph&gt;10 WAR 259&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;Thomas Australia Wholesale Vehicle Trading Co Pty Ltd v Marac Finance Australia Ltd
                &lt;/emph&gt;(1985) 3 NSWLR 452&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/list&gt;

            </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2013-11-10: <ph id="change_20131107_JCG">Fixed title to correctly indicate mapping described. Not a rule change.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita  -->

    
<!-- JL STILL TESTING IT'S BUGGY THERE'S AN XSPEC FOR YOU TO USE  CAN'T GET @notetype to work yet -->
    <xsl:template match="l[not(@virtual-nesting)][child::glp:note]" priority="25">
	    <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	    <xsl:for-each-group select="*" group-adjacent="if (self::glp:note) then 0 else 1">
	        <xsl:choose>
	            <xsl:when test="current-grouping-key()=0">
	                <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	                    
	                    <xsl:copy-of select="current-group()[1]/@notetype"/>
	                    <xsl:apply-templates select="current-group()/refpt"/>
	                    <xsl:apply-templates select="current-group()/heading"/>
	                    <xsl:if test="current-group()/child::*[not(self::heading)][not(self::refpt)]">
	                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	                            <xsl:apply-templates select="current-group()/child::* except (heading | refpt)"/>
	                        </bodytext>
	                    </xsl:if>
	                </note>
	            </xsl:when>
	            <xsl:otherwise>
	                <xsl:for-each select="current-group()">
	                    <xsl:apply-templates select="."/>
	                </xsl:for-each>
	            </xsl:otherwise>
	        </xsl:choose>	        
	    </xsl:for-each-group>
	    </list>
	</xsl:template>

</xsl:stylesheet>