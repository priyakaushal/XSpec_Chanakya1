<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_relatedpub">
   <title>relatedpub <lnpid>id-UK11DA-29441</lnpid></title>
   <body>
      <section>
         <p><sourcexml>relatedpub[@display-name]</sourcexml> becomes
               <targetxml>abstract:body/abstract:target/bodytext/ref:relatedrefs[@referencetype]/bodytext/p/text</targetxml>.</p>
      </section>
      <note><sourcexml>relatedpub</sourcexml> always occurs with source elements that map to
            <targetxml>abstract:target/pubinfo:pubinfo</targetxml>. Conversion should create only
         one <targetxml>abstract:target</targetxml>, as shown in the example below.</note>

      <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    ...
    &lt;publication&gt;Daily Telegraph&lt;/publication&gt;
    &lt;pubdate display-name="Issue Date"&gt;
       &lt;date day="13" month="10" year="2009"&gt;13 October 2009&lt;/date&gt;
    &lt;/pubdate&gt;
    &lt;contrib contribtype="author"&gt;
       &lt;person&gt;
          &lt;name.text&gt;Philip Aldrick&lt;/name.text&gt;
       &lt;/person&gt;
    &lt;/contrib&gt;
    &lt;relatedpub display-name="Also Covered"&gt;Guardian, 13 October 2009, pg 24&lt;/relatedpub&gt;
    ...
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
      <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
     &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;Daily Telegraph&lt;/pubinfo:publicationname&gt;
        &lt;pubinfo:dates&gt;
           &lt;pubinfo:issuedate day="13" month="10" year="2009"&gt;
              &lt;date-text&gt;13 October 2009&lt;/date-text&gt;
           &lt;/pubinfo:issuedate&gt;
        &lt;/pubinfo:dates&gt;
     &lt;/pubinfo:pubinfo&gt;
     &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
           &lt;person:name.text&gt;Philip Aldrick&lt;/person:name.text&gt;
        &lt;/person:person&gt;
     &lt;/person:contributor&gt;
     &lt;bodytext&gt;
        &lt;ref:relatedrefs referencetype="Also Covered"&gt;
           &lt;bodytext&gt;
              &lt;p&gt;
                 &lt;text&gt;Guardian, 13 October 2009, pg 24&lt;/text&gt;
              &lt;/p&gt;
           &lt;/bodytext&gt;
        &lt;/ref:relatedrefs&gt;
     &lt;/bodytext&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>

      <section>
         <title>Changes</title>
         <p>2013-09-17: <ph id="change_20130917_jhm">New section. Handles new xpath
                  <sourcexml>dig:body/dig:info/relatedpub</sourcexml>. Markup occurs in dpsi 0MCR
               and 042W "Newspapers" which are new in Sept 2013 redelivery, as noted in WebTeam #
               233402.</ph></p>
      </section>

   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_relatedpub.dita  -->
<!--	<xsl:message>UK11_DA_relatedpub.xsl requires manual development!</xsl:message> -->

   <xsl:template match="relatedpub[@display-name]">
      <bodytext>
         <ref:relatedrefs>
            <bodytext>
               <p>
                  <text>
                     <xsl:apply-templates select="@* | node()"/>
                  </text>
               </p>
            </bodytext>
         </ref:relatedrefs>
      </bodytext>
   </xsl:template>



	

</xsl:stylesheet>