<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita glp">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="glp-note-level-appendix">
        <title><sourcexml>glp:note</sourcexml> to
                <targetxml>note/@notetype="jurisdiction-variant"</targetxml>
            <lnpid>id-AU18-21409</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <p>For the source XPath
                                <sourcexml>glp:note/heading/desig/designum/refpt</sourcexml> the
                            element <sourcexml>glp:note</sourcexml> becomesm
                                <targetxml>note/@notetype="jurisdiction-variant"</targetxml></p>
                        <p>
                            <b>
                                <i>Example: Source XML</i>
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
                            <b>
                                <i>Example: Target XML </i>
                            </b>
                            <pre> 
                       
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
            <section>
                <title>Changes</title>
                <p>2013-07-31 <ph id="change_20130731_WL_1">Created </ph></p>
                <p>2013-07-31 <ph id="change_20130731_WL_2">Updated instruction and source xpath for
                        the conversion of <sourcexml>glp:note</sourcexml> to
                            <targetxml>note/@notetype="jurisdiction-variant"</targetxml>
                    </ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_glp.note-LxAdv-note.dita  -->
    <!--<xsl:message>AU_BRA_glp.note-LxAdv-note.xsl requires manual development!</xsl:message>-->

    <!--<xsl:template match="glp:note">

        <!-\-  Original Target XPath:  note/@notetype="jurisdiction-variant"   -\->
        <note>
            <xsl:attribute name="notetype">
                <xsl:text>jurisdiction-variant</xsl:text>
            </xsl:attribute>
        </note>

    </xsl:template>

    <xsl:template match="glp:note/heading/desig/designum/refpt">

        <!-\-  Original Target XPath:  note/@notetype="jurisdiction-variant"   -\->
        <note>
            <xsl:attribute name="notetype">
                <xsl:text>jurisdiction-variant</xsl:text>
            </xsl:attribute>
        </note>

    </xsl:template>-->

</xsl:stylesheet>
