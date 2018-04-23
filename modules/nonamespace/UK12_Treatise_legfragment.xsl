<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_legfragment">
    <title>legfragment (and descendants) <lnpid>id-UK12-29827</lnpid></title>
    <body>
        <p><sourcexml>legfragment[@searchtype]</sourcexml> becomes
                <targetxml>primlaw:excerpt/primlaw:bodytext/primarysource</targetxml>. The source
            attribute <sourcexml>@searchtype</sourcexml> is suppressed.<ul>
                <li>Exception: If <sourcexml>legfragment</sourcexml> is child of
                        <sourcexml>leg:bodytext</sourcexml> then target is
                        <targetxml>primlaw:excerpt/primlaw:bodytext</targetxml>. That is, do not
                    create <targetxml>primarysource</targetxml> for target.</li>
            </ul></p>
        <p>Descendants as follow:<ul>
                <li><sourcexml>leg:info</sourcexml> becomes <targetxml>legis:legis</targetxml><ul>
                        <li>Create <targetxml>legis:head/primlawinfo:primlawinfo</targetxml> to hold
                            the following:<ul>
                                <li><sourcexml>leg:officialnum</sourcexml> becomes
                                        <targetxml>primlawinfo:identifier[@idtype="officialnum"]</targetxml><ul>
                                        <li><sourcexml>leg:year</sourcexml> becomes
                                                <targetxml>primlawinfo:identifier-component[@type="year"]</targetxml></li>
                                        <li><sourcexml>leg:seriesnum</sourcexml> becomes
                                                <targetxml>primlawinfo:identifier-component[@type="seriesnum"]</targetxml></li>
                                    </ul></li>
                                <li><sourcexml>leg:officialname</sourcexml> becomes
                                        <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></li>
                                <li><sourcexml>leg:dates</sourcexml> becomes
                                        <targetxml>primlawinfo:dates</targetxml><ul>
                                        <li><sourcexml>leg:effdate</sourcexml> and child
                                                <sourcexml>date[@day @month @year]</sourcexml>
                                            become <targetxml>primlawinfo:effdate[@day @month
                                                @year]</targetxml> and child
                                                <targetxml>date-text</targetxml>. Notice that date
                                            component attributes (<targetxml>@day @month
                                                @year</targetxml>) are set on parent
                                                <targetxml>primlawinfo:effdate</targetxml> for
                                            target.</li>
                                        <li><sourcexml>leg:enactdate</sourcexml> and child
                                                <sourcexml>date[@day @month @year]</sourcexml>
                                            become <targetxml>primlawinfo:enactdate[@day @month
                                                @year]</targetxml> and child
                                                <targetxml>date-text</targetxml>. Notice that date
                                            component attributes (<targetxml>@day @month
                                                @year</targetxml>) are set on parent
                                                <targetxml>primlawinfo:enactdate</targetxml> for
                                            target.</li>
                                        <li><sourcexml>leg:miscdate</sourcexml> and child
                                                <sourcexml>date[@day @month @year]</sourcexml>
                                            become <targetxml>miscdate[@datetype="unspecified" @day
                                                @month @year]</targetxml> and child
                                                <targetxml>date-text</targetxml>. Notice that target
                                                <targetxml>@datetype="unspecified"</targetxml> is
                                            hard-coded and that date component attributes
                                                (<targetxml>@day @month @year</targetxml>) are set
                                            on parent <targetxml>miscdate</targetxml> for
                                            target.</li>
                                        <li><sourcexml>leg:laidline</sourcexml> and child
                                                <sourcexml>date[@day @month @year]</sourcexml>
                                            become <targetxml>primlawinfo:presenteddate[@day @month
                                                @year]</targetxml> and child
                                                <targetxml>date-text</targetxml>. Notice that date
                                            component attributes (<targetxml>@day @month
                                                @year</targetxml>) are set on parent
                                                <targetxml>primlawinfo:presenteddate</targetxml> for
                                            target.</li>
                                    </ul></li>
                            </ul></li>
                        <li>Create <targetxml>legis:body/primlaw:prelim</targetxml> to hold the following:<ul>
                                <li><sourcexml>leg:longtitle</sourcexml> becomes
                                        <targetxml>primlaw:synopsis/bodytext</targetxml></li>
                                <li><sourcexml>publication</sourcexml> becomes
                                        <targetxml>ref:relatedrefs/bodytext/textitem</targetxml></li>
                                <li><sourcexml>note[@notetype]</sourcexml> becomes
                                        <targetxml>note[@notetype]/bodytext</targetxml>. The
                                    attribute is optional. The element converts regardless of
                                    whether attribute present.</li>
                                <li><sourcexml>leg:sectionlist/toc</sourcexml>. Suppress the tag
                                        <sourcexml>leg:sectionlist</sourcexml>. Child
                                        <sourcexml>toc</sourcexml> becomes
                                        <targetxml>toc</targetxml>, as per General Markup
                                    rules.</li>
                                <li><sourcexml>leg:status</sourcexml> becomes
                                        <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml></li>
                            </ul></li>
                    </ul></li>
                <li><sourcexml>leg:preamble</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype]</targetxml>. Note that two source
                    elements map to one in target.<ul>
                        <li>Exceptional leveltype value: Map
                                <sourcexml>@leveltype="schedule-grp"</sourcexml> to
                                <targetxml>@leveltype="schedule"</targetxml>.</li>
                    </ul></li>
                <li><sourcexml>leg:endmatter</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="endmatter"]</targetxml><ul>
                        <li>If child <sourcexml>pgrp</sourcexml> or <sourcexml>sigblock</sourcexml>
                            is present, create wrapper <targetxml>primlaw:bodytext</targetxml>. For
                            example: <sourcexml>leg:endmatter/sigblock</sourcexml> becomes
                                <targetxml>primlaw:level[@leveltype="endmatter"]/primlaw:bodytext/sigblock</targetxml></li>
                    </ul></li>
                <li><sourcexml>leg:levelbody</sourcexml> is suppressed, i.e. suppress tag but
                    process contents</li>
                <li><sourcexml>leg:heading[@align @inline]</sourcexml> becomes
                        <targetxml>heading[@align @inline]</targetxml>. The attributes are optional.<ul>
                        <li><sourcexml>leg:empleg</sourcexml> becomes
                                <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>.
                            The markup is moved for target, changed from child to sibling. Source is
                            parent-child <sourcexml>leg:heading/leg:empleg</sourcexml>. Target is
                            siblings <targetxml>heading</targetxml> and
                                <targetxml>primlaw:authority</targetxml>.</li>
                    </ul></li>
                <li><sourcexml>leg:bodytext</sourcexml> becomes
                        <targetxml>primlaw:bodytext</targetxml></li>
            </ul></p>

        <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;legfragment searchtype="EURegulation"&gt;
  &lt;leg:info&gt;
    &lt;leg:officialnum&gt;ECB &lt;leg:year&gt;1994&lt;/leg:year&gt;
        &lt;leg:seriesnum&gt;12&lt;/leg:seriesnum&gt;
    &lt;/leg:officialnum&gt;
    &lt;leg:officialname&gt;Regulation (EC) No 2157/1999 of the European Central Bank&lt;/leg:officialname&gt;
    &lt;leg:dates&gt;
        &lt;leg:enactdate&gt;Made &lt;date day="20" month="03" year="2000"&gt;20th March 2000&lt;/date&gt;
        &lt;/leg:enactdate&gt;
        &lt;leg:effdate&gt;Coming into force &lt;date day="01" month="04" year="2000"&gt;1st April 2000&lt;/date&gt;
        &lt;/leg:effdate&gt;
        &lt;leg:miscdate&gt;of &lt;date day="23" month="09" year="1999"&gt;23 September 1999&lt;/date&gt;
        &lt;/leg:miscdate&gt;
        &lt;leg:laidline&gt;Laid before Parliament &lt;date day="11" month="03" year="2003"&gt;11th March 2003&lt;/date&gt;
        &lt;/leg:laidline&gt;
    &lt;/leg:dates&gt;
    &lt;publication&gt;(OJ No L 31; 01.02.2002)&lt;/publication&gt;
    &lt;leg:longtitle&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;on the powers of the European Central Bank to impose
                    sanctions&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:longtitle&gt;
    &lt;leg:status&gt;Amended by: Commission Regulation (EC) No 1254/2008 ...&lt;/leg:status&gt;
    &lt;note&gt;
        &lt;p&gt;
            &lt;text&gt;This Regulation addresses the common ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/note&gt;
    &lt;leg:sectionlist&gt;
      &lt;toc&gt;
         &lt;heading&gt;
            &lt;title&gt;Table of Contents&lt;/title&gt;
         &lt;/heading&gt;
         &lt;toc-entry&gt;
            &lt;heading&gt;
                &lt;title&gt;Title I Introductory Provisions&lt;/title&gt;
            &lt;/heading&gt;
            &lt;entry-pageref&gt;9&lt;/entry-pageref&gt;
         &lt;/toc-entry&gt;
         &lt;!-- etc --&gt;
      &lt;/toc&gt;
    &lt;/leg:sectionlist&gt;
  &lt;/leg:info&gt;
  &lt;leg:preamble&gt;
     &lt;leg:bodytext&gt;
         &lt;p&gt;
             &lt;edpnum value="1681" inline="false"&gt;[1681]&lt;/edpnum&gt;
             &lt;text&gt;The Governing Council ...&lt;/text&gt;
         &lt;/p&gt;
         &lt;p indent="hang"&gt;
             &lt;pnum inline="true"&gt;(1)&lt;/pnum&gt;
             &lt;text&gt;has established the limits ...&lt;/text&gt;
         &lt;/p&gt;
         &lt;!-- etc. --&gt;
     &lt;/leg:bodytext&gt;
  &lt;/leg:preamble&gt;
  &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="regulation"&gt;
       &lt;leg:levelbody&gt;
          &lt;leg:level&gt;
            &lt;leg:level-vrnt leveltype="article"&gt;
                &lt;leg:heading&gt;
                    &lt;desig value="1"&gt;
                        &lt;desiglabel&gt;Article&lt;/desiglabel&gt;
                        &lt;designum&gt;1&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title&gt;Definitions&lt;/title&gt;
                    &lt;leg:empleg&gt;Regulation 3(a)&lt;/leg:empleg&gt;
                &lt;/leg:heading&gt;
                &lt;leg:levelbody&gt;
                    &lt;leg:bodytext&gt;
                       &lt;p&gt;
                          &lt;text&gt;For the purposes of this Regulation, ...&lt;/text&gt;
                       &lt;/p&gt;
                       &lt;legfragment searchtype="EURegulation"&gt;
                          &lt;p&gt;
                             &lt;text&gt;Shall include each person who ...&lt;/text&gt;
                          &lt;/p&gt;
                       &lt;/legfragment&gt;
                    &lt;/leg:bodytext&gt;
                &lt;/leg:levelbody&gt;
            &lt;/leg:level-vrnt&gt;
          &lt;/leg:level&gt;
          &lt;!-- etc. --&gt;                
       &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
  &lt;/leg:level&gt;
  &lt;leg:endmatter&gt;
      &lt;sigblock&gt;
          &lt;p&gt;
              &lt;text&gt;On behalf of the Governing Council:&lt;/text&gt;
          &lt;/p&gt;
      &lt;/sigblock&gt;
      &lt;leg:level&gt;
          &lt;leg:level-vrnt leveltype="annex"&gt;
              &lt;!-- etc --&gt;
          &lt;/leg:level-vrnt&gt;
      &lt;/leg:level&gt;
  &lt;/leg:endmatter&gt;
