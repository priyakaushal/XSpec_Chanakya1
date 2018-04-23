<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="prelim">
   <title>prelim <lnpid>id-UK02-27238</lnpid></title>
   <body>
      <section>
          <p>
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">prelim</sourcexml> becomes
              <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:caseinstancebody/courtcase:opinions/courtcase:prelim</targetxml>.
              <note class="- topic/note "> 
                  Always use <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml> as a child
                  of <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:prelim</targetxml> in order to handle the child elements for
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">prelim</sourcexml>.
              </note>
          </p>
      </section>
       
       <example>
           <title>Source XML</title>
           <codeblock>

&lt;case:judgments&gt;
    &lt;prelim&gt;
        &lt;p&gt;
            &lt;text align="right"&gt;
                &lt;emph typestyle="it"&gt;
                    &lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;
                &lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/prelim&gt;
&lt;/case:judgments&gt;

           </codeblock>
       </example>
       
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;courtcase:opinions&gt;
    &lt;courtcase:prelim&gt;
        &lt;bodytext&gt;
            &lt;p align="right"&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;
                        &lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;
                    &lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;                
    &lt;/courtcase:prelim&gt;
&lt;/courtcase:opinions&gt;

           </codeblock>
       </example>
       
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\prelim.dita  -->

	<xsl:template match="prelim">
		<!--  Original Target XPath:  compcase:caseinstancebody/courtcase:opinions/courtcase:prelim   -->
		<courtcase:prelim>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node() except prelim"/><!-- prelim must occur within courtcase:opinions per CI -->
			</bodytext>
		</courtcase:prelim>
	</xsl:template>

</xsl:stylesheet>