<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  version="2.0" exclude-result-prefixes="dita leg">
    
<dita:topic
    id="Rosetta_refpt_isChildOf_leg.level_leg.level-vrnt_leg.heading_edpnum-to-LexisAdvance_primlaw.level_ref.anchor"
    xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
    <title><sourcexml>refpt</sourcexml> child of
        <sourcexml>leg:level/leg:level-vrnt/leg:heading/edpnum</sourcexml> to <targetxml>primlaw:level/ref:anchor</targetxml> <lnpid>id-CCCC-10447</lnpid></title>
    <body>
        <section>
            <p>If <sourcexml>refpt</sourcexml> occurs under
                <sourcexml>leg:level/leg:level-vrnt/leg:heading/edpnum</sourcexml> then
                <targetxml>ref:anchor</targetxml> will become the first child of
                <targetxml>primlaw:level</targetxml>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>
                <![CDATA[
  <leg:level id="MTN.CRIM.LEPPAN03.S.18">
        <leg:level-vrnt searchtype="LEGISLATION SECT" subdoc="false" leveltype="sect" toc-caption="[191,095] s 18 False or misleading information about idenity (cf Police Powers (Vehicles) Act 1998, s 9)">
            <leg:levelinfo>
                <leg:levelstatus isrepealed="false" ln.user.displayed="false"/>
            </leg:levelinfo>
            <leg:heading inline="true">
                 <edpnum>
                    <refpt id="MTN.CRIM.LEPPANO3.S18" type="ext"/> [101,805]
                 </edpnum>
                 <title searchtype="SECT-TITLE">False or misleading information about idenity (cf Police Powers (Vehicles) Act 1998, s 9)</title>
                 <desig searchtype="SECT-NUM">
                  <designum>18</designum>
                 </desig>
               <!-- ETC -->  
            </leg:heading>
        </leg:level-vrnt>
    </leg:level>
]]>
            </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
                <![CDATA[   
          <primlaw:level leveltype="section" alternatetoccaption="[191,095] s 18 False or misleading information about idenity (cf Police Powers (Vehicles) Act 1998, s 9)" includeintoc="false">
             <ref:anchor id="MTN.CRIM.LEPPANO3.S18" anchortype="global"/>   
              <heading>
                <altdesig>[101,805]</altdesig>
                <title>[191,095] s 18 False or misleading information about idenity (cf Police Powers (Vehicles) Act 1998, s 9)</title>
                <desig>18</desig>
            </heading>
        </primlaw:level>
  ]]>
            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2012-10-09: Created.</p>
            <p>2013-07-10:<ph id="change_20130710_WL">populated the sample content with a sample from AU04 </ph>.</p>
        </section>
        
    </body>
</dita:topic>
    <xsl:message>Screwy needs DITA copied in.</xsl:message>
    
    <!-- ****************************************************************************************** 
        MOVING refpt as a descendant of leg:heading to child of primlaw:level already takes place in
        modules/leg/HK01_Acts_leg.level.xsl and modules/leg/leg.level-LxAdv-primlaw.level.xsl, and should
        remain in similar modules.  Since anchors are never valid in desig/altdesig, this suppress-in-place 
        logic is now incorporated  into the generic /modules/nonamespace/Rosetta_edpnum-LxAdv-desig.xsl 
        module.  I'm leaving this module invalid to draw attention to this note, but recommend commenting
        it out rather than using it in your drivers as the functionality is elsewhere (assuming you have
        the correct other modules, or update new ones).  JL
        **************************************************************************************************.--> 
    -->
</xsl:stylesheet>