&lt;/legfragment&gt;
 
<b><i>Target XML</i></b>

&lt;primlaw:excerpt&gt;
  &lt;primlaw:bodytext&gt;
    &lt;primarysource&gt;
      &lt;legis:legis&gt;
         &lt;legis:head&gt;
            &lt;primlawinfo:primlawinfo&gt;
               &lt;primlawinfo:identifier idtype="officialnum"&gt;ECB
                  &lt;primlawinfo:identifier-component type="year"&gt;1994&lt;/primlawinfo:identifier-component&gt;
                  &lt;primlawinfo:identifier-component type="seriesnum"&gt;12&lt;/primlawinfo:identifier-component&gt;
               &lt;/primlawinfo:identifier&gt;
               &lt;legisinfo:legisinfo&gt;
                   &lt;legisinfo:names&gt;
                       &lt;legisinfo:officialtitle&gt;Regulation (EC) No 2157/1999 of the European Central
                           Bank&lt;/legisinfo:officialtitle&gt;
                   &lt;/legisinfo:names&gt;
               &lt;/legisinfo:legisinfo&gt;
               &lt;primlawinfo:dates&gt;
                   &lt;primlawinfo:enactdate day="20" month="03" 
                       year="2000"&gt;Made &lt;date-text&gt;20th March 2000&lt;/date-text&gt;&lt;/primlawinfo:enactdate&gt;
                   &lt;primlawinfo:effdate day="01" month="04" 
                       year="2000"&gt;Coming into force &lt;date-text&gt;1st April 2000&lt;/date-text&gt;
                   &lt;/primlawinfo:effdate&gt;
                   &lt;miscdate datetype="unspecified" day="23" month="09"
                       year="1999"&gt;of &lt;date-text&gt;23 September 1999&lt;/date-text&gt;&lt;/miscdate&gt;
                   &lt;primlawinfo:presenteddate day="11" month="03" 
                       year="2003"&gt;Laid before Parliament &lt;date-text&gt;11th March 2003&lt;/date-text&gt;
                   &lt;/primlawinfo:enactdate&gt;
               &lt;/primlawinfo:dates&gt;
            &lt;/primlawinfo:primlawinfo&gt;
         &lt;/legis:head&gt;
         &lt;legis:body&gt;
            &lt;primlaw:prelim&gt;
               &lt;ref:relatedrefs&gt;
                 &lt;bodytext&gt;
                   &lt;textitem&gt;(OJ No L 31; 01.02.2002)&lt;/textitem&gt;
                 &lt;/bodytext&gt;
               &lt;/ref:relatedrefs&gt;
               &lt;primlaw:synopsis&gt;
                  &lt;bodytext&gt;
                     &lt;p&gt;
                         &lt;text&gt;&lt;emph typestyle="it"&gt;on the powers of the European Central Bank to impose
                             sanctions&lt;/emph&gt;&lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/bodytext&gt;
               &lt;/primlaw:synopsis&gt;
               &lt;primlawinfo:primlawinfo&gt;
                 &lt;legisinfo:legisinfo&gt;
                   &lt;legisinfo:statusgroup&gt;
                     &lt;legisinfo:status&gt;
                       &lt;legisinfo:statustext&gt;Amended by: Commission Regulation (EC) No 
                                    1254/2008 ...&lt;/legisinfo:statustext&gt;
                     &lt;/legisinfo:status&gt;
                   &lt;/legisinfo:statusgroup&gt;
                 &lt;/legisinfo:legisinfo&gt;
               &lt;/primlawinfo:primlawinfo&gt;
               &lt;note&gt;
                  &lt;bodytext&gt;
                    &lt;p&gt;
                      &lt;text&gt;This Regulation addresses the common ...&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/bodytext&gt;
               &lt;/note&gt;
               &lt;toc&gt;
                 &lt;heading&gt;
                   &lt;title&gt;Table of Contents&lt;/title&gt;
                 &lt;/heading&gt;
                 &lt;toc-entry&gt;
                   &lt;heading&gt;
                      &lt;title&gt;Title I Introductory Provisions&lt;/title&gt;
                   &lt;/heading&gt;
                   &lt;toc-pageref&gt;9&lt;/toc-pageref&gt;
                 &lt;/toc-entry&gt;
                 &lt;!-- etc --&gt;
               &lt;/toc&gt;
            &lt;/primlaw:prelim&gt;
         &lt;/legis:body&gt;
      &lt;/legis:legis&gt;
      &lt;primlaw:level leveltype="preamble"&gt;
          &lt;primlaw:bodytext&gt;
              &lt;p&gt;
                  &lt;desig value="1681" inline="false"&gt;[1681]&lt;/desig&gt;
                  &lt;text&gt;The Governing Council ...&lt;/text&gt;
              &lt;/p&gt;
              &lt;p indent="hang"&gt;
                  &lt;desig inline="true"&gt;(1)&lt;/desig&gt;
                  &lt;text&gt;has established the limits ...&lt;/text&gt;
              &lt;/p&gt;
              &lt;!-- etc. --&gt;
          &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:level&gt;
      &lt;primlaw:level leveltype="regulation"&gt;
          &lt;primlaw:level leveltype="article"&gt;
              &lt;heading&gt;
                  &lt;desig value="1"&gt;Article 1&lt;/desig&gt;
                  &lt;title&gt;Definitions&lt;/title&gt;
              &lt;/heading&gt;
              &lt;primlaw:authority&gt;
                  &lt;primlaw:authority-item&gt;
                     &lt;textitem&gt;Regulation 3(a)&lt;/textitem&gt;
                  &lt;/primlaw:authority-item&gt;
              &lt;/primlaw:authority&gt;
              &lt;primlaw:bodytext&gt;
                  &lt;p&gt;
                      &lt;text&gt;For the purposes of this Regulation, ...&lt;/text&gt;
                  &lt;/p&gt;
                  &lt;primlaw:excerpt&gt;
                     &lt;primlaw:bodytext&gt;
                        &lt;p&gt;
                           &lt;text&gt;Shall include each person who ...&lt;/text&gt;
                        &lt;/p&gt;
                     &lt;/primlaw:bodytext&gt;
                  &lt;/primlaw:excerpt&gt;
              &lt;/primlaw:bodytext&gt;
          &lt;/primlaw:level&gt;
          &lt;!-- etc. --&gt;
      &lt;/primlaw:level&gt;
      &lt;primlaw:level leveltype="endmatter"&gt;
          &lt;primlaw:bodytext&gt;
              &lt;sigblock&gt;
                  &lt;p&gt;
                      &lt;text&gt;On behalf of the Governing Council:&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/sigblock&gt;
          &lt;/primlaw:bodytext&gt;
          &lt;primlaw:level leveltype="annex"&gt;
              &lt;!-- etc --&gt;
          &lt;/primlaw:level&gt;
      &lt;/primlaw:level&gt;
    &lt;/primarysource&gt;
  &lt;/primlaw:bodytext&gt;
