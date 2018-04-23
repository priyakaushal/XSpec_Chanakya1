<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_frac-to-LexisAdvance_num_frac">
  <title><sourcexml>frac</sourcexml> to <targetxml>num/frac</targetxml> <lnpid>id-CCCC-10327</lnpid></title>
  <body>
    <section>
      <p><sourcexml>frac</sourcexml> becomes <targetxml>frac</targetxml>. The output
          <targetxml>frac</targetxml> must be within a <targetxml>num</targetxml> or
          <targetxml>formula</targetxml> ancestor element (one of these does not have to be an
        immediate parent, just an ancestor). If the output <targetxml>frac</targetxml> does not have
        such an ancestor, then a parent <targetxml>num</targetxml> element must be created to
        contain the <targetxml>frac</targetxml>.</p>
      <p>Within <sourcexml>frac</sourcexml> the child <sourcexml>numer</sourcexml> becomes <targetxml>numer</targetxml> 
      	and the child <sourcexml>denom</sourcexml> becomes <targetxml>denom</targetxml>. Both <targetxml>numer</targetxml> 
      	and <targetxml>denom</targetxml> are required children of <targetxml>frac</targetxml>.
        </p>
      </section>
    <example>
		<title>Source XML where <sourcexml>num</sourcexml> occurs as parent of <sourcexml>frac</sourcexml></title>
		<codeblock>

&lt;p&gt;&lt;text&gt;...&lt;num&gt;
&lt;frac&gt;
	&lt;numer&gt;2&lt;/numer&gt;
	&lt;denom&gt;5&lt;/denom&gt;
&lt;/frac&gt;
&lt;/num&gt;...&lt;/text&gt;&lt;/p&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;p&gt;&lt;text&gt;...&lt;num&gt;
&lt;frac&gt;
	&lt;numer&gt;2&lt;/numer&gt;
	&lt;denom&gt;5&lt;/denom&gt;
&lt;/frac&gt;
&lt;/num&gt;...&lt;/text&gt;&lt;/p&gt;

	</codeblock>
    </example>
      
    <example>
		<title>Source XML where <sourcexml>frac</sourcexml> occurs outside of <sourcexml>num</sourcexml> (has no ancestor that is <sourcexml>num</sourcexml>)</title>
		<codeblock>

&lt;p&gt;&lt;text&gt;Given the ratio
&lt;frac&gt;
	&lt;numer&gt;3&lt;/numer&gt;
	&lt;denom&gt;7&lt;/denom&gt;
&lt;/frac&gt; then the ...&lt;/text&gt;&lt;/p&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;p&gt;&lt;text&gt;Given the ratio 
&lt;num&gt;
&lt;frac&gt;
	&lt;numer&gt;3&lt;/numer&gt;
	&lt;denom&gt;7&lt;/denom&gt;
&lt;/frac&gt;
&lt;/num&gt; then the ...&lt;/text&gt;&lt;/p&gt;

	</codeblock>
    </example>

    <example>
		<title>Source XML where <sourcexml>emph</sourcexml> occurs as parent of <sourcexml>frac</sourcexml> and the <sourcexml>frac</sourcexml> itself contains a nested <sourcexml>frac</sourcexml>.</title>
		<codeblock>

&lt;title&gt;...&lt;emph&gt;
&lt;!-- This is the outer &lt;frac&gt;. --&gt;
&lt;frac&gt;
 &lt;numer&gt;
    &lt;!-- This is a nested &lt;frac&gt;. --&gt;
   &lt;frac&gt;
     &lt;numer&gt;3&lt;/numer&gt;
     &lt;denom&gt;8&lt;/denom&gt;
   &lt;/frac&gt;
 &lt;/numer&gt;
 &lt;denom&gt;7&lt;/denom&gt;
&lt;/frac&gt;
&lt;/emph&gt;...&lt;/title&gt;

	</codeblock>
    </example>

    <example>
		<title>Target XML</title>
		<codeblock>

&lt;emph&gt;
&lt;!-- 
      This &lt;num&gt; is created to contain the outer &lt;frac&gt;, 
      since otherwise this &lt;frac&gt; would have no ancestor that is &lt;num&gt;.
--&gt;
&lt;num&gt;
&lt;frac&gt;
 &lt;numer&gt;
    &lt;!-- 
          Note the nested &lt;frac&gt; is not wrapped in another &lt;num&gt;, 
          since it already has an ancestor that is &lt;num&gt;. 
    --&gt;
   &lt;frac&gt;
     &lt;numer&gt;3&lt;/numer&gt;
     &lt;denom&gt;8&lt;/denom&gt;
   &lt;/frac&gt;
 &lt;/numer&gt;
 &lt;denom&gt;7&lt;/denom&gt;
&lt;/frac&gt;
&lt;/num&gt;
&lt;/emph&gt;

	</codeblock>
    </example>
      
    <section>
      <title>Changes</title>
    </section>
  </body>
	</dita:topic>


	<!-- 2017-10-04 - MDS: added 'or parent:fracor' to match modified monolith. -->
	<!-- 2017-10-06 - JL: added 'or parent:frac' to match modified monolith for HK01. -->
	<xsl:template match="frac[parent::num or ancestor::formula or ancestor::dispformula or parent::fracor or parent::frac]">

		<!--  Original Target XPath:  num/frac   -->
		<frac xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</frac>		

	</xsl:template>

	<xsl:template match="frac[not(parent::num or ancestor::formula or ancestor::dispformula or parent::frac)]">
		
		<!--  Original Target XPath:  num/frac   -->
		<num xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<frac>
				<xsl:apply-templates select="@* | node()"/>
			</frac>	
		</num>	
		
	</xsl:template>
	
	<xsl:template match="numer">

		<!--  Original Target XPath:  numer   -->
		<numer xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</numer>

	</xsl:template>

	<xsl:template match="denom">

		<!--  Original Target XPath:  denom   -->
		<denom xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</denom>

	</xsl:template>

</xsl:stylesheet>