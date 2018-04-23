<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="money">
    <title>money <lnpid>id-CA02DC-12637</lnpid></title>
   <body>
      <section>
<ul>
         <li>
             <sourcexml>money</sourcexml> becomes
             <targetxml>money</targetxml>.
            <pre>


&lt;dig:damages&gt;
    &lt;dig:damages-amount&gt;
        &lt;money&gt;Non-pecuniary damages: $30,000.&lt;/money&gt;
    &lt;/dig:damages-amount&gt;
&lt;/dig:damages&gt;

                    </pre>
               <b>Becomes</b>
               <pre>
    

&lt;casedigest:damages&gt;
    &lt;casedigest:award&gt;
        &lt;textitem&gt;
            &lt;money&gt;Non-pecuniary damages: $30,000.&lt;/money&gt;
        &lt;/textitem&gt;
    &lt;/casedigest:award&gt;
&lt;/casedigest:damages&gt; 

               </pre>
            
            </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\money.dita  -->
    
    <!-- Vikas Rohilla : Updated the Template Initial	 -->
    <xsl:template match="money">
        <textitem>
    	<money>
			<xsl:apply-templates select="@* | node()"/>
		</money>
        </textitem>
	</xsl:template>

</xsl:stylesheet>