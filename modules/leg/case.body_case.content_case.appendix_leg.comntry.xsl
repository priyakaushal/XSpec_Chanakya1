<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" 
  xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" version="2.0" exclude-result-prefixes="dita case ci glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_case.content_case.appendix_leg.comntry">
<title><sourcexml>case:body/case:content/case:appendix/leg:comntry</sourcexml> <lnpid>id-AU07-19210</lnpid></title>
  <body>
    <section>
      <p>The element <sourcexml>case:appendix/leg:comntry</sourcexml> becomes <targetxml>appendix/bodytext/primlaw:excerpt/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml>.</p>
      <p>Within <sourcexml>case:appendix/leg:comntry</sourcexml>, each child element
          <sourcexml>level</sourcexml> becomes <targetxml>annot:annotation</targetxml> and the
        attributes are converted as follows: <ul>
          <li><sourcexml>level/@id</sourcexml> becomes
              <targetxml>annot:annotation/@xml:id</targetxml></li>
          <li><sourcexml>level/@subdoc</sourcexml> becomes
              <targetxml>annot:annotation/@includeintoc</targetxml></li>
          <li><sourcexml>level/@caption</sourcexml> becomes
              <targetxml>annot:annotation/@alternatetoccaption</targetxml></li>
          <li>all other attributes of <sourcexml>level</sourcexml> are dropped</li>
        </ul>
      </p>
      <p>The element <sourcexml>leg:comntry/level/glp:note</sourcexml> is converted as follows: <ul>
          <li>If <sourcexml>glp:note</sourcexml> is the <b><u>first</u></b> child of
              <sourcexml>leg:comntry/level</sourcexml>, it becomes
              <targetxml>annot:annotation/note</targetxml> and its attributes and child elements are
            converted as described in the section <xref href="general.dita"/>. For example,
              <sourcexml>leg:comntry/level/glp:note/blockquote/p/text</sourcexml> becomes
              <targetxml>annot:annotation/note/bodytext/blockquote/p/text</targetxml> in this
            scenario.</li>
          <li>If <sourcexml>glp:note</sourcexml> is <b><u>not</u></b> the first child of
              <sourcexml>leg:comntry/level</sourcexml>, it becomes
              <targetxml>annot:annotation/bodytext/note</targetxml> and its attributes and child
            elements are converted as described in the section <xref href="general.dita"/>. For example,
              <sourcexml>leg:comntry/level/glp:note/blockquote/p/text</sourcexml> becomes
              <targetxml>annot:annotation/bodytext/note/bodytext/blockquote/p/text</targetxml> in
            this scenario.</li>
        </ul> In either of the above scenarios, the element <sourcexml>hrule</sourcexml> is droppped
        if and only if it occurs as the first child of <sourcexml>glp:note/blockquote</sourcexml>. </p>
      <p>Besides the above minor deviation regarding <sourcexml>glp:note</sourcexml>, the children
        of <sourcexml>leg:comntry/level</sourcexml> are converted to children of
        <targetxml>annot:annotation</targetxml> using the instructions specified in the section <xref href="general.dita"/>. For example: <ul>
          <li><sourcexml>level/heading</sourcexml> becomes
              <targetxml>annot:annotation/heading</targetxml></li>
          <li><sourcexml>level/heading/edpnum</sourcexml> becomes
              <targetxml>annot:annotation/heading/desig</targetxml></li>
          <li><sourcexml>level/heading/title</sourcexml> becomes
              <targetxml>annot:annotation/heading/title</targetxml></li>
        </ul>
      </p>
      <p>The element <sourcexml>leg:comntry/level/bodytext</sourcexml> becomes
          <targetxml>annot:annotation/bodytext</targetxml> and the children of
          <sourcexml>leg:comntry/level/bodytext</sourcexml> are converted to children of
        <targetxml>annot:annotation/bodytext</targetxml> using the instructions specified in the section <xref href="general.dita"/>. For example: <ul>
          <li><sourcexml>level/bodytext/p</sourcexml> becomes
              <targetxml>annot:annotation/bodytext/p</targetxml></li>
          <li><sourcexml>level/bodytext/p/text</sourcexml> becomes
              <targetxml>annot:annotation/bodytext/p/text</targetxml></li>
          <li><sourcexml>level/bodytext/footnotegrp</sourcexml> becomes
              <targetxml>annot:annotation/bodytext/p/text/footnotegrp</targetxml></li>
          <li><sourcexml>level/bodytext/p/text/ci:cite</sourcexml> becomes
            <targetxml>annot:annotation/bodytext/p/text/lnci:cite</targetxml>. As per the instructions given in the topic <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/>, the element
              <sourcexml>ci:cite/ci:content/citefragment</sourcexml> and its child
              <sourcexml>ci:span</sourcexml> have their start-tag and end-tags dropped (but the
            content is retained).</li>
        </ul>
      </p>
      <p>Please see the section <xref href="general.dita"/> for more details regarding the conversions
        mentioned above. </p>
    </section>

    <example>
      <title>Source XML #1</title>
      <p>This includes an example of a <sourcexml>glp:note</sourcexml> that is the <b><u>first</u></b> child of <sourcexml>level</sourcexml>.</p>
      <codeblock>

