<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_Rosetta_glp.note_ChildOf_leg.heading-to-LexisAdvance_admindoc.level_note">
    <title><sourcexml>level/leg:heading/glp:note</sourcexml> <lnpid>id-AU19CA-21608</lnpid></title>
    <body>
        <section>
            <p><sourcexml>/level/leg:heading/glp:note</sourcexml> becomes
                    <targetxml>admindoc:level/heading/note</targetxml>
            </p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>  
        &lt;level&gt;
         &lt;leg:heading&gt;
          &lt;glp:note&gt;
            &lt;table frame="none" pgwide="1"&gt;
              &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="col1" colsep="0" colwidth="45*" rowsep="0" /&gt;
                &lt;colspec colname="col2" colsep="0" colwidth="10*" rowsep="0" /&gt;
                &lt;colspec colname="col3" colsep="0" colwidth="45*" rowsep="0" /&gt;
                &lt;tbody valign="top"&gt;
                  &lt;row rowsep="0"&gt;
                    &lt;entry align="left" colname="col1" colsep="0" rowsep="0" valign="top"&gt;&lt;/entry&gt;
                    &lt;entry align="center" colname="col2" colsep="0" rowsep="0" valign="top"&gt;
                      &lt;remotelink href="www.asx.com.au" hrefclass="http" newwindow="YES"&gt;
                        &lt;inlineobject attachment="ln-server" filename="asx_logo.gif" type="image" /&gt;
                      &lt;/remotelink&gt;
                    &lt;/entry&gt;
                    &lt;entry align="right" colname="col3" colsep="0" rowsep="0" valign="top"&gt;&lt;/entry&gt;
                  &lt;/row&gt;
                &lt;/tbody&gt;
              &lt;/tgroup&gt;
            &lt;/table&gt;
          &lt;/glp:note&gt;
          &lt;title&gt;
            &lt;refpt id="ASXDMR.PROC.PROC2" type="ext"&gt;&lt;/refpt&gt;SECTION 2 ENFORCEMENT ACTION&lt;/title&gt;
        &lt;/leg:heading&gt;
     &lt;/level&gt;


            </codeblock>
            <title>Target XML</title>
            <codeblock>

      &lt;admindoc:level xml:id="ASXSOR_RUNEW.SGM_GROUP_41" leveltype="subchapter"&gt;
       &lt;heading&gt;
                &lt;note&gt;
                    &lt;bodytext&gt;
                        &lt;table frame="none" pgwide="1"&gt;
                            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                                &lt;colspec colname="col1" colsep="0" colwidth="45*" rowsep="0"/&gt;
                                &lt;colspec colname="col2" colsep="0" colwidth="10*" rowsep="0"/&gt;
                                &lt;colspec colname="col3" colsep="0" colwidth="45*" rowsep="0"/&gt;
                                &lt;tbody valign="top"&gt;
                                    &lt;row rowsep="0"&gt;
                                        &lt;entry align="left" colname="col1" colsep="0" rowsep="0" valign="top"/&gt;
                                        &lt;entry align="center" colname="col2" colsep="0" rowsep="0" valign="top"&gt;
                                            &lt;ref:lnlink service="URL"&gt;
                                                &lt;ref:marker&gt;
                                                  &lt;ref:inlineobject&gt;
                                                  &lt;ref:locator&gt;
                                                  &lt;ref:locator-key&gt;
                                                  &lt;ref:key-name name="attachment-key"/&gt;
                                                  &lt;ref:key-value value="58VJ-JMK1-6K2X-S3CT-00000-00-12611-asx-logo"/&gt;
                                                  &lt;/ref:locator-key&gt;
                                                  &lt;ref:locator-params&gt;
                                                  &lt;proc:param name="componentseq" value="1"/&gt;
                                                  &lt;proc:param name="object-type" value="image"/&gt;
                                                  &lt;proc:param name="object-smi" value="12611"/&gt;
                                                  &lt;/ref:locator-params&gt;
                                                  &lt;/ref:locator&gt;
                                                  &lt;/ref:inlineobject&gt;
                                                &lt;/ref:marker&gt;
                                                &lt;ref:locator&gt;
                                                  &lt;ref:locator-key&gt;
                                                  &lt;ref:key-name name="URL"/&gt;
                                                  &lt;ref:key-value value="http://www.asx.com.au"/&gt;
                                                  &lt;/ref:locator-key&gt;
                                                &lt;/ref:locator&gt;
                                            &lt;/ref:lnlink&gt;
                                        &lt;/entry&gt;
                                        &lt;entry align="right" colname="col3" colsep="0" rowsep="0" valign="top"/&gt;
                                    &lt;/row&gt;
                                &lt;/tbody&gt;
                            &lt;/tgroup&gt;
                        &lt;/table&gt;
                    &lt;/bodytext&gt;
                &lt;/note&gt;
                &lt;title&gt;SECTION 2 ENFORCEMENT ACTION&lt;/title&gt;
            &lt;/heading&gt;
        &lt;/admindoc:level&gt;

        </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-17: <ph id="change_20130417_WL">Created</ph>.</p>
            <p>2013-08-02: <ph id="change_20130802_WL">Instruction was updated to allow <targetxml>note</targetxml> within the <targetxml>heading</targetxml> before the <targetxml>title</targetxml>  to retain content order. The change was created as a results of 
                a UX review where the logo was misplaced.</ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CA_ASX\AU19_CA_ASX_glp.note-Chof-leg.heading-LxAdv-admindoc.level_note.dita  -->
	<xsl:message>AU19_CA_ASX_glp.note-Chof-leg.heading-LxAdv-admindoc.level_note.xsl requires manual development!</xsl:message> 

	<xsl:template match="level/leg:heading/glp:note">

		<!--  Original Target XPath:  admindoc:level/heading/note   -->
		<admindoc:level>
			<heading>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/leg:heading/glp:note">

		<!--  Original Target XPath:  admindoc:level/heading/note   -->
		<admindoc:level>
			<heading>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</heading>
		</admindoc:level>

	</xsl:template>

</xsl:stylesheet>