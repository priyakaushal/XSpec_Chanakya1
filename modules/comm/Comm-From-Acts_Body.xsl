<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    version="2.0" exclude-result-prefixes="dita ci comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_body">
    <title>Body <lnpid>id-NZ02-22807</lnpid></title>
    <shortdesc>All of the following are descendants of <targetxml>comm:body</targetxml>. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>comm:body</title>
            <p><sourcexml>/comm:body</sourcexml> becomes <targetxml>/legis:body</targetxml> children
                as described below: </p>comes with @id becomes @xml:id and @leveltype becomes
            @leveltype the values are tokenized, <p>
            
                <note>Highlighted below are some of the major xpaths you may incur. However please
                    reference the common general markup elements on the handling of other element
                    not specifically outlined in this section. </note>
            </p>
            
            <p>
                The source XML @leveltype value you should incur and their target XML @leveltype output value .
                <ul>
                    <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                            <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                    <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                            <targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                    <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes
                            <targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
                </ul>
            </p>
          
            <p>
                <ul id="ul_jtf_bgu_pf">
                    <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                            <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
                        <targetxml>primlaw:level</targetxml> populated as: <pre>
              &lt;level id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="comm.chap"&gt;
              <b>Becomes</b>
              &lt;primlaw:level xml:id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="chapter"&gt;
            </pre>
                        <ul id="ul_ukb_jnm_pf">
                            <li><sourcexml>.../level/heading</sourcexml> becomes
                                    <targetxml>primlaw:level/heading</targetxml></li>
                        </ul>
                        <targetxml>primlaw:level</targetxml> populated as: <pre>
              &lt;level id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="comm.chap"&gt;
                            &lt;heading searchtype="COMMENTARY"&gt;
                             &lt;title&gt;&lt;refpt id="1990A56-AMENDING-LEGISLATION" type="ext"/&gt;Amending Legislation&lt;/title&gt;
                            &lt;/heading&gt;
                           ...
                        &lt;/level&gt; 
                    
              <b>Becomes</b>
              &lt;primlaw:level xml:id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="chapter"&gt;
                            &lt;ref:anchor id="1990A56-AMENDING-LEGISLATION" anchortype="global"/&gt;
                            &lt;heading&gt;
                                &lt;title&gt;Amending Legislation&lt;/title&gt;
                            &lt;/heading&gt;
                            .....
                        &lt;/primlaw:level&gt;
                        
            </pre>
                        <p>
                            <ul id="ul_qzp_rnm_pf">
                                <li><sourcexml>.../level/bodytext</sourcexml> becomes
                                        <targetxml>primlaw:level/primlaw:bodytext</targetxml>
                                    populated as: </li>
                            </ul>
                            <pre>
                  &lt;level id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="comm.chap"&gt;
                            &lt;heading searchtype="COMMENTARY"&gt;
                             &lt;title&gt;&lt;refpt id="1990A56-AMENDING-LEGISLATION" type="ext"/&gt;Amending Legislation&lt;/title&gt;
                            &lt;/heading&gt;
                             &lt;bodytext searchtype="COMMENTARY"&gt;
                              &lt;p&gt;
                             &lt;table/&gt;
                             &lt;/p&gt;
                             &lt;/bodytext&gt;
                        &lt;/level&gt; 
                    
              <b>Becomes</b>

              &lt;primlaw:level xml:id="NZSTATUTES_ACTS-W3.SGM_1990A56-AMENDING-LEGISLATION" leveltype="chapter"&gt;
                            &lt;ref:anchor id="1990A56-AMENDING-LEGISLATION" anchortype="global"/&gt;
                            &lt;heading&gt;
                                &lt;title&gt;Amending Legislation&lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;primlaw:bodytext&gt;
                               &lt;p&gt;
                             &lt;table/&gt;
                             &lt;/p&gt;
                             &lt;/primlaw:bodytext&gt;
                        &lt;/primlaw:level&gt;
                        
              </pre>
                        </p></li>
                    <li>
                        <ul id="ul_mlc_cgu_pf">
                            <li>
                                <note>@searchtype attribute should be suppressed and not converted
                                    into the output .</note>
                            </li>
                            <li><sourcexml>.../comm:body/level/bodytext/p/text/ci:cite/ci:content</sourcexml>
                                becomes
                                    <targetxml>legis:legis/legis:body/primlaw:level/primlaw:bodytext/p/text/lnci:cite/lnci:content</targetxml>
                                populated as: <note>Refer to common modules for specifics on how to
                                    handle common_rosetta_ci:cite, common_rosetta_p and
                                    common_rosetta_text for handling of <sourcexml>refpt</sourcexml>
                                    <sourcexml>ci:cite</sourcexml>, <sourcexml>p</sourcexml>, and
                                        <sourcexml>text</sourcexml> elements</note>
                            </li>
                        </ul>
                        <pre>
                &lt;bodytext searchtype="COMMENTARY"&gt;
             &lt;p&gt;
              &lt;text&gt;For Vesting Orders made pursuant to this Act see&amp;#x2014;&lt;/text&gt;
             &lt;/p&gt;
             &lt;p&gt;
              &lt;text&gt;&lt;ci:cite searchtype="LEG-REF"&gt;
                &lt;ci:content&gt;
                 &lt;remotelink dpsi="006A" remotekey1="REFPTID" service="DOC-ID" refpt="1990R293"&gt;SR
                  1990/293&lt;/remotelink&gt;
                &lt;/ci:content&gt;
               &lt;/ci:cite&gt;:&lt;/text&gt;
             &lt;/p&gt;
                <b>Becomes</b>
                 
                
                &lt;primlaw:bodytext&gt;
                               &lt;p&gt;
                                &lt;text&gt;For Vesting Orders made pursuant to this Act see&amp;#x2014;&lt;/text&gt;
                             &lt;/p&gt;
                             &lt;p&gt;
                              &lt;text&gt;
                                &lt;lnci:cite&gt;
                                     &lt;lnci:content&gt;SR 1990/293&lt;/lnci:content&gt;
                               &lt;/lnci:cite&gt;
                            :&lt;/text&gt;
                             &lt;/p&gt;
                  &lt;/primlaw:bodytext&gt;
              </pre>
                    </li>
                    <li><b><sourcexml>...comm:body/level/bodytext/p/table</sourcexml> becomes
                                <targetxml>.../legis:body/primlaw:level/primlaw:bodytext/p/table</targetxml>
                            ...</b>
                        <p>
                            <note>Refer to common modules for specifics on how to handle
                                common_rosetta_table <sourcexml>table</sourcexml> for commentary
                                acts elements</note>
                            <pre>
                  &lt;comm:body&gt;
                                &lt;level id="NZSTATUTES_LEGISLATION-HOME-PAGE.SGM_HP-LEG" leveltype="comm.chap"&gt;
                                  &lt;heading searchtype="COMMENTARY"&gt;
                                   &lt;title&gt;&lt;refpt id="HP-LEG" type="ext"/&gt;Legislation Home Page&lt;/title&gt;
                                  &lt;/heading&gt;            
                                &lt;bodytext searchtype="COMMENTARY"&gt;
                                     &lt;pgrp&gt;
                                      &lt;heading&gt;
                                       &lt;title&gt;New Zealand Acts in force&lt;/title&gt;
                                      &lt;/heading&gt;
                                      &lt;p&gt;
                                       &lt;table frame="none" pgwide="1"&gt;  (table contents)  &lt;/table&gt;
                                       &lt;/p&gt;
                               &lt;/bodytext&gt;
                    &lt;/comm.body&gt;
                
                <b>Becomes</b>
                                
                  &lt;primlaw:level xml:id="NZSTATUTES_LEGISLATION-HOME-PAGE.SGM_HP-LEG" leveltype="chapter"&gt;
                           &lt;ref:anchor id="nz_1990A56-HP-LEG" anchortype="global"/&gt;
                            &lt;heading&gt;
                                &lt;title&gt; Legislation Home Page&lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;primlaw:bodytext&gt;
                                &lt;p&gt;
                                    &lt;table/&gt;
                                &lt;/p&gt;
                            &lt;/primlaw:bodytext&gt;
                        &lt;/primlaw:level&gt;
                
                
              </pre>
                        </p>
                    </li>
                </ul>
                <ul>
                    <li><b><sourcexml>/.../comm:body/level/bodytext/p/l/li/lilabel</sourcexml>
                            becomes
                                <targetxml>.../legis:body/primlaw:level/primlaw:bodytext/p/list/listitem/lilabel</targetxml>
                            ...</b>
                        <p>
                            <note>Refer to common modules for specifics on how to handle
                                common_rosetta_list <sourcexml>list</sourcexml> for commentary acts
                                elements</note>
                            <pre>
                   &lt;leg:bodytext&gt;
                         &lt;p&gt;
                              &lt;text&gt;Notwithstanding the repeal or amendment or revocation of any enactment by this
                               Act,&amp;#x2014;&lt;/text&gt;  
                               &lt;/p&gt;
                     &lt;l&gt;
                      &lt;li&gt;
                       &lt;lilabel&gt;(a)&lt;/lilabel&gt;
                       &lt;p&gt;
                        &lt;text&gt;The provisions of subsections (4) to (7) of section 75 of the Samoa
                         Act&amp;#xA0;1921 shall continue to apply, as if this Act had not been passed, with
                         respect to any memorial under that section filed in the &lt;emph typestyle="bf"
                         &gt;[&lt;/emph&gt;High Court&lt;emph typestyle="bf"&gt;]&lt;/emph&gt; of New Zealand before
                         Independence Day:&lt;/text&gt;
                       &lt;/p&gt;
                      &lt;/li&gt;
                     &lt;li&gt;
                       &lt;lilabel&gt;(b)&lt;/lilabel&gt;
                      &lt;p&gt;
                        &lt;text&gt;Every reception order made pursuant to section 328 of the Samoa
                         Act&amp;#xA0;1921 with respect to any person who is subject to such an order
                         immediately before Independence Day shall continue in full force and effect:&lt;/text&gt;
                     &lt;/p&gt;
                   &lt;/li&gt;
                   ....
                   &lt;/l&gt;
               
                
                <b>Becomes</b>
                                
                     
                &lt;primlaw:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Notwithstanding the repeal or amendment or revocation of any enactment by this
                            Act,&amp;#x2014;&lt;/text&gt;
                       &lt;list&gt;
                        &lt;listitem&gt;
                            &lt;label&gt;(a)&lt;/label&gt;
                            &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The provisions of subsections (4) to (7) of section 75 of the Samoa
                                    Act&amp;#xA0;1921 shall continue to apply, as if this Act had not been passed, with
                                    respect to any memorial under that section filed in the 
                                    &lt;emph typestyle="bf"&gt;[&lt;/emph&gt;High Court&lt;emph typestyle="bf"&gt;]&lt;/emph&gt; of New Zealand
                                    before Independence Day:&lt;/text&gt;
                            &lt;/p&gt;
                                &lt;/bodytext&gt;
                        &lt;/listitem&gt;
                        &lt;listitem&gt;
                            &lt;label&gt;(b)&lt;/label&gt;
                            &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Every reception order made pursuant to section 328 of the Samoa
                                    Act&amp;#xA0;1921 with respect to any person who is subject to such an order
                                    immediately before Independence Day shall continue in full force and effect:&lt;/text&gt;
                            &lt;/p&gt;
                                &lt;/bodytext&gt;
                        &lt;/listitem&gt;
                    &lt;/list&gt;
                    &lt;/p&gt;
                &lt;/primlaw:bodytext&gt;
                
              </pre>
                        </p>
                    </li>
                </ul>
                <ul>
                    <li>When list are nested
                                <b><sourcexml>/.../comm:body/level/bodytext/p/l/li/l/li</sourcexml>
                            becomes
                                <targetxml>.../legis:body/primlaw:level/primlaw:bodytext/p/list/listitem/bodytext/list/listem</targetxml>
                            ...</b>
                        <p>
                            <note>Refer to common modules for specifics on how to handle
                                common_rosetta_list <sourcexml>list</sourcexml> for commentary acts
                                elements</note>
                            <pre>
                   
                &lt;l&gt;
                ...
                  &lt;li&gt;
                     &lt;lilabel&gt;2.&lt;/lilabel&gt;
                         &lt;p&gt;
                          &lt;text&gt;For penalties for offences re&amp;#x2014;&lt;/text&gt;
                         &lt;/p&gt;
                         &lt;l&gt;
                             &lt;li&gt;
                              &lt;lilabel&gt;(a)&lt;/lilabel&gt;
                              &lt;p&gt;
                               &lt;text&gt;driving while disqualified:&lt;/text&gt;
                              &lt;/p&gt;
                             &lt;/li&gt;
                             &lt;li&gt;
                              &lt;lilabel&gt;(b)&lt;/lilabel&gt;
                              &lt;p&gt;
                               &lt;text&gt;driving contrary to limited licences:&lt;/text&gt;
                              &lt;/p&gt;
                              &lt;p&gt;
                               &lt;text&gt;see &lt;remotelink dpsi="0069" remotekey1="REFPTID" service="DOC-ID"
                                 refpt="1998A110S32"&gt;s&amp;#xA0;32(5)&lt;/remotelink&gt; of the Land Transport Act&amp;#xA0;1998 (1998
                                No&amp;#xA0;110).&lt;/text&gt;
                              &lt;/p&gt;
                             &lt;/li&gt;
                         &lt;/l&gt;
                     &lt;/li&gt;
     
                
                <b>Becomes</b>
                                
                     
              &lt;list&gt;
              ...
                 &lt;listitem&gt;
                     &lt;label&gt;2.&lt;/label&gt;
                     &lt;bodytext&gt;
                         &lt;p&gt;
                       &lt;text&gt;For penalties for offences re&amp;#x2014;&lt;/text&gt;
                         &lt;/p&gt;
                         &lt;list&gt;
                              &lt;listitem&gt;
                                     &lt;label&gt;(a)&lt;/label&gt;
                                  &lt;bodytext&gt;
                                      &lt;p&gt;
                                         &lt;text&gt;driving while disqualified:&lt;/text&gt;
                                     &lt;/p&gt;&lt;/bodytext&gt;
                                 &lt;/listitem&gt;
                                 &lt;listitem&gt;
                                     &lt;label&gt;(b)&lt;/label&gt;
                                     &lt;bodytext&gt;
                                         &lt;p&gt;
                                         &lt;text&gt;driving contrary to limited licences:&lt;/text&gt;
                                         &lt;/p&gt;
                                         &lt;p&gt;
                                         &lt;text&gt;The Land Transport Act&amp;#xA0;1998 (1998
                                             No&amp;#xA0;110).&lt;/text&gt;
                                         &lt;/p&gt;
                                     &lt;/bodytext&gt;
                                 &lt;/listitem&gt;
                           &lt;/list&gt;
                     &lt;/bodytext&gt;
                  &lt;/listitem&gt; 
               &lt;/list&gt;
                
              </pre>
                        </p>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>Changes</title>
            <p>2012-04-27: Updated the sample output to match the xpath:
                legis:body/primlaw:level/primlaw:bodytext/p/list/listitem/lilabel the para now
                closes after the list instead of before the list </p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="comm:body">

		<!--  Original Target XPath:  /legis:body   -->
		<legis:body>
			<xsl:apply-templates select="@* | node()"/>
		</legis:body>

	</xsl:template>

      <xsl:template match="@leveltype">
            <xsl:attribute name="leveltype">
                <xsl:choose>
                    <!-- JD: 2017-07-24: 'part' not mentioned in CI but appears in DT output -->				
                    <xsl:when test=". = ('agreement','attachment','part')">
                        <xsl:value-of select="."/>
                    </xsl:when>
                    <xsl:when test=".='attachments'">
                        <xsl:value-of select="'attachment'"/>
                    </xsl:when>
                    <xsl:when test=".='comm.intro'">
                        <xsl:value-of select="'annotation-group'"/>
                    </xsl:when>
                    <xsl:when test=".='convention'">
                        <xsl:value-of select="'treaty'"/>
                    </xsl:when>
                    <xsl:when test=". = 'leg-inst'">
                        <xsl:value-of select="'instrument'"/>
                    </xsl:when>
                    <xsl:when test=". = 'miscins'">
                        <xsl:value-of select="'instrument'"/>
                    </xsl:when>
                    <xsl:when test=". = 'proc-guide'">
                        <xsl:value-of select="'procedural-guide'"/>
                    </xsl:when>
                    <xsl:when test=". = 'reg-code'">
                        <xsl:value-of select="'regulatory-code'"/>
                    </xsl:when>
                    <xsl:when test=". = 'reg'">
                        <xsl:value-of select="'regulation'"/>
                    </xsl:when>
                    <xsl:when test=". = 'subreg'">
                        <xsl:value-of select="'subregulation'"/>
                    </xsl:when>
                    <xsl:when test=". = 'release'">
                        <xsl:value-of select="'instrument'"/>
                    </xsl:when>
                    <xsl:when test=". = 'scale'">
                        <xsl:value-of select="'schedule'"/>
                    </xsl:when>
                    <xsl:when test=". = 'scalep'">
                        <xsl:value-of select="'paragraph'"/>
                    </xsl:when>
                    <xsl:when test=". = 'scales'">
                        <xsl:value-of select="'schedule'"/>
                    </xsl:when>
                    <xsl:when test=". = 'scalesp'">
                        <xsl:value-of select="'paragraph'"/>
                    </xsl:when>
                    <xsl:when test=". = 'schedulegrp'">
                        <xsl:value-of select="'schedule'"/>
                    </xsl:when>
                    <xsl:when test=". = 'subgroup'">
                        <xsl:value-of select="'subchapter'"/>
                    </xsl:when>
                    <xsl:when test=". = 'summary'">
                        <xsl:value-of select="'introduction'"/>
                    </xsl:when>
                    <xsl:when test=". = 'sect'">
                        <xsl:value-of select="'section'"/>
                    </xsl:when>
                    <xsl:when test=". = 'subsect'">
                        <xsl:value-of select="'subsection'"/>
                    </xsl:when>
                    <xsl:when test=". = 'para0'">
                        <xsl:value-of select="'paragraph'"/>
                    </xsl:when>
                    <xsl:when test=". = 'group'">
                        <xsl:value-of select="'subchapter'"/>
                    </xsl:when>
                    <xsl:when test=". = 'comm.chap'">
                        <xsl:value-of select="'chapter'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="'unclassified'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </xsl:template>
    
    
    
    <xsl:template match="level">
        <primlaw:level>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="heading/title/refpt"/>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="bodytext[parent::level]">
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>
    </xsl:template>
    
    <xsl:template match="@searchtype"/>
</xsl:stylesheet>