&lt;/primlaw:excerpt&gt;

                </pre>

        <section>
            <title>Changes</title>
            <p>2016-10-04: <ph id="change_20161004_jm3">Added rule for
                        <sourcexml>leg:empleg</sourcexml>. Maps to
                        <targetxml>primlawinfo:authority</targetxml>, as following sibling of
                        <targetxml>heading</targetxml>. New xpath.</ph></p>
            <p>2016-10-04: <ph id="change_20161004_jm2">Added rule for
                        <sourcexml>leg:laidline</sourcexml>. Maps to
                        <targetxml>primlawinfo:presenteddate</targetxml>. New xpath.</ph></p>
            <p>2016-10-04: <ph id="change_20161004_jm1">Added exceptional rule for leveltype value
                        <sourcexml>"schedule-grp"</sourcexml>. Maps to
                        <targetxml>"schedule"</targetxml>.</ph></p>
            <p>2016-07-07: <ph id="change_20160707_jm">Several new rules covering
                        <sourcexml>leg:effdate, leg:enactdate, publication, note, leg:sectionlist,
                        leg:status</sourcexml>. Plus exceptional rule when
                        <sourcexml>legfragment</sourcexml> is child of
                        <sourcexml>leg:bodytext</sourcexml>. New xpaths.</ph></p>
            <p>2016-06-14: <ph id="change_20160614_jm">New section. New target xpaths. Cover
                    legislative excerpts.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_legfragment.dita  -->
<!--	<xsl:message>UK12_Treatise_legfragment.xsl requires manual development!</xsl:message> -->

	<xsl:template match="legfragment[normalize-space(.)!='']">
		<primlaw:excerpt>
		    <primlaw:bodytext>		        
		        <xsl:for-each-group select="*" group-adjacent="if((name(.)='sigblock') or (name(.)='blockquote')) then 1 else 0">
		        <xsl:choose>
		            <xsl:when test="current-grouping-key()=1">
		                <xsl:apply-templates select="current-group()"/>
		            </xsl:when>
		            <xsl:otherwise>
		                <primarysource>
		                <xsl:apply-templates select="current-group()"/>
		                </primarysource>
		            </xsl:otherwise>
		        </xsl:choose>
		    </xsl:for-each-group>
		    </primlaw:bodytext>
		</primlaw:excerpt>
	</xsl:template>
    
    <!-- 2018-02-20 - MDS - Added paernt:legfragment to test for parent:blockquote -->
    <xsl:template match="legfragment[normalize-space(.)!=''][parent::bodytext or parent::blockquote/(parent::leg:bodytext|parent::legfragment) or parent::leg:bodytext][not(child::leg:info)]" priority="25">
        <primlaw:excerpt>
            <primlaw:bodytext>
                    <xsl:apply-templates select="@* | node()"/>
            </primlaw:bodytext>
        </primlaw:excerpt>
    </xsl:template>	
    
    <!-- 2017-10-19 - MDS: Added due to Webstar  -->
    <xsl:template match="legfragment[parent::fnbody]" priority="25">
        <primarysource>
            <primlaw:level leveltype="unclassified">
                <primlaw:bodytext>
                    <xsl:apply-templates select="node()"/>
                </primlaw:bodytext>
            </primlaw:level>
        </primarysource>
    </xsl:template>
    
    <xsl:template match="legfragment[normalize-space(.)='']|legfragment/@searchtype"/>
    
    <xsl:template match="leg:preamble">
        <primlaw:level>
            <xsl:attribute name="leveltype" select="'preamble'"/>
            <xsl:apply-templates select="@*|node()"/>
        </primlaw:level> 
    </xsl:template>
    
    <xsl:template match="leg:endmatter">
        <primlaw:level>
            <xsl:attribute name="leveltype" select="'endmatter'"/>
            <xsl:apply-templates select="@*|node()"/>
        </primlaw:level> 
    </xsl:template>
    
    
    <xsl:template match="leg:level|leg:levelbody|leg:level-not-in-force">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <xsl:template match="leg:level/leg:level-vrnt[@leveltype]|leg:level-not-in-force/leg:level-vrnt[@leveltype]">
        <primlaw:level>
            <xsl:apply-templates select="@*|node()"/>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="leg:level/leg:level-vrnt/@leveltype|leg:level-not-in-force/leg:level-vrnt/@leveltype">
        <xsl:attribute name="leveltype">
            <xsl:choose>
                <xsl:when test=".='schedule-grp'">schedule</xsl:when>
                <xsl:when test=".='legislative-history'">unclassified</xsl:when>
                <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="leg:sectionlist[child::toc]">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <xsl:template match="leg:heading">
        <heading>
            <xsl:apply-templates select="@*|node() except (leg:empleg | footnotegrp | refpt)"/>
        </heading>
        <xsl:apply-templates select="refpt | leg:empleg|footnotegrp"/>
    </xsl:template>
    
    <xsl:template match="footnotegrp[parent::leg:heading]" priority="35">
        <primlaw:bodytext>
            <p>
                <text>
                    <footnotegroup>
                        <xsl:apply-templates select="node()"/>
                    </footnotegroup>
                </text>
            </p>
        </primlaw:bodytext>
    </xsl:template>
    
    <xsl:template match="leg:empleg">
        <primlaw:authority>
            <primlaw:authority-item>
                <textitem>
                    <xsl:apply-templates select="@* | node()"/>
                </textitem>                
            </primlaw:authority-item>
        </primlaw:authority>
    </xsl:template>
    
    
    <xsl:template match="leg:info">
        <legis:legis>
            <legis:head>
                <primlawinfo:primlawinfo>                    
                    <legisinfo:legisinfo>
                        <xsl:apply-templates select=" leg:officialname | abbrvname "/>
                    </legisinfo:legisinfo>
                    <xsl:apply-templates select="leg:officialnum|leg:dates"/>
                </primlawinfo:primlawinfo>
                <xsl:apply-templates select="leg:juris"/>
            </legis:head>
            <xsl:if test="child::node() except (leg:officialname | abbrvname  | leg:officialnum | leg:dates | leg:juris)">
                <legis:body>
                    <primlaw:prelim>
                        <xsl:apply-templates select="node() except (leg:officialname | abbrvname  | leg:officialnum | leg:dates | leg:juris)"/>
                    </primlaw:prelim>
                </legis:body>
            </xsl:if>
        </legis:legis>
    </xsl:template>
    
    
    <xsl:template match="leg:officialname">
        <legisinfo:names>
            <legisinfo:officialtitle>
                <xsl:apply-templates select="@*|node()"/>
            </legisinfo:officialtitle>
            <xsl:apply-templates select="parent::leg:info/abbrvname" mode="name"/>
        </legisinfo:names>
    </xsl:template>
    
    <!--  suppressed-->
    <xsl:template match="leg:officialname/@leg-signal"/>
    
    <xsl:template match="abbrvname" mode="name">
        <abbrvname>
            <xsl:apply-templates select="@*|node()"/>
        </abbrvname>
    </xsl:template>
    
    <!-- suppresed in to the current mode  -->
    <xsl:template match="abbrvname"/>
    
    <xsl:template match="leg:officialnum">
        <primlawinfo:identifier>
            <xsl:attribute name="idtype" select="'officialnum'"/>
            <xsl:apply-templates select="@*|node()"/>
        </primlawinfo:identifier>
    </xsl:template>
    
    <xsl:template match="leg:officialnum/leg:year">
        <primlawinfo:identifier-component>
            <xsl:attribute name="type" select="'year'"/>
            <xsl:apply-templates select="@*|node()"/>
        </primlawinfo:identifier-component>
    </xsl:template>
    
    <xsl:template match="leg:officialnum/leg:seriesnum">
        <primlawinfo:identifier-component>
            <xsl:attribute name="type" select="'seriesnum'"/>
            <xsl:apply-templates select="@*|node()"/>
        </primlawinfo:identifier-component>
    </xsl:template>
    
    <xsl:template match="leg:dates">
        <primlawinfo:dates>
            <xsl:apply-templates select="@*|node()"/>
        </primlawinfo:dates>
    </xsl:template>
    
    <xsl:template match="leg:miscdate">
        <miscdate>
            <xsl:apply-templates select="date/@*"/>
            <xsl:attribute name="datetype" select="'unspecified'"/>
            <xsl:apply-templates select="@*|node()"/>
        </miscdate>
    </xsl:template>
    
    <xsl:template match="leg:effdate">
        <primlawinfo:effdate>
            <xsl:apply-templates select="@*|date/@*,node()"/>
        </primlawinfo:effdate>
    </xsl:template>
    
    <xsl:template match="leg:enactdate">
        <primlawinfo:enactdate>
            <xsl:apply-templates select="@*|date/@*,node()"/>
        </primlawinfo:enactdate>
    </xsl:template>
    
    
    <xsl:template match="leg:laidline">
        <primlawinfo:presenteddate>
            <xsl:apply-templates select="@*|date/@*,node()"/>
        </primlawinfo:presenteddate>
    </xsl:template>
    
    <xsl:template match="date/@*">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="leg:longtitle">
        <primlaw:synopsis>
            <bodytext>
                <xsl:apply-templates select="@*|node()"/>
            </bodytext>
        </primlaw:synopsis>
    </xsl:template>
    
    <xsl:template match="leg:history" priority="25">
        <primlawhist:primlawhist>
            <primlawhist:histgrp>
                <primlawhist:histitem>
                    <bodytext>
                        <xsl:apply-templates select="node()"/>
                    </bodytext>
                </primlawhist:histitem>
            </primlawhist:histgrp>
        </primlawhist:primlawhist>
    </xsl:template>
    
<!--<!-\-  supressed the leg:levelinfo  -\->
    <xsl:template match="leg:levelinfo">
        <xsl:apply-templates select="descendant::refpt"/>
        <primlaw:levelinfo>
            <primlawinfo:primlawinfo>
                <xsl:apply-templates select="node()"/>
            </primlawinfo:primlawinfo>
        </primlaw:levelinfo>
        <!-\-<xsl:choose>
            <xsl:when test="descendant::refpt">
                <xsl:apply-templates select="descendant::refpt"/>
            </xsl:when>
            <xsl:otherwise>                
            </xsl:otherwise>
        </xsl:choose>-\->
    </xsl:template>-->


    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>