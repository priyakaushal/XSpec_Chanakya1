<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>case:casename <lnpid>id-CA02DS-12810</lnpid></title>
   <body>
      <section>
<ul>
         <li>
          <sourcexml>case:casename</sourcexml> becomes
            <targetxml>caseinfo:casename</targetxml> and
          populate the child as below: <ul>
            <li>Create <targetxml>caseinfo:fullcasename</targetxml>
            </li>
          </ul>
          
          <pre>

&lt;case:casename&gt;Canada (Attorney General) v. Buckley&lt;/case:casename&gt;

            </pre>
          <b>Becomes</b>
          <pre>

&lt;caseinfo:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Canada (Attorney General) v. Buckley&lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
&lt;/caseinfo:caseinfo&gt;

          </pre>   
           
           <note>Any <sourcexml>nl</sourcexml> elements that occur inside
             <sourcexml>case:casename</sourcexml> should be suppressed if they are preceded or
             followed by a space. Any <sourcexml>nl</sourcexml> elements that are not preceded or
             followed by a space should be converted into a single space character.</note>
           
           <pre>

&lt;case:casename&gt;Between&lt;nl/&gt; Her Majesty the Queen, and&lt;nl/&gt; Joseph Moore&lt;/case:casename&gt;

            </pre>
           <b>Becomes</b>
           <pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Between Her Majesty the Queen, and Joseph Moore&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </pre>
           
        </li>
      </ul>
      </section>
     <section>
       <title>Changes</title>
       <p>2013-04-24: <ph id="change_20130424_AS">Fullcasename displayed in multiple lines under casename... "DB item #1151</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.casename.dita  -->
	 
  <!-- Vikas Rohilla : Template to match the case:casename and create the  caseinfo:casename/caseinfo:shortcasename-->
  <xsl:template match="case:casename">
    <caseinfo:casename>
      <caseinfo:shortcasename>
        <xsl:apply-templates select="@* | node()"/>
      </caseinfo:shortcasename>
    </caseinfo:casename>
  </xsl:template>

  <!-- AWantika:2017-12-01- Created this template for Webstar  6994049, CI doesn't say to create proc:nl
                "Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character." -->
  <xsl:template match="case:casename/nl">
    <xsl:choose>
      <xsl:when test="ends-with(preceding-sibling::text()[1], ' ') or starts-with(following-sibling::text()[1], ' ')"/>
      <xsl:otherwise>
        <xsl:text> </xsl:text>
      </xsl:otherwise>
    </xsl:choose> 
  </xsl:template>
</xsl:stylesheet>