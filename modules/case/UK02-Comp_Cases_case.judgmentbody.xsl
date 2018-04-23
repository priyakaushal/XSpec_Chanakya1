<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judgmentbody">
   <title>case:judgmentbody <lnpid>id-UK02-27225</lnpid></title>
   <body>
      <section>
          <p>
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgmentbody</sourcexml> becomes 
              <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/bodytext</targetxml>
          </p>
      </section>

       <example>
           <title>Source XML</title>
           <codeblock>

&lt;case:judgmentbody&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;
                By the Housing Act 1925, s 64, power to acquire landcompulsorily is conferred upon local authorities. That section provides that a local authority may be authorised to purchase land compulsorily for the purpose of part III of the Act by means of an order submitted to the Minister and confirmed by him in accordance with sched III of the Act. That section has been amended, but the substance of it remains. Under that section the Sunderland Corporation made an order by which they proposed to acquire compulsorily land in Durham Road, belonging to Mr Allen Horn, consisting of some 102 acres. Part of that land they desired for the purpose of building houses and part of it they desired for the purpose of enlarging a public park. There was a point originally raised in the notice of appeal to the effect that under this procedure, there was no power in the corporation to acquire land for the purpose of a public park. That point has been abandoned, and abandoned in this case for all time. Some day it may have to be decided. It does not fall to be decided either today, or any day in regard of this particular land and this particular corporation and this particular park.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:judgmentbody&gt;

           </codeblock>
       </example>
       
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;bodytext&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;
                By the Housing Act 1925, s 64, power to acquire landcompulsorily is conferred upon local authorities. That section provides that a local authority may be authorised to purchase land compulsorily for the purpose of part III of the Act by means of an order submitted to the Minister and confirmed by him in accordance with sched III of the Act. That section has been amended, but the substance of it remains. Under that section the Sunderland Corporation made an order by which they proposed to acquire compulsorily land in Durham Road, belonging to Mr Allen Horn, consisting of some 102 acres. Part of that land they desired for the purpose of building houses and part of it they desired for the purpose of enlarging a public park. There was a point originally raised in the notice of appeal to the effect that under this procedure, there was no power in the corporation to acquire land for the purpose of a public park. That point has been abandoned, and abandoned in this case for all time. Some day it may have to be decided. It does not fall to be decided either today, or any day in regard of this particular land and this particular corporation and this particular park.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/bodytext&gt;

           </codeblock>
       </example>
       
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.judgmentbody.dita  -->

	<xsl:template match="case:judgmentbody">
		<!--  Original Target XPath:  compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/bodytext   -->
		<!--<compcase:body>-->
			<!--<compcase:caseinstance>
				<compcase:caseinstancebody>-->
					<!--<courtcase:opinions xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<courtcase:opinion>-->
							<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						<!--</courtcase:opinion>
					</courtcase:opinions>-->
				<!--</compcase:caseinstancebody>
			</compcase:caseinstance>-->
		<!--</compcase:body>-->
	</xsl:template>

</xsl:stylesheet>