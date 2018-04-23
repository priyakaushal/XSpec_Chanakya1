<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  
  exclude-result-prefixes="xs dita docinfo">
  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Rosetta_docinfo-assoc-links-grp-text-person-bio-figure-to-LexisAdvance_doc-related-content-figure">
    <title>docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject-to-doc:related-content/related-content-grp/related-content-item/related-content-desc/person/bio/bio.text/bodytext/figure
      <lnpid>id-UK03-27462</lnpid></title>
    <body>
      <p><b>Applicable for UK03 and UK17</b>: <ul>
        <li>If input x-path is
          <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject</sourcexml>
          then it becomes mapped with
          <targetxml>doc:related-content/related-content-grp/related-content-item/related-content-desc/person/bio/bio.text/bodytext/figure</targetxml>. <pre>
<![CDATA[
<docinfo:assoc-links-grp assoc-content="recommended-by">
    <heading><title>Author name recommends</title></heading>
    <text>
        <person>
            <bio>
                <figure>
                    <inlineobject type="image" mimetype="image/gif" filename="test_recommended_by.jpg"/>
                </figure>
            </bio>
        </person>
    </text>... 
</docinfo:assoc-links-grp>
]]>
<b>Becomes</b>
<![CDATA[
<doc:related-content>
  <doc:related-content-grp grptype="recommended-by">
    <heading>
      <title>Author name recommends</title>
    </heading>
    <doc:related-content-item>
      <doc:related-content-desc>
        <p>
          <text>
            <person:person>
              <person:bio>
                <person:bio.text>
                  <bodytext>
                    <figure>
                      <ref:inlineobject>
                        <ref:locator>
                          <ref:locator-key>
                            <ref:key-name name="object-key"/>
                            <ref:key-value value="test_recommended_by.jpg"/>
                          </ref:locator-key>
                          <ref:locator-params>
                            <proc:param name="object-type" value="IMG"/>
                            <proc:param name="external-or-local" value="external"/>
                            <proc:param name="object-server" value="Blobstore"/>
                            <proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                            <proc:param name="componentseq" value="1"/>
                          </ref:locator-params>
                        </ref:locator>
                      </ref:inlineobject>
                    </figure>
                  </bodytext>
                </person:bio.text>
              </person:bio>
            </person:person>
          </text>
        </p>
      </doc:related-content-desc>
     </doc:related-content-item>
  </doc:related-content-grp>
</doc:related-content>
]]>
</pre>
        </li>
      </ul>
      </p>
      <section>
        <title>Changes</title>
        <p>2016-12-14: <ph id="change_20161214_jm">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup for ref:inlineobject; all paramater names that
          formerly contained the word "attachment" are now "object".</ph></p>
        <p>2016-08-03: <ph id="change_20160803_JM">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup.</ph></p>
        <p>2016-02-22: <ph id="change_20160222_SS">Created the instruction for handling input scenario
          -
          <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject</sourcexml>.
          RFA #<b>2742</b></ph>
        </p>
      </section>
    </body>
  </dita:topic>
  
  <!-- DITA file original location /DITA/ConversionInstructions/Rosetta/DITA-UK/UK03_CaseDigest/Rosetta_docinfo-assoc-links-grp-text-person-bio-figure-to-LexisAdvance_doc-related-content-figure.dita -->    



  
  
  <xsl:template match="docinfo:assoc-links-grp/text[person/bio/figure/inlineobject]" priority="40">
    <doc:related-content-item>
       <doc:related-content-desc>
           <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
             <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
               <xsl:apply-templates/>
             </text>
           </p>
       </doc:related-content-desc>
     </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-links-grp/text/person[bio/figure/inlineobject]" priority="40">
    <person:person>
      <xsl:apply-templates/>
    </person:person>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-links-grp/text/person/bio[figure/inlineobject]" priority="40">
    <person:bio>
      <person:bio.text>
        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates/>
        </bodytext>
      </person:bio.text>
    </person:bio>
  </xsl:template>
    
</xsl:stylesheet>
