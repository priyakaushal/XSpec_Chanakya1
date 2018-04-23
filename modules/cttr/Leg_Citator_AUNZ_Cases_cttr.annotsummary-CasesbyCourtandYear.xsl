<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyCourtandYear">
  <title>cttr:annotations/cttr:annotsummary[@display-name="Cases by Court and Year"][@id="CI2"]/table <lnpid>id-AU20-22271</lnpid></title>
  
  <body>
    <section>
      <p>When <sourcexml>cttr:annotsummary</sourcexml> contains an attribute <sourcexml>id="CI2"</sourcexml> 
        followed by a <sourcexml>table</sourcexml> the conversion should
        NOT create a <targetxml>table</targetxml>. It should instead create 
        <targetxml>cttr:refssummary[@xml:id="CI2"][@summarytype="subseqcases"]</targetxml> 
        and child element <targetxml>cttr:refssummarygroup[@grouptype="Year"]</targetxml>.</p>
      <p>Conversion should find second entry in first row within the <sourcexml>thead</sourcexml> - 
        <sourcexml>table/tgroup/thead/row/entry[2]</sourcexml> which contains a four digit year value 
        and place into text (PCDATA) of 
        <targetxml>cttr:refssummaryitem @documenttype="case" @value="start-year"</targetxml>
        <targetxml>@value="{content of table/tgroup/thead/row/entry[2]}"</targetxml>
      </p>
      <p>Conversion should find last entry in first row within the <sourcexml>thead</sourcexml> - 
        <sourcexml>table/tgroup/thead/row/entry[last]</sourcexml> which contains a four digit year value 
        and place into child of 
        <targetxml>cttr:refssummaryitem @documenttype="case" @value="end-year"</targetxml>
        <targetxml>@value="{content of table/tgroup/thead/row/entry[2]}"</targetxml>.</p>
      <p>Conversion should compare all <sourcexml>entry</sourcexml> values in <sourcexml>tbody/row[all]</sourcexml> 
        - and place into child of 
        <targetxml>cttr:refssummaryitem documenttype="case" value="max-cases-per-year"</targetxml>
        <targetxml>@value="{content of table/tgroup/tbody/row/entry[LARGEST NUMBER]}"</targetxml>.</p>
      <p>Conversion should iterate over each row and sum each "column" by adding together all entry 
        values based on position in the row.
        First conversion should create a <targetxml>cttr:refssummarygroup[@grouptype="Court"]</targetxml> 
        element as a sibling of <targetxml>cttr:refssummarygroup[@grouptype="Year"]</targetxml>, 
        with content as child elements using the following input - For all rows 
        in <sourcexml>tbody</sourcexml> in the same position create a 
        <targetxml>cttr:refssummaryitem[@documenttype="case"]</targetxml> with the following content:
        <ul>
          <li>
            <targetxml>cttr:refssummaryitem/@value</targetxml> containing the name of the court, from 
            <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[1]</sourcexml> for the <sourcexml>row</sourcexml> 
            element being processed.</li>
          <li>
            <targetxml>cttr:refssummaryitem/text()</targetxml> containing the sum calculated for the 
            <sourcexml>row</sourcexml> element being processed.</li>
        </ul>
      </p>
    </section>
    <example>
      <title>Example 1: Source cttr:annotsummary display-name="Cases by Court and Year" id="CI2"</title>
      <codeblock>
        &lt;cttr:annotsummary display-name="Cases by Court and Year" id="CI2"&gt;
          &lt;table&gt;
            &lt;tgroup cols="94"&gt;
              &lt;thead&gt;
                &lt;row&gt;
                  &lt;entry&gt;Court&lt;/entry&gt;
                  &lt;entry&gt;1920&lt;/entry&gt;
                  &lt;entry&gt;1921&lt;/entry&gt;
                  &lt;entry&gt;1922&lt;/entry&gt;
                  &lt;entry&gt;1923&lt;/entry&gt;
                  &lt;entry&gt;1924&lt;/entry&gt;
                  &lt;entry&gt;1925&lt;/entry&gt;
                  &lt;entry&gt;1926&lt;/entry&gt;
                  &lt;entry&gt;1927&lt;/entry&gt;
                  &lt;entry&gt;1928&lt;/entry&gt;
                  &lt;entry&gt;1929&lt;/entry&gt;
                  &lt;entry&gt;1930&lt;/entry&gt;
                  &lt;entry&gt;1931&lt;/entry&gt;
                  &lt;entry&gt;1932&lt;/entry&gt;
                  &lt;entry&gt;1933&lt;/entry&gt;
                  &lt;entry&gt;1934&lt;/entry&gt;
             ...&lt;/row&gt;
             &lt;/thead&gt;
             
              &lt;tbody&gt;
                &lt;row&gt;
                  &lt;entry&gt;FCA&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1920--&gt;1&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1921--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1922--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1923--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1924--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1925--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1926--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1927--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1928--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1929--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1930--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1931--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1932--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1933--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1934--&gt;0&lt;/entry&gt;                  
                  ...&lt;/row&gt;
                &lt;row&gt;
                  &lt;entry&gt;AATA&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1920--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1921--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1922--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1923--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1924--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1925--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1926--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1927--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1928--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1929--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1930--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1931--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1932--&gt;1&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1933--&gt;0&lt;/entry&gt;
                  &lt;entry&gt;
                    &lt;!--1934--&gt;0&lt;/entry&gt;                  
                  ...&lt;/row&gt;                  
              ...
              &lt;/tbody&gt;
            &lt;/tgroup&gt;
          &lt;/table&gt;
        &lt;/cttr:annotsummary&gt;   
        </codeblock>

      <title>Example 1: Target cttr:annotsummary display-name="Cases by Court and Year" id="CI2"</title>
      <codeblock>
        
    &lt;cttr:refssummary xml:id="CI2"&gt;
    
      &lt;cttr:refssummarygroup grouptype="Year"&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="start-year"&gt;1920&lt;/cttr:refssummaryitem&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="end-year"&gt;1934&lt;/cttr:refssummaryitem&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="max-cases-per-year"&gt;1&lt;/cttr:refssummaryitem&gt;
      &lt;/cttr:refssummarygroup&gt;
      
      &lt;cttr:refssummarygroup grouptype="Court"&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="FCA"&gt;1&lt;/cttr:refssummaryitem&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="AATA"&gt;1&lt;/cttr:refssummaryitem&gt;
                ...
             &lt;!-- One cttr:refssummaryitem for each court - one for each row in tgroup/tbody. --&gt;
      &lt;/cttr:refssummarygroup&gt;
      ...      
   &lt;/cttr:refssummary&gt;
   
        </codeblock>
    </example>
    <section>
      <title>
        Changes:
      </title>
      <p>2015-12-11: <ph id="change_20151211d_snb">Removed "Case Totals" from the markup example. No mapping instruction 
        existed for "Case Totals", and the conditions are different, so created a new section for it. Added 
        <targetxml>@summarytype="subseqcases"</targetxml> to <targetxml>cttr:refssummary</targetxml>. Specified that 
        <targetxml>cttr:refssummarygroup[@grouptype="Court"]</targetxml> should be a sibling of 
        <targetxml>cttr:refssummarygroup[@grouptype="Year"]</targetxml>, and corrected the logic for creating 
        <targetxml>cttr:refssummaryitem</targetxml> and its content.</ph>
      </p>
    </section>


  </body>
  
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyCourtandYear.dita  -->
	 

  <!--<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='CI2']">
    <xsl:if test="table">
      <cttr:refssummary>
        <xsl:attribute name="xml:id">
          <xsl:text>CI2</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="summarytype">
          <xsl:text>subseqcases</xsl:text>
        </xsl:attribute>
        <cttr:refssummarygroup>
          <xsl:attribute name="grouptype">
            <xsl:text>Year</xsl:text>
          </xsl:attribute>
          <xsl:if test="table/tgroup/thead/row/entry[2]">
            <cttr:refssummaryitem>
              <xsl:attribute name="documenttype">
                <xsl:text>case</xsl:text>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:value-of select="."/>
              </xsl:attribute>
            </cttr:refssummaryitem>
          </xsl:if>
          <xsl:if test="table/tgroup/thead/row/entry[last()]">
            <cttr:refssummaryitem>
              <xsl:attribute name="documenttype">
                <xsl:text>case</xsl:text>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:value-of select="."/>                
              </xsl:attribute>
            </cttr:refssummaryitem>
          </xsl:if>
          <xsl:if test="table/tgroup/thead/row">
            
          </xsl:if>
        </cttr:refssummarygroup>
      </cttr:refssummary>
    </xsl:if>
	</xsl:template>
-->
	

</xsl:stylesheet>