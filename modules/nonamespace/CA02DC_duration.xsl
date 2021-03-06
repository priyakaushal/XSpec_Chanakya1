<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="duration">
   <title>duration <lnpid>id-CA02DC-12634</lnpid></title>
   <body>
      <section>
<ul>
         <li>
            <sourcexml>duration</sourcexml> becomes <targetxml>duration</targetxml>.
             <note>Schema element <targetxml>duration</targetxml> contains a required attribute <targetxml>@normval</targetxml> in current casedigest 5.4_PROD schema, 
                 so a CR has been raised to make <targetxml>@normval</targetxml> optional as well as to add element <targetxml>duration</targetxml> 
                 to the content model of <targetxml>textitem</targetxml>. CR number is: DADB2012101213525400</note>
            <pre>


&lt;dig:damages&gt;
    &lt;dig:damages-amount&gt;
        &lt;dig:award-of-time&gt;
            &lt;duration&gt;12 months notice&lt;/duration&gt;
        &lt;/dig:award-of-time&gt;
    &lt;/dig:damages-amount&gt;
&lt;/dig:damages&gt;

                    </pre>
               <b>Becomes</b>
               <pre>
    

&lt;casedigest:damages&gt;
        &lt;casedigest:award&gt;
            &lt;textitem&gt;
                &lt;duration&gt;12 months notice&lt;/duration&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\duration.dita  -->
 
    <!--Vikas Rohilla : Updated the Template initial-->
    <xsl:template match="duration">        
        <duration>
            <xsl:apply-templates select="@* | node()"/>
        </duration>
    </xsl:template>
    
    <xsl:template match="duration/@searchtype"/>
</xsl:stylesheet>