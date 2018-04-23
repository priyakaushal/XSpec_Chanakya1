<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
  exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.relatedleg">
    <title>leg:relatedleg <lnpid>id-CA06-13830</lnpid></title>
    <body>
      <section>
        <ul>
          <li>
            <sourcexml>leg:info/leg:relatedleg</sourcexml> with attribute
              <sourcexml>leg:relatedleg[@type="parent"]</sourcexml>
            <b>becomes</b>
            <targetxml>regulation:head/primlaw:authority/
              primlaw:authority-item/textitem</targetxml>
            <pre>
             <b><i>Example: Source Markup</i></b>

&lt;leg:relatedleg type="parent"&gt;Chartered Accountants Act; Certified General Accountants Act; Certified Management Accountants Act&lt;/leg:relatedleg&gt;

</pre>
            <pre> 
             <b><i>Example: Target Markup</i></b>

 &lt;regulation:head&gt;
 	&lt;primlaw:authority&gt;
      	&lt;primlaw:authority-item&gt;
      		&lt;textitem&gt;Chartered Accountants Act; Certified General Accountants Act; Certified Management Accountants Act&lt;/textitem&gt;
      	&lt;/primlaw:authority-item&gt;
      &lt;/primlaw:authority&gt;
&lt;/regulation:head&gt;

          </pre>
            <note><p>If source document have the define DPSI values according to below mentioned
                list then conversion needs to convert <sourcexml>leg:info/leg:relatedleg</sourcexml>
                with attribute <sourcexml>leg:relatedleg[@type="parent"]</sourcexml> becomes
                  <targetxml>regulation:head/primlawinfo:primlawinfo/classify:classification[@classscheme="wk.content.grouping"
                  ]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
              <p><b>DPSI Values are:</b>
                <ul>
                  <li>0VNX</li>
                  <li>0U98</li>
                  <li>0USA</li>
                  <li>0UW1</li>
                  <li>0V1Y</li>
                  <li>0V22</li>
                  <li>0V24</li>
                  <li>0V26</li>
                  <li>0V28</li>
                  <li>0V2A</li>
                  <li>0V2B</li>
                  <li>0V2F</li>
                  <li>0V2I</li>
                  <li>0VNX</li>
                </ul>
                <pre> 
             <b><i>Target Example: If Source document have the listed DPSI value:</i></b>

 &lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;classify:classification classscheme="wk.content.grouping"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;By-Laws&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;

          </pre>
              </p>
            </note>
          </li>
        </ul>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-07-07: <ph id="change_20160707_SS">Added note for the handling
              "<sourcexml>leg:relatedleg</sourcexml>", if source documents have mentioned DPSI's
            value according to the define list.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.relatedleg.dita  -->
  <!--	<xsl:message>leg.relatedleg.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:relatedleg[@type = 'parent']">
    <primlaw:authority>
      <primlaw:authority-item>
        <textitem>
          <xsl:apply-templates select="@* | node()"/>
        </textitem>
      </primlaw:authority-item>
    </primlaw:authority>
  </xsl:template>
  
  <xsl:template match="leg:relatedleg/@type">
    
  </xsl:template>

</xsl:stylesheet>