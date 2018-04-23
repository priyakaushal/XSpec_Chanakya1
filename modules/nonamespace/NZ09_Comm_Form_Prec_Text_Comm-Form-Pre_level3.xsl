<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level3">
    <title>Exception Scenario for <sourcexml>level</sourcexml> <lnpid>id-NZ09-24222</lnpid></title>
    <body>
        <section>
            <p>If <sourcexml>level[@leveltype="comm.chap"]</sourcexml> contains child elements: <ul>
                    <li><sourcexml>level[@leveltype]</sourcexml> comes with following
                            <sourcexml>@leveltype</sourcexml> values: <ul>
                            <li><sourcexml>level[@leveltype="appendix"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="chapter"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="group"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="para0"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="guidecard"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="prac.note.grp"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="comm.att"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="miscins"]</sourcexml></li>
                        </ul>
                    </li>
                </ul>
                <b>and</b>
                <ul>
                    <li><sourcexml>level[@leveltype]</sourcexml> comes with following
                            <sourcexml>@leveltype</sourcexml> values: <ul>
                            <li><sourcexml>level[@leveltype="prec.grp"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="precgrp"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="precgrp1"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="precgrp2"]</sourcexml></li>
                            <li><sourcexml>level[@leveltype="prec"]</sourcexml></li>
                        </ul>
                    </li>
                </ul>. The above scenarios will be handled as listed below: <ul>
                    <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="chapter"]</targetxml> and treat
                        child <sourcexml>level</sourcexml> for conversion as shown below: <ul>
                            <li><sourcexml>level[@leveltype="appendix"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="guidecard"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="prac.note.grp"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.att"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="miscins"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="instrument"]</targetxml></li>
                        </ul>
                        <ul>
                            <li><sourcexml>level[@leveltype="prec.grp"]</sourcexml> becomes
                                    <targetxml>form:form</targetxml></li>
                            <li><sourcexml>level[@leveltype="precgrp"]</sourcexml> becomes
                                    <targetxml>form:form</targetxml></li>
                            <li><sourcexml>level[@leveltype="precgrp1"]</sourcexml> becomes
                                    <targetxml>form:form</targetxml></li>
                            <li><sourcexml>level[@leveltype="precgrp2"]</sourcexml> becomes
                                    <targetxml>form:form</targetxml></li>
                            <li><sourcexml>level[@leveltype="prec"]</sourcexml> becomes
                                    <targetxml>form:form</targetxml></li>
                        </ul>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <p><b>Exception for <sourcexml>"misc.lst.table"</sourcexml></b>: If
                    <sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> is child of
                    <sourcexml>level[@leveltype="prec.grp"]</sourcexml>, then
                    <sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes
                    <targetxml>form:form</targetxml>.</p>
        </section>
        <section>
            <p><b>Special rule for child when parent and child are both
                        <sourcexml>"chapter"</sourcexml> or both <sourcexml>"group"</sourcexml></b>:<ul>
                    <li>If <sourcexml>level[@leveltype="chapter"]</sourcexml> contains child
                            <sourcexml>level[@leveltype="chapter"]</sourcexml>, then child becomes
                            <targetxml>seclaw:level[@leveltype="subchapter"]</targetxml>.</li>
                    <li>If <sourcexml>level[@leveltype="group"]</sourcexml> contains child
                            <sourcexml>level[@leveltype="group"]</sourcexml>, then child becomes
                            <targetxml>seclaw:level[@leveltype="subdivision"]</targetxml>.</li>
                </ul></p>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-01-16: <ph id="change_20140116_jm">Added special rule for child when parent and
                    child <sourcexml>@leveltype</sourcexml> are both
                        <sourcexml>"chapter"</sourcexml> or both <sourcexml>"group"</sourcexml>.
                    Parent mapping unchanged. Child target <targetxml>@leveltype</targetxml> now set
                    to <targetxml>"subchapter"</targetxml> or <targetxml>"subdivision"</targetxml>.
                    R4.5 Content Issue 664.</ph></p>
            <p>2014-01-15: <ph id="change_20140115_jm">Modified special rule for
                        <sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> when child of
                        <sourcexml>level[@leveltype="prec.grp"]</sourcexml>. Former target was
                        <targetxml>form:form/note</targetxml>. New target is
                        <targetxml>form:form</targetxml>. No longer mapped to
                        <targetxml>note</targetxml>. Contents convert same as for other
                        <targetxml>form:form</targetxml>, i.e.
                        <targetxml>form:form/form:document/[etc]</targetxml>. Supports presentation
                    requirements. R4.5 Content Issue 998.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_level3.dita  -->
	<!-- JL handled in other modules -->

</xsl:stylesheet>