<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita casedigest">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="refnum">
   <title>refnum <lnpid>id-CA02CC-12437</lnpid></title>
   <body>
      <section>
          <p><sourcexml>refnum</sourcexml> becomes <targetxml>refnum</targetxml> and will be placed within hierarchy <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo</targetxml> during conversion.</p>
         <p>The content of <sourcexml>refnum</sourcexml> should become the content of <targetxml>refnum</targetxml>, unless
               <sourcexml>@ln.user-displayed="false"</sourcexml> is present in <sourcexml>refnum</sourcexml>.</p>
         <p>The attributes of <targetxml>refnum</targetxml> are populated as follows:<ul>
               <li><sourcexml>refnum/@refnumtype</sourcexml> becomes <targetxml>refnum/@refnumscheme</targetxml>.</li>
               <li>The content of <sourcexml>refnum</sourcexml> is placed in <targetxml>refnum/@num</targetxml>
                  <i>regardless</i> of the value of <sourcexml>@ln.user-displayed</sourcexml> in the source. .</li>
            </ul></p>
      </section>
      
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> with <sourcexml>@ln.user-displayed="false"</sourcexml></title>
         <codeblock>

&lt;refnum refnumtype="UCN" ln.user-displayed="false"&gt;00770463&lt;/refnum&gt;

           </codeblock>
         <b>becomes</b>
         <codeblock>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;refnum refnumscheme="UCN" num="00770463"/&gt;
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </codeblock>
      </example>
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> with <sourcexml>@ln.user-displayed="true"</sourcexml></title>
         <codeblock>

&lt;refnum refnumtype="UCN" ln.user-displayed="true"&gt;00770463&lt;/refnum&gt;

           </codeblock>
         <b>becomes</b>
         <codeblock>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;refnum refnumscheme="UCN" num="00770463"&gt;00770463&lt;/refnum
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </codeblock>
      </example>
      <example>
         <title>Mapping of <sourcexml>refnum</sourcexml> without <sourcexml>@ln.user-displayed</sourcexml></title>
         <codeblock>

&lt;refnum refnumtype="UCN"&gt;00770463&lt;/refnum&gt;

           </codeblock>
         <b>becomes</b>
         <codeblock>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;refnum refnumscheme="UCN" num="00770463"&gt;00770463&lt;/refnum
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </codeblock>
      </example>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\refnum.dita  -->
</xsl:stylesheet>