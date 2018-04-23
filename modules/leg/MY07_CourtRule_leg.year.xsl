<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year">
  <title>leg.year <lnpid>id-MY07-17409</lnpid></title>
  <body>
    <section>
      <p>There are two x-path for the <sourcexml>leg:year</sourcexml> in the source files, but the
        target x-path is the same for the both scenario as given below :</p>
      <ul>
        <li>
          <sourcexml>leg:info/leg:officialnum/leg:year</sourcexml> becomes
            <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
          with attribute <targetxml>@year</targetxml></li>
        <li>
          <sourcexml>leg:info/leg:year</sourcexml> becomes
            <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
          with attribute <targetxml>@year</targetxml>.</li>
      </ul>
      <p>
        <note>If a input document have <sourcexml>leg:year</sourcexml> with same value in both given
          xpaths (i.e. <sourcexml>leg:info/leg:year</sourcexml> and
            <sourcexml>leg:officialnum/leg:year</sourcexml>) then we should tranform the first
          scenario <sourcexml>leg:info/leg:year</sourcexml> in target conversion and suppressed the
          second scenario.</note>
      </p>
      <p>In scenario <sourcexml>leg:info/leg:officialnum/leg:year</sourcexml></p>
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <pre>
  
        &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;USM.LN0346y1964e
	           &lt;leg:seriesnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;subleg ALN346&lt;/leg:seriesnum&gt;
	           &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1964&lt;/leg:year&gt;
        &lt;/leg:officialnum&gt;
    
</pre>
      <b>Becomes</b>
      <pre>

    
&lt;primlawinfo:primlawinfo&gt;
           &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;USM.LN0346y1964e
                  &lt;primlawinfo:identifier-component type="seriesnum"&gt;subleg ALN346&lt;/primlawinfo:identifier-component&gt;
            &lt;/primlawinfo:identifier&gt;
          &lt;primlawinfo:dates&gt;
              &lt;primlawinfo:enactdate year="1964"/&gt;
          &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;


      </pre>
      <p>In scenario <sourcexml>leg:info/leg:year</sourcexml></p>
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <pre>

   &lt;leg:info&gt;
          &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1963&lt;/leg:year&gt;
   &lt;/leg:info&gt;

               </pre>
      <b>Becomes</b>
      <pre>

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
          &lt;primlawinfo:enactdate year="1963"/&gt;
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;

                </pre>
      <p> If a input document have <sourcexml>leg:year</sourcexml> with same value in both given
        xpaths (i.e. <sourcexml>leg:info/leg:year</sourcexml> and
          <sourcexml>leg:officialnum/leg:year</sourcexml>) then we should transform the first
        scenario <sourcexml>leg:info/leg:year</sourcexml> in target conversion and suppressed the
        second scenario.</p>
      <pre>
          
&lt;leg:info&gt;
      &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1965&lt;/leg:year&gt;
      &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;USM.LN0406y1965e
          &lt;leg:seriesnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;subleg ALN406&lt;/leg:seriesnum&gt;
          &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1965&lt;/leg:year&gt;
      &lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
          
        </pre>
      <b>becomes</b>
      <pre>
        
&lt;primlawinfo:primlawinfo&gt;
           &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;USM.LN0406y1965e
                  &lt;primlawinfo:identifier-component type="seriesnum"&gt;subleg ALN406&lt;/primlawinfo:identifier-component&gt;
            &lt;/primlawinfo:identifier&gt;
          &lt;primlawinfo:dates&gt;
              &lt;primlawinfo:enactdate year="1965"/&gt;
          &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;
 
      </pre>
    </section>  
    <section>
      <title>Changes</title>
      <p>2013-11-14: <ph id="change_20131114_SSX">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\leg.year.dita  -->
	<!--<xsl:message>MY07_CourtRule_leg.year.xsl requires manual development!</xsl:message>--> 

  <xsl:template match="leg:year[@ln.user-displayed != 'false']">
    <!--<primlawinfo:dates>
         <primlawinfo:enactdate>
            <xsl:if test="matches(normalize-space(.), '^[1|2]\d{3}$')">
               <xsl:attribute name="year">
                  <xsl:value-of select="normalize-space(.)"/>
               </xsl:attribute>
            </xsl:if>
         </primlawinfo:enactdate>
      </primlawinfo:dates>-->
    <!-- Moved the if condition to the start - to create the primlawinfo:dates only when the date is a valid date.(This check is to avoid creating empty tags in target mapping). -->
    <xsl:if test="matches(normalize-space(.), '^[1|2]\d{3}$')">
      <primlawinfo:dates>
        <primlawinfo:enactdate>            
          <xsl:attribute name="year">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:attribute>            
        </primlawinfo:enactdate>
      </primlawinfo:dates>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>