&lt;case:appendix&gt;
  &lt;!--...--&gt;
  &lt;leg:comntry&gt;
    &lt;level id="WPV_APAR.SGM_WPV.APAR.2000-1" leveltype="para0" subdoc="true" toc-caption="[2000.1] Background"&gt;
      &lt;!-- This &lt;glp:note&gt; is the first child of &lt;level&gt;. --&gt;
      &lt;glp:note&gt;
        &lt;blockquote&gt;
          &lt;hrule/&gt;
          &lt;p&gt;
            &lt;text&gt;
              Legislation cited in [2000.1] below. 
              LawNow subscribers click through for daily
              updates and historical versions.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/blockquote&gt;
      &lt;/glp:note&gt;
      &lt;heading searchtype="COMMENTARY"&gt;
        &lt;edpnum&gt;
          &lt;refpt id="WPV.APAR.2000-1" type="ext"/&gt;[2000.1] &lt;/edpnum&gt;
        &lt;title&gt;Background&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="COMMENTARY"&gt;
        &lt;p&gt;
          &lt;text&gt;All matters commenced after 1 July 2011 which 
            fit into the categories set out
            in the Practice Note are to be issued in the Probate List. 
            Such matters are:&lt;/text&gt;
          &lt;text&gt; &lt;/text&gt;
          &lt;text&gt;(VIC) &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink
                  alttext="Click to link to LawNow Legislation" dpsi="0065"
                  remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6191"
                  docidref="VIC_ACT_6191_LEG_INFO"&gt;Administration and Probate Act
                  1958&lt;/remotelink&gt;.&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
          &lt;text&gt;(VIC) &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink
                  alttext="Click to link to LawNow Legislation" dpsi="0065"
                  remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6401"
                  docidref="VIC_ACT_6401_LEG_INFO"&gt;Trustee Act
                1958&lt;/remotelink&gt;.&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;            
          &lt;l&gt;
            &lt;li&gt;
              &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
              &lt;p&gt;
                &lt;text&gt;contested probate (caveat) applications;&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
              &lt;p&gt;
                &lt;text&gt;unusual or difficult matters &amp;#x2014; applications for grants of
                  representation which are referred by the registrar to a judge, or which in
                  the opinion of the court ought to be included in the List (eg applications
                  to &amp;#x201C;pass over&amp;#x201D; an executor);&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
          &lt;/l&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
    &lt;level ...&gt;
      &lt;!-- ... --&gt;
    &lt;/level&gt;
  &lt;/leg:comntry&gt;
&lt;/case:appendix&gt;

    </codeblock>
    </example>

    <example>
      <title>Target XML #1</title>
      <codeblock>

&lt;appendix&gt;
  &lt;bodytext&gt;
    &lt;!-- ... --&gt;
    &lt;primlaw:excerpt&gt;
      &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;annot:annotations&gt;
          &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
            &lt;annot:annotation xml:id="WPV_APAR.SGM_WPV.APAR.2000-1" includeintoc="true"
              alternatetoccaption="[2000.1] Background"&gt;
              &lt;ref:anchor id="WPV.APAR.2000-1" anchortype="global"/&gt;
              &lt;!-- This is converted from the &lt;glp:note&gt; that is the first child of &lt;level&gt;. --&gt;
              &lt;note&gt;
                &lt;bodytext&gt;
                  &lt;blockquote&gt;
                    &lt;p&gt;
                      &lt;text&gt;Legislation cited in [2000.1] below. LawNow subscribers click
                        through for daily updates and historical versions. (VIC) &lt;lnci:cite&gt;
                          &lt;lnci:content&gt;&lt;ref:crossreference&gt;
                              &lt;ref:content&gt;Administration and Probate Act 1958&lt;/ref:content&gt;
                              &lt;ref:locator ...&gt;...&lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;.&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;(VIC) &lt;lnci:cite&gt;
                          &lt;lnci:content&gt;&lt;ref:crossreference&gt;
                              &lt;ref:content&gt;Trustee Act 1958&lt;/ref:content&gt;
                              &lt;ref:locator ...&gt;...&lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;.&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/blockquote&gt;
                &lt;/bodytext&gt;
              &lt;/note&gt;
              &lt;heading&gt;
                &lt;desig&gt;[2000.1] &lt;/desig&gt;
                &lt;title&gt;Background&lt;/title&gt;
              &lt;/heading&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;All matters commenced after 1 July 2011 which fit into the categories
                    set out in the Practice Note are to be issued in the Probate List. Such
                    matters are:&lt;/text&gt;
                  &lt;list&gt;
                    &lt;listitem&gt;
                      &lt;label&gt;&amp;#x2022;&lt;/label&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;contested probate (caveat) applications;&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                      &lt;label&gt;&amp;#x2022;&lt;/label&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;unusual or difficult matters &amp;#x2014; applications for grants of
                            representation which are referred by the registrar to a judge, or
                            which in the opinion of the court ought to be included in the List
                            (eg applications to &amp;#x201C;pass over&amp;#x201D; an executor);&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                  &lt;/list&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/annot:annotation&gt;
            &lt;annot:annotation ...&gt;
              &lt;!-- ... --&gt;
            &lt;/annot:annotation&gt;
          &lt;/annot:annotation-grp&gt;
        &lt;/annot:annotations&gt;
      &lt;/primlaw:level&gt;
    &lt;/primlaw:excerpt&gt;
  &lt;/bodytext&gt;
&lt;/appendix&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Source XML #2</title>
      <p>This includes examples of:<ul>
        <li>a <sourcexml>glp:note</sourcexml> that is <b><u>not</u></b> the first child of <sourcexml>level</sourcexml></li>
        <li>a <sourcexml>footnotegrp/footnote</sourcexml> refering to a <sourcexml>fnr</sourcexml>
            that occurs earlier in the same document</li>
        </ul>
      </p>
      <codeblock>

&lt;case:appendix&gt;
  &lt;!--...--&gt;
  &lt;leg:comntry&gt;
    &lt;level id="CLWA_COURTS.SGM_CLWA.COURTS.PD.4020-5" leveltype="para0" subdoc="true"
      toc-caption="[PDSC 4020.5] Confidentiality"&gt;
      &lt;heading searchtype="COMMENTARY"&gt;
        &lt;edpnum&gt;
          &lt;refpt id="CLWA.COURTS.PD.4020-5" type="ext"/&gt;[PDSC 4020.5] &lt;/edpnum&gt;
        &lt;title&gt;Confidentiality&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="COMMENTARY"&gt;
        &lt;!-- This &lt;glp:note&gt; is not the first child of &lt;level&gt;. --&gt;
        &lt;glp:note&gt;
        &lt;p&gt;
          &lt;text&gt;For voluntary case conferencing to work, its confidential nature must be
            protected. The duty of loyalty owed by a lawyer to a client extends beyond the
            existence of the retainer...&lt;/text&gt;
        &lt;/p&gt;
        &lt;!-- This is a &lt;footnotegrp&gt;/&lt;footnote&gt; for an &lt;fnr&gt; that occurs earlier in the same document. --&gt;
        &lt;footnotegrp&gt;
          &lt;footnote fntoken="CLWA.PD.PD.19116B.FTN1" fnrtokens="CLWA.PD.PD.19116B.FTN1-R"
            type="default"&gt;
            &lt;fnlabel&gt;*&lt;/fnlabel&gt;
            &lt;fnbody&gt;
              &lt;p&gt;
                &lt;refpt id="CLWA.PD.PD.19116B.FTN1" type="ext"/&gt;
                &lt;text&gt;The version of the protocol on the Supreme Court website refers, in
                  error, to the Criminal Practice Act.&lt;/text&gt;
              &lt;/p&gt;
            &lt;/fnbody&gt;
          &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
    &lt;level ...&gt;
      &lt;!-- ... --&gt;
    &lt;/level&gt;
  &lt;/leg:comntry&gt;
&lt;/case:appendix&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML #2</title>
      <codeblock>

&lt;appendix&gt;
  &lt;bodytext&gt;
    &lt;!-- ... --&gt;
    &lt;primlaw:excerpt&gt;
      &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;annot:annotations&gt;
          &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
            &lt;annot:annotation xml:id="CLWA_COURTS.SGM_CLWA.COURTS.PD.4020-5" includeintoc="true"
              alternatetoccaption="[PDSC 4020.5] Confidentiality"&gt;
              &lt;ref:anchor id="CLWA.COURTS.PD.4020-5" anchortype="global"/&gt;
              &lt;heading&gt;
                &lt;desig&gt;[PDSC 4020.5] &lt;/desig&gt;
                &lt;title&gt;Confidentiality&lt;/title&gt;
              &lt;/heading&gt;
              &lt;bodytext&gt;
                &lt;!-- This is converted from a &lt;glp:note&gt; that is not the first child of &lt;level&gt;. --&gt;
                &lt;note&gt;
                  &lt;bodytext&gt;
                    &lt;p&gt;
                      &lt;text&gt;For voluntary case conferencing to work, its confidential nature
                        must be protected. The duty of loyalty owed by a lawyer to a client
                        extends beyond the existence of the retainer...&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/bodytext&gt;
                &lt;/note&gt;
                &lt;!-- This is converted from a &lt;footnotegrp&gt;/&lt;footnote&gt; for an &lt;fnr&gt; that occurs earlier in the same document. --&gt;
                &lt;p&gt;
                  &lt;text&gt;
                    &lt;footnotegroup&gt;
                      &lt;footnote&gt;
                        &lt;ref:anchor id="CLWA.PD.PD.19116B.FTN1"/&gt;
                        &lt;ref:returnreference&gt;
                          &lt;ref:locator anchoridref="CLWA.PD.PD.19116B.FTN1-R" anchortype="local"
                          /&gt;
                        &lt;/ref:returnreference&gt;
                        &lt;label&gt;*&lt;/label&gt;
                        &lt;bodytext&gt;
                          &lt;p&gt;
                            &lt;text&gt;The version of the protocol on the Supreme Court website
                              refers, in error, to the Criminal Practice Act.&lt;/text&gt;
                          &lt;/p&gt;
                        &lt;/bodytext&gt;
                      &lt;/footnote&gt;
                    &lt;/footnotegroup&gt;
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/annot:annotation&gt;
            &lt;annot:annotation ...&gt;
              &lt;!-- ... --&gt;
            &lt;/annot:annotation&gt;
          &lt;/annot:annotation-grp&gt;
        &lt;/annot:annotations&gt;
      &lt;/primlaw:level&gt;
    &lt;/primlaw:excerpt&gt;
  &lt;/bodytext&gt;
&lt;/appendix&gt;

    </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2013-09-15: <ph id="change_20130915_JCG">Added this entirely new instruction to handle new XPaths. (Webteam #234565)</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.body_case.content_case.appendix_leg.comntry.dita  -->
	
	
	<xsl:template match="case:appendix" priority="30">	  
	    <xsl:apply-templates select="@*"/>
	    <xsl:for-each-group select="*" group-adjacent="if (self::sigblock) then 0 else 1">
	      <xsl:choose>
	        <xsl:when test="current-grouping-key()=0">
	          <xsl:apply-templates select="current-group()"/>
	        </xsl:when>
	        <xsl:otherwise>
	         <appendix xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	         <xsl:apply-templates select="self::heading"/>
	           <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	            <xsl:for-each-group select="current-group()" group-adjacent="if (self::leg:comntry) then 0 else 1">
	              <xsl:choose>
	                <xsl:when test="current-grouping-key()=0">
	                  <primlaw:excerpt>
	                    <primlaw:level leveltype="unclassified">
	                      <xsl:apply-templates select="current-group() except self::heading"/>
	                    </primlaw:level>
	                  </primlaw:excerpt>
	                </xsl:when>
	                <xsl:otherwise>
	                  <xsl:apply-templates select="current-group() except self::heading"/>
	                </xsl:otherwise>
	              </xsl:choose>
	            </xsl:for-each-group>
	          </bodytext>
	         </appendix>
	        </xsl:otherwise>
	      </xsl:choose>
	    </xsl:for-each-group>
	  
	</xsl:template>
  
  <xsl:template match="case:appendix/sigblock">
    <sigblock xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@*|node()"/>
    </sigblock>
  </xsl:template>
  
  <!-- JL 20171110: changed to disregard completely whitespace nodes that output as empty name text -->
  
  <xsl:template match="person" priority="30">
    <person:person>
    <xsl:for-each select="node()[not(self::text()[matches(. , '^\s+$')])]">
      <xsl:choose>
        <xsl:when test="self::*">
          <xsl:apply-templates select="."/>
        </xsl:when>
        <xsl:otherwise>
          <person:name.text>
            <xsl:apply-templates select="."/>
          </person:name.text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    </person:person>
  </xsl:template>
	
  <xsl:template match="person/name.detail | person/name.detail/name.honorific | person/name.detail/name.degree">
    <xsl:element name="{concat('person:', local-name())}">
	    <xsl:apply-templates select="@*|node()"/>
    </xsl:element>
	</xsl:template>
	
  <!-- everything else should be handled in generic modules -->

</xsl:stylesheet>