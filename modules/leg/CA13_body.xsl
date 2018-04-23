<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:currencystatement="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/currencystatement" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA13_body">
  <title>Body <lnpid>id-CA13-33007</lnpid></title>
  <body>
    <section><ul>
        <li><sourcexml>leg:body</sourcexml> becomes <targetxml>currencystatement:body</targetxml>.<ul>
            <li><sourcexml>leg:preamble</sourcexml> becomes <targetxml>bodytext</targetxml>.<ul>
                <li><sourcexml>leg:heading/title</sourcexml> becomes <targetxml>h</targetxml>.<ul>
                    <li>child <sourcexml>process-ignore</sourcexml> is usually present; suppress tag
                      and process content, as described in General Markup section.</li>
                  </ul></li>
                <li><sourcexml>leg:bodytext</sourcexml> tag is suppressed, i.e. suppress the tag and
                  process content. <ul>
                    <li><sourcexml>leg:bodytext</sourcexml> may be empty. No special action
                      required. Simply suppress.</li>
                  </ul></li>
              </ul></li>
          </ul></li>
      </ul></section>
    <note>See General Markup section for any elements not specified here.</note>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:body&gt;
  &lt;leg:preamble&gt;
     &lt;leg:heading&gt;
        &lt;title&gt;
           &lt;process-ignore process="kwd"&gt;Current to Vol. 147, Issue 22 of 
                the Ontario Gazette published May 31, 2014.&lt;/process-ignore&gt;
        &lt;/title&gt;
     &lt;/leg:heading&gt;
     &lt;leg:bodytext&gt;
          &lt;p&gt;
               &lt;text&gt;This source contains the ...&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
               &lt;text&gt;Only Parent Acts are ...&lt;/text&gt;
          &lt;/p&gt;
     &lt;/leg:bodytext&gt;
  &lt;/leg:preamble&gt;
&lt;/leg:body&gt;

                 </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;currencystatement:body&gt;
  &lt;bodytext&gt;
     &lt;h&gt;Current to Vol. 147, Issue 22 of the Ontario Gazette 
            published May 31, 2014.&lt;/h&gt;
     &lt;p&gt;
        &lt;text&gt;This source contains the ...&lt;/text&gt;
     &lt;/p&gt;
     &lt;p&gt;
        &lt;text&gt;Only Parent Acts are ...&lt;/text&gt;
     &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/currencystatement:body&gt;

             </codeblock>
    </example>


  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA13-Currency_Statements\CA13_body.dita  -->
	
<!-- Sudhanshu Srivastava edited on 18-May-2017.-->
	<xsl:template match="leg:body">

		<!--  Original Target XPath:  currencystatement:body   -->
	  <currencystatement:body>
			<xsl:apply-templates select="@*|node()"/>
		</currencystatement:body>

	</xsl:template>

	<xsl:template match="leg:preamble">

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
		  <xsl:apply-templates select="@*|node()"/>
		</bodytext>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  h   -->
		<h>
		  <xsl:apply-templates select="@*|node()"/>
		</h>

	</xsl:template>
  
  <xsl:template match="title">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>

  
  <!--
	<xsl:template match="process-ignore">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<xsl:template match="leg:bodytext">
		<!--  Original Target XPath:     -->
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
</xsl:stylesheet>