<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
    exclude-result-prefixes="dita leg">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
    <title>leg:level-not-in-force <lnpid>id-CA08-14219</lnpid></title>
   <body>
      <section>
          <ul>
              <li class="- topic/li ">
                  The conversion of <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following scenarios:
                  <ul>
                      <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the
                            French i.e. <b>Note de l'éditeur:</b>, <b>Note d’éditeur:</b> and
                                <b>Note d'ed. QL:</b> OR start with English i.e. <b>Editor’s
                                note:</b>, <b>Ed. note:</b> and <b>QL Ed. Note:</b> then convert it
                            to <targetxml>note[@notetype="instruction"]</targetxml>. <note>If text
                                of French and English note starts with square bracket (i.e.<b>[Note
                                    de l'éditeur: </b> or <b>[Editor’s note:</b>) then also convert
                                it to <targetxml>note[@notetype="instruction"]</targetxml>. </note>
                            <note>If "French or Enlish note" text (i.e. <b>QL Ed. Note</b>, <b>Note
                                    d'ed. QL</b> and <b>Note d'éditeur</b>) comes inside the
                                    "<sourcexml>leg:bodytext/p/text</sourcexml>" in source documents
                                then target mapping should be convert it to
                                    <targetxml>note[@notetype="instruction"]</targetxml>.</note>
                            <note>If "French or Enlish note" text (i.e. <b>QL Ed. Note</b>, <b>Note
                                    d'ed. QL</b> and <b>Note d'éditeur</b>) comes inside the
                                    "<sourcexml>leg:bodytext/l/li/p/text</sourcexml>" in source
                                documents then target mapping should be convert it to
                                    <targetxml>note[@notetype="instruction"]</targetxml>.</note>
                            <note><sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                becomes <targetxml>note</targetxml>.</note>
                        </li>
                      
                  </ul>
              </li>
          </ul>
      </section>

           <example>
             <title>Source XML 1 : For <sourcexml>Editor's note</sourcexml></title>
             <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title inline="true"&gt;ARTICLE&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum searchtype="SECT-NUM"&gt;50.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="3"&gt;
                    &lt;leg:marginal-note&gt;Modification&lt;/leg:marginal-note&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            ...
            &lt;leg:level-not-in-force&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;l virtual-nesting="2"&gt;
                                &lt;li&gt;
                                    &lt;lilabel/&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;[Note de l'éditeur: Pour le texte de cette
                                            modification vour l'article 92A de la Loi
                                            constitutionnelle de 1867.]&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/li&gt;
                            &lt;/l&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level-not-in-force&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

             </codeblock>
               
           </example>
           
           <example>
             <title>Target XML 1 </title>
             <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading align="center"&gt;&lt;title inline="true"&gt;ARTICLE&lt;/title&gt;&lt;desig&gt;50.&lt;/desig&gt;&lt;/heading&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;marginnote&gt;&lt;ref:anchor id="CA-01"/&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;&lt;text&gt;Modification&lt;/text&gt;&lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/marginnote&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt; 
        ... 
        &lt;note notetype="instruction"&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;[Note de l'éditeur: Pour le texte de cette modification vour l'article 92A
                        de la Loi constitutionnelle de 1867.]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

             </codeblock>
               <note>Drop the listitem markup in target mapping for handling the <b>Editior's note</b> in
                above scenario.</note>
           </example>
      
       <example>
           <title>Source XML 2 : If 'French or English note' text comes without
                ''leg:level-not-in-force" markup in source document.</title>
           <codeblock>

&lt;leg:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;[Note d'éditeur:  La lettre d'accompagnement et les remerciements, qui 
        ont précédé le texte, sont disponible au fin du document.]&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:bodytext&gt;
            

                 </codeblock>
       </example>
       
       <example>
           <title>Target XML 2</title>
           <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;note notetype="instruction"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;[Note d'éditeur:  La lettre d'accompagnement et les remerciements, qui 
            ont précédé le texte, sont disponible au fin du document.]&lt;/text&gt;
        &lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/note&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
       </example>
       <ul>
           <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the
               normal text  "<b>NOTE:</b>" OR "<b>Note:</b>" but it is an official note
               that is added by the government then convert it to
               <targetxml>legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>
               and <targetxml>[@notesource="official",
                   @@notetype="other"]</targetxml>.</li>
           <li> Complete target Xpath is:
               <targetxml>primlaw:level[@leveltype="amendment"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>.
               <note>Conversion needs to place
                   <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> in
                   order to distinguish it from other
                   <targetxml>primlaw:level</targetxml>.</note>
           </li>
       </ul>
       <example>
       <title>Source XML 3 : For normal text.</title>
       <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title inline="true"&gt;SECTION&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum searchtype="SECT-NUM"&gt;IV.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="3"&gt;
                    &lt;leg:marginal-note&gt;No person under 21 Years of Age, &amp;amp;c. to be summoned&lt;/leg:marginal-note&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;IV. Provided always, and be it enacted by the Authority aforesaid, That no
                        Person shall be summoned to the said Legislative Council, in either of the
                        said Provinces, who shall not be of the full Age of twenty-one Years, and a
                        natural-born Subject of his Majesty, or a Subject of his Majesty naturalized
                        by Act of the British Parliament, or a Subject of his Majesty, having become
                        such by the Conquest and Cession of the Province of Canada.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
            &lt;leg:level-not-in-force&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;[NOTE: Paragraph IV repealed by The Union Act, 1840, 3-4 Vict., c. 35 (U.K.).]&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level-not-in-force&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
     </example>
     
     <example>
         <title>Target XML 3</title>
       <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading&gt;&lt;title inline="true"&gt;SECTION&lt;/title&gt;&lt;desig&gt;IV.&lt;/desig&gt;&lt;/heading&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;marginnote&gt;&lt;ref:anchor id="CA-01"/&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;&lt;text&gt;No person under 21 Years of Age, &amp;amp;c. to be summoned&lt;/text&gt;&lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/marginnote&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;IV. Provided always, and be it enacted by the Authority aforesaid, That no
                    Person shall be summoned to the said Legislative Council, in either of the
                    said Provinces, who shall not be of the full Age of twenty-one Years, and a
                    natural-born Subject of his Majesty, or a Subject of his Majesty naturalized
                    by Act of the British Parliament, or a Subject of his Majesty, having become
                    such by the Conquest and Cession of the Province of Canada.&lt;/text&gt;
            &lt;/p&gt;   
        &lt;/primlaw:bodytext&gt;
        &lt;primlaw:level leveltype="amendment"&gt;
             &lt;primlaw:levelinfo&gt;
                &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt;
                        &lt;legisinfo:statusgroup&gt;
                            &lt;legisinfo:status statuscode="effectivenessinfo"/&gt;
                        &lt;/legisinfo:statusgroup&gt;
                    &lt;/legisinfo:legisinfo&gt;
                &lt;/primlawinfo:primlawinfo&gt;
            &lt;/primlaw:levelinfo&gt;
            &lt;primlaw:bodytext&gt;
              &lt;note notesource="official" notetype="other"&gt;
                &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;[NOTE: Paragraph IV repealed by The Union Act, 1840, 3-4 Vict., c. 35 (U.K.).]&lt;/text&gt;
                &lt;/p&gt;
              &lt;/note&gt; 
           &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;


             </codeblock>
     </example>
       
       <note>Please refer the common instruction for handling <b>[@virtual-nesting]</b> attribute
       mapping.</note>
       <section>
           <title>Changes</title>
           
           <p>2014-08-25: <ph id="change_20140825_ss">Added a note for handling of <b>Editior
                        Notes</b> or <b>French Notes</b> which is comes under the
                        <sourcexml>leg:bodytext/l/li/p/text</sourcexml> markup and its mapped with
                        <targetxml>note[@notetype="instruction"]</targetxml>.</ph></p>
           <p>2014-08-12: <ph id="change_20140812_ss">Instruction and example updated for handling
               of <b>Editior Notes</b> and <b>Official Notes</b> which is comes under the
               <sourcexml>leg:level-not-in-force</sourcexml> markup and its mapped with
               <targetxml>note[@notetype="instruction"]</targetxml> and
               <targetxml>note[@notesource="official"]</targetxml>.</ph></p>
           <p>2013-07-30: <ph id="change_20130730_ss">Instruction and example updated for adding <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> as wrapper element for <sourcexml>leg:level-not-in-force</sourcexml> handling.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\leg.level-not-in-force.dita  -->
<!--	<xsl:message>CA08-Constitutions_leg.level-not-in-force.xsl requires manual development!</xsl:message> -->
<!--
	

		<!-\-  Original Target XPath:  note[@notetype="instruction"]   -\->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>-->
    <xsl:template match="leg:level-not-in-force">
        
        <xsl:choose>
            <xsl:when
                test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]">
                <primlaw:bodytext>
                    <note notetype="instruction">
                        <bodytext>
                            <p>
                                
                                    <xsl:apply-templates
                                        select="descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]"
                                    />
                                
                            </p>
                        </bodytext>
                    </note>
                    <xsl:if
                        test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][following-sibling::text]">
                        <p>
                            <xsl:apply-templates
                                select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                            />
                        </p>
                    </xsl:if>
                </primlaw:bodytext>
            </xsl:when>
            <xsl:when
                test="child::leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Note:') or starts-with(., 'NOTE:')]">
                <primlaw:level leveltype="amendment">
                    <primlaw:levelinfo>
                        <primlawinfo:primlawinfo>
                            <legisinfo:legisinfo>
                                <legisinfo:statusgroup>
                                    <legisinfo:status statuscode="effectivenessinfo"
                                        > </legisinfo:status>
                                </legisinfo:statusgroup>
                            </legisinfo:legisinfo>
                        </primlawinfo:primlawinfo>
                    </primlaw:levelinfo>
                    
                    <primlaw:bodytext>
                        <note notesource="official" notetype="other">
                            <bodytext>
                                <p>

                                        <xsl:apply-templates
                                            select="descendant::text[starts-with(., 'NOTE:') or starts-with(., 'Note:')]"
                                        />
                                    
                                </p>
                            </bodytext>
                        </note>
                        <xsl:if
                            test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][following-sibling::text]">
                            <p>
                                <xsl:apply-templates
                                    select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                                />
                            </p>
                        </xsl:if>
                    </primlaw:bodytext>
                </primlaw:level>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:level leveltype="amendment">
                    <primlaw:levelinfo>
                        <primlawinfo:primlawinfo>
                            <legisinfo:legisinfo>
                                <legisinfo:statusgroup>
                                    <legisinfo:status statuscode="effectivenessinfo"
                                        > </legisinfo:status>
                                </legisinfo:statusgroup>
                            </legisinfo:legisinfo>
                        </primlawinfo:primlawinfo>
                    </primlaw:levelinfo>
                    <xsl:apply-templates select="descendant::leg:bodytext"/>
                </primlaw:level>   
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
  
</xsl:stylesheet>