<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_leg.comntry">
  <title><sourcexml>leg:comntry</sourcexml> <lnpid>id-AU05-18813</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and child elements converted as:
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
        </ul>
        
        <ul>
          <li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
            
            <ul>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with following attributes:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
              </li>
              
              <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml> with following attributes:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the first child in the sequence. Refer to the refpt section for more information.</li>
                  <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
                  <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
                  <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotation/bodytext</targetxml></li>
                </ul>
              </li>
              
              <li><sourcexml>level/bodytext/leg:comntry/level</sourcexml> becomes <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml> with following attributes:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
                  <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
                  <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
                  <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotation/bodytext</targetxml></li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_leg.comntry.dita  -->
	<!-- the common modules for commentary should work here. -->

</xsl:stylesheet>