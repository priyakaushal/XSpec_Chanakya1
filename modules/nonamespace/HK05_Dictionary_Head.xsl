<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"    
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita source_dict">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Head">
        <title>Head <lnpid>id-HK05-37411</lnpid></title>
        <body>
            <p><sourcexml>dict:body/heading</sourcexml> becomes
                    <targetxml>dict:head/heading</targetxml></p>
            <note>If <sourcexml>dict:body/heading/desig/designum</sourcexml> have
                    <sourcexml>refpt</sourcexml> as child then move target mapping of
                    <sourcexml>refpt</sourcexml> to
                    <targetxml>dict:body/dict:defitem/tei:entry/tei:form/tei:orth/ref:anchor</targetxml></note>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;dict:body&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;
                    &lt;refpt id="S00905" type="ext"&gt; [S00905] &lt;/refpt&gt; &lt;/designum&gt;
                    &lt;/desig&gt; &lt;/heading&gt; &lt;dict:term-entry&gt; &lt;defterm&gt; &lt;emph
                    typestyle="bf"&gt;Step in the proceedings&lt;/emph&gt; &lt;/defterm&gt;
                    &lt;/dict:term-entry&gt; &lt;/dict:body&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;dict:head&gt; &lt;heading&gt; &lt;desig&gt;
                    &amp;#x005B;S00905&amp;#x005D; &lt;/desig&gt; &lt;/heading&gt;
                    &lt;/dict:head&gt; &lt;dict:body&gt; &lt;dict:defitem&gt; &lt;tei:entry&gt;
                    &lt;tei:form&gt; &lt;tei:orth norm="Step in the proceedings"&gt; &lt;ref:anchor
                    id="S00905" anchortype="global"&gt; &lt;ref:anchortext&gt;Step in the
                    proceedings&lt;/ref:anchortext&gt; &lt;/ref:anchor&gt; &lt;/tei:orth&gt;
                    &lt;/tei:form&gt; &lt;/tei:entry&gt; &lt;/dict:defitem&gt; &lt;/dict:body&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2016-04-18: <ph id="change_20160418_HP">Created</ph>.</p>
            </section>
        </body>
    </dita:topic>
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK05_Dictionary\Head.dita  -->
   

    <xsl:template match="source_dict:body/heading">
        <dict:head>
            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="@* | node() except refpt"/>
            </heading>
        </dict:head>
    </xsl:template>
    
    <!--  JL  moved the designum/refpt functionality to module 
        /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_designum-Chof-desig-LxAdv-desig.xsl>-->

</xsl:stylesheet>
