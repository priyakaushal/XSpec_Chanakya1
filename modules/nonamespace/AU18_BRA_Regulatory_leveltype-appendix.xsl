<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita glp leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="note-level-appendix">
        <title>
            <sourcexml>leg:level/leg:level-vrnt/@leveltype="appendix"</sourcexml>
            <lnpid>id-AU18-21415</lnpid>
        </title>
        <body>
            <section>
                <ul>
                    <li>
                        <p>When
                                <sourcexml>leg:level/leg:level-vrnt/@leveltype="appendix"</sourcexml>
                            create
                                <targetxml>admindoc:level/@leveltype="jurisdiction-variant"</targetxml></p>
                        <b>
                            <i>Example: Source XML 1</i>
                        </b>
                        <pre>
    
    &lt;leg:level id="BRA.BC1.BCA96.PTA2.ACTAPP1"&gt;&lt;leg:level-vrnt leveltype="appendix" searchtype="LEGISLATION APPENDIX" subdoc="true" toc-caption="ACT Appendix"&gt;
        &lt;leg:heading&gt;&lt;desig&gt;&lt;designum&gt;&lt;refpt id="BRA.BC1.BCA96.PTA2.ACTAPP1" type="ext"/&gt;ACT Appendix&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="BRA_BC1_SSATOC.SGM_BC.CLAUSE.GRP_5"&gt;&lt;leg:level-vrnt leveltype="clausegrp" searchtype="LEGISLATION CLAUSEGRP" subdoc="true" toc-caption="Objective"&gt;
                &lt;leg:heading&gt;&lt;title&gt;Objective&lt;/title&gt;&lt;/leg:heading&gt;
                &lt;leg:levelbody&gt;
                          &lt;leg:level id="BRA.BC1.BCA96.CLACTA02"&gt;
                          &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="[ACT A02]"&gt;
                              &lt;leg:heading&gt;
                              &lt;desig searchtype="CLAUSE-NUM"&gt;
                              &lt;designum&gt;&lt;refpt id="BRA.BC1.BCA96.CLACTA02" type="ext"/&gt;[ACT A02]&lt;/designum&gt;&lt;/desig&gt;
                              &lt;/leg:heading&gt;
                              &lt;leg:levelbody&gt;
                              &lt;!-- ETC--&gt;
                              &lt;/leg:levelbody&gt;
                          &lt;/leg:level-vrnt&gt;
                          &lt;/leg:level&gt;
                      &lt;/leg:levelbody&gt;
                  &lt;/leg:level&gt;
               &lt;/leg:levelbody&gt;
             &lt;/leg:level-vrnt&gt;
          &lt;/leg:level&gt;
          
    
    
    </pre>
                        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
           
       &lt;admindoc:body&gt;
        &lt;admindoc:level xml:id="BRA.BC1.BCA96.PTA2.ACTAPP1" leveltype="jurisdiction-variant" alternatetoccaption="ACT Appendix" includeintoc="true"&gt;
            &lt;heading&gt;
                &lt;desig&gt;ACT Appendix&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;admindoc:bodytext&gt;
                    &lt;admindoc:level leveltype="clause" includeintoc="true" alternatetoccaption="Objective"&gt;
                        &lt;heading&gt;&lt;title&gt;Objective&lt;/title&gt;&lt;/heading&gt;
                   &lt;/admindoc:level&gt;
                &lt;/admindoc:bodytext&gt;
            &lt;/admindoc:level&gt;
       &lt;/admindoc:body&gt;
    
</pre>
                    </li>
                </ul>
                <b>
                    <sourcexml>glp:note</sourcexml>
                </b>
                <ul>
                    <li>
                        <p>When <sourcexml>glp:note/heading/desig/designum</sourcexml> has the
                            content value <b>NSW Appendix</b> create
                                <targetxml>note/@notetype="jurisdiction-variant"</targetxml>
                        </p>
                        <p>
                            <b>
                                <i>Example: Source XML 1</i>
                            </b>
                            <pre>

            &lt;glp:note id="BRA.BC1.BCA96.CLA1-1.NSWAPP1"&gt;
              &lt;heading&gt;
                &lt;desig&gt;
                  &lt;designum&gt;
                    &lt;refpt id="BRA.BC1.BCA96.CLA1-1.NSWAPP1" type="ext" /&gt;NSW Appendix&lt;/designum&gt;
                &lt;/desig&gt;
              &lt;/heading&gt;
              &lt;deflist&gt;
                &lt;defitem id="BRA.BC1.BCA96.CLNSWA1-1.AIR-CONDITIONING"&gt;
                  &lt;defterm&gt;
                    &lt;refpt id="BRA.BC1.BCA96.CLNSWA1-1.AIR-CONDITIONING" type="ext" /&gt;
                    &lt;emph typestyle="bf"&gt;Air-conditioning&lt;/emph&gt;
                  &lt;/defterm&gt;
                  &lt;leg:histnote&gt;
                    &lt;p&gt;
                      &lt;text&gt;[def  rep BCA 2010]&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/leg:histnote&gt;
                &lt;/defitem&gt;
              &lt;/deflist&gt;
              &lt;deflist&gt;
                &lt;defitem id="BRA.BC1.BCA96.CLNSWA1-1.AISLE"&gt;
                  &lt;defterm&gt;
                    &lt;refpt id="BRA.BC1.BCA96.CLNSWA1-1.AISLE" type="ext" /&gt;
                    &lt;emph typestyle="bf"&gt;Aisle&lt;/emph&gt;
                  &lt;/defterm&gt;
                  &lt;defdesc&gt;
                    &lt;p&gt;
                      &lt;text&gt;means a walkway at the end of &lt;emph typestyle="it"&gt;rows&lt;/emph&gt; of seating, not being &lt;emph typestyle="it"&gt;continental seating&lt;/emph&gt;, 
                      leading to a cross-over or to an egress doorway.&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/defdesc&gt;
                &lt;/defitem&gt;
              &lt;/deflist&gt;
            &lt;/glp:note&gt;
 
	</pre>
                            <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

          &lt;note notetype="jurisdiction-variant"&gt;
                &lt;ref:anchor id="BRA.BC1.BCA96.CLA1-1.NSWAPP1" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;desig&gt;NSW Appendix&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;bodytext&gt;
                    &lt;deflist&gt;
                        &lt;defitem&gt;
                            &lt;defterm&gt;
                                &lt;ref:anchor id="BRA.BC1.BCA96.CLNSWA1-1.AIR-CONDITIONING"
                                    anchortype="global"/&gt;
                                &lt;emph typestyle="bf"&gt;Air-conditioning&lt;/emph&gt;
                            &lt;/defterm&gt;
                            &lt;note notetype="historical"&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;[def rep BCA 2010]&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/note&gt;
                        &lt;/defitem&gt;
                    &lt;/deflist&gt;
                    &lt;deflist&gt;
                        &lt;defitem&gt;
                            &lt;defterm&gt;
                                &lt;ref:anchor id="BRA.BC1.BCA96.CLNSWA1-1.AISLE" anchortype="global"/&gt;
                                &lt;emph typestyle="bf"&gt;Aisle&lt;/emph&gt;
                            &lt;/defterm&gt;
                            &lt;defdesc&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;means a walkway at the end of &lt;emph typestyle="it"&gt;rows&lt;/emph&gt; 
                                        of seating, not being &lt;emph typestyle="it"&gt;continental seating&lt;/emph&gt;, 
                                        leading to a cross-over or to an egress doorway.&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/defdesc&gt;
                        &lt;/defitem&gt;
                    &lt;/deflist&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;


                        </pre>
                        </p>
                    </li>
                </ul>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_leveltype-appendix.dita  -->
    <!--<xsl:message>AU18_BRA_Regulatory_leveltype-appendix.xsl requires manual development!</xsl:message>-->

    <!--<xsl:template match="glp:note">

        <!-\-  Original Target XPath:  note/@notetype="jurisdiction-variant"   -\->
        <note>
            <xsl:attribute name="notetype">
                <xsl:text>jurisdiction-variant</xsl:text>
            </xsl:attribute>
        </note>

    </xsl:template>

    <xsl:template match="glp:note/heading/desig/designum">

        <!-\-  Original Target XPath:  note/@notetype="jurisdiction-variant"   -\->
        <note>
            <xsl:attribute name="notetype">
                <xsl:text>jurisdiction-variant</xsl:text>
            </xsl:attribute>
        </note>

    </xsl:template>-->

</xsl:stylesheet>
