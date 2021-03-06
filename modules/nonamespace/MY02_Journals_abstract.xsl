<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="abstract">
  <title>abstract <lnpid>id-MY02-16207</lnpid></title>
  
  <body>
    <p>
      <ul>
        <li><sourcexml>jrnl:prelim/abstract</sourcexml> becomes <targetxml>nitf:body.head/abstract</targetxml>. Create <targetxml>bodytext</targetxml> as the required child.                 
        </li>       
      </ul>     
    </p>    
    
<pre> 

&lt;jrnl:prelim&gt;
   &lt;!--...--&gt;
    &lt;abstract&gt;
      &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="it"&gt;The Industrial Court is an inferior specialist tribunal
                adjudicating trade disputes that involve workers in the private sector. The court is
                not strictly confined to the administration of justice in accordance with the law,
                but is an instrument for the dispensation of social justice according to equity and
                good conscience. Social justice and legal justice are two different concepts ....&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/abstract&gt;
&lt;/jrnl:prelim&gt;


<b>Becomes</b>


&lt;nitf:body.head&gt;
    &lt;!--...--&gt;
    &lt;abstract&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;The Industrial Court is an inferior specialist tribunal
                        adjudicating trade disputes that involve workers in the private sector. The
                        court is not strictly confined to the administration of justice in
                        accordance with the law, but is an instrument for the dispensation of social
                        justice according to equity and good conscience. Social justice and legal
                        justice are two different concepts ....&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/abstract&gt;
&lt;/nitf:body.head&gt;

</pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\abstract.dita  -->
<!--	<xsl:message>MY02_Journals_abstract.xsl requires manual development!</xsl:message> -->

    <xsl:template match="abstract">
        <abstract>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="heading"/>
            <bodytext>
                <xsl:apply-templates select="node() except (heading|catchwordgrp)"/>
            </bodytext>
        </abstract>
        <xsl:apply-templates select="catchwordgrp"/>
    </xsl:template>

    <!--  Original Target XPath:  nitf:body.head/abstract   -->
    <xsl:template match="scope">
        <abstract>
            <xsl:attribute name="abstracttype">
                <xsl:text>scope</xsl:text>
            </xsl:attribute>         
            <xsl:apply-templates select="heading"/>
            <bodytext>
                <xsl:apply-templates select="*[not(self::heading)]"/>
            </bodytext>
        </abstract>
    </xsl:template>
	

</xsl:stylesheet>