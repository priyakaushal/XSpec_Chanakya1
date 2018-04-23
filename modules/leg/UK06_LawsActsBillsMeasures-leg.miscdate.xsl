<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.miscdate">
  <title>leg:miscdate <lnpid>id-UK06-28050</lnpid></title>
  <body>
    <section>
		<ul>
			<li>
                    <sourcexml>leg:info/leg:dates/leg:miscdate</sourcexml>
                    <b>Becomes</b>
                    <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/miscdate</targetxml> and
                    required attribute <targetxml>@datetype</targetxml> should be set to "miscdate". <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:info&gt;
    &lt;leg:dates&gt;
        &lt;leg:miscdate&gt;of &lt;date day="30" month="05" year="2001"&gt;30 May 2001&lt;/date&gt;
        &lt;/leg:miscdate&gt;
    &lt;/leg:dates&gt;
&lt;/leg:info&gt;

		</pre>
                    <pre>
             <b><i>Example: Target Markup</i></b>
            

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        &lt;miscdate datetype="miscdate"&gt;of &lt;date day="30" month="05" year="2001"&gt;30 May 2001&lt;/date&gt;&lt;/miscdate&gt;
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;

          </pre>
                    <note>Attribute <sourcexml>@subseqdoc</sourcexml> should be suppressed from
                        conversion.</note>
                </li>
		</ul>
    </section>
      <section>
          <title>Changes</title>
          <p>2016-10-12: <ph id="change_20161012_HP">Created for handling scenario of <sourcexml>leg:info/leg:dates/leg:miscdate</sourcexml>.</ph></p>
      </section>
      
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.miscdate.dita  -->
	 
    <!-- Sudhanshu Srivastava :
         Edited :- 15 June 2017.
         Comments :- This is content specific module handling leg:miscdate
    -->
    <xsl:template match="leg:miscdate[parent::leg:dates/parent::leg:info]">
		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/miscdate   -->
        <miscdate datetype="'miscdate'">
					<xsl:apply-templates select="@* | node()"/>
		</miscdate>
	</xsl:template>
    <xsl:template match="leg:miscdate/@subseqdoc"/>
    
    <xsl:template match="leg:miscdate/date">
        <date day="{@day}" month="{@month}" year="{@year}">
        <xsl:apply-templates select="node()"/>
        </date>
    </xsl:template>
</xsl:stylesheet>