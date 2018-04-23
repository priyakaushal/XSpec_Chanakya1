<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
  version="2.0" exclude-result-prefixes="dita source_cttr xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.use-group">
  <title>cttr:use-group <lnpid>cttr.usagegroup</lnpid></title>
  <body>
    <p>cttr:use-group</p>
    
    <section>        
      <p>
        <sourcexml>cttr:use-group</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:usagegroup</targetxml>
    </p>
    </section>
    <section>
      <p>Attributes <targetxml>@negativesortweight</targetxml> and
          <targetxml>@positivesortweight</targetxml> are added to the element
          <targetxml>cttr:usagegroup</targetxml> element. The value of each attribute is created by
        prepending one or more two digit [R] values (determined from the text of each
          <sourcexml>cttr:use-group/cttr:use</sourcexml> element, as described below) <b>in priority
          (rank) order</b>, with an 8 digit integer value calculated from the
          <sourcexml>case:decisiondate</sourcexml> using the equation: 100,000,000 - YYYYMMDD,
        [D].</p>
    </section>
    <!--Note from Shan's CaseBase Case Citator document "CaseBase Case Citator - Table Sorting & Filtering_21Jan2013.doc": 
		   The signal is the treatment of the case the name of which appears in the relevant row of a table. 
		   The annotation indicates the treatment that the case in that row of that table gives to the case which
		   is the subject of the whole CaseBase entry. 
		   They are discrete concepts, and therefore the sort orders are discrete (although very conceptually similar).  -->
    <section>
      <title>Calculating @negativesortweight</title>
      <p>Value for <targetxml>@negativesortweight</targetxml> attribute is the combination of the
        following values:</p>
      <ul id="ul_bqk_tsn_il">
        <li> [R] Rank(s) of the value(s) of <sourcexml>cttr:use-group/cttr:use</sourcexml>
          element(s). If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml> elements,
          then the rank values should be appended to each other in priority (rank) order, with
          highest ranking (lowest numbered) value appearing first. <ul id="ul_vqk_tsn_il">
            <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
            <li>01 - Overruled</li>
            <li>02 - Disapproved</li>
            <li>03 - Not applied</li>
            <li>04 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>05 - Not followed</li>
            <li>06 - Questioned</li>
            <li>07 - Doubted</li>
            <li>08 - Explained</li>
            <li>09 - Distinguished</li>
            <li>10 - [any other @signal="cautionary" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
            <li>11 - Followed</li>
            <li>12 - Applied</li>
            <li>13 - Approved</li>
            <li>14 - Adopted</li>
            <li>15 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>16 - Overruled in part</li>
            <li>17 - Considered</li>
            <li>18 - Discussed</li>
            <li>19 - Cited</li>
            <li>20 - Referred to</li>
            <li>21 - See</li>
            <li>22 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>23 - [any other text]</li>
          </ul>
          <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
            cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
            attribute).</note>
        </li>
        <li> [D] Value of attrubutes @year, @month and @day of
            <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format. <note>For
            CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
            For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
          <p>If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
            "100000000".</p>
        </li>
        <!--Note on dates from Shan's CaseBase Case Citator document "CaseBase Case Citator - Table Sorting & Filtering_21Jan2013.doc": 
			Note on implementation (14 August 2012): it seems at the time of writing that this tie breaking behaviour currently occurs on Rosetta
			by virtue of the fact that the underlying data in CaseBase tables is provided in reverse chronological order. This means that any data
			on Rosetta which would otherwise sort as a block (due to sharing the value on which the table is being sorted in that instance) displays
			in the reverse chronological order in which the data was originally provided. We would like to ensure that, however it is implemented
			for Lexis Advance (ie whether it�s in the same way as Rosetta or some other mechanism is used), tie breaking based on reverse chronological
			order of judgment date remains the rule, as described above. 

			Note on deferral of full date sorting functionality to R4 (Dec 2012): due to the discovery on cert for R3.5 that date sorting will require
			all dates in CaseBase tables to contain dates with two digits for the day (ie DD/MM/YYYY), implementation of full date sorting will be
			deferred to R4 to allow conversion to add an extra zero in dates which contain only 1 digit for the day. This should not impact date
			sorting as a tie breaking mechanism for R3.5 and R3.5, due to the fact that tie breaking using dates should happen by virtue of the 
			fact that the source data is delivered in reverse chronological date order (see note above).  
		   -->
      </ul>
      <p>Example <targetxml>@negativesortweight</targetxml> values:</p>
      <p>(in these examples two dates are used: 2005-08-31 and 1920-08-31.
        100,000,000-20050831=79949169 and 100,000,000-19200831=80799169)</p>
      <ul>
        <li>Overruled 2005-08-31: 0179949169</li>
        <li>Overruled 1920-08-31: 0180799169</li>
        <li>Considered 2005-08-31: 1779949169</li>
        <li>Considered 1920-08-31: 1780799169</li>
        <li/>
        <li>Dual Annotations (values should have 12 digits):</li>
        <li>Explained / Overruled OR Overruled/ Explained 2005-08-31: 010979949169</li>
        <li>Explained / Overruled OR Overruled/ Explained 1920-08-31: 010980799169</li>
        <li>Considered/ Cited OR Cited/ Considered 2005-08-31: 171979949169</li>
        <li>Considered/ Cited OR Cited/ Considered 1920-08-31: 171980799169</li>
        <li/>
        <li>Triple Annotations (values should have 14 digits):</li>
        <li>Cited/ Disapproved/ Considered 2005-08-31: 03171979949169</li>
        <li/>
        <li>Quadruple (values should have 16 digits):</li>
        <li>Cited/ Disapproved/ Considered/ See 1920-08-31: 0317192180799169</li>
        <li/>
        <li>5 Levels (values should have 18 digits):</li>
        <li>Cited/ Applied/ Approved/ Followed/ See 1920-08-31: 121314192180799169</li>
      </ul>
    </section>
    <section>
      <title>Calculating @positivesortweight</title>
      <p> Value for <targetxml>@positivesortweight</targetxml> attribute is the combination of the
        following values:</p>
      <ul>
        <li> [R] Rank(s) of the value(s) of <sourcexml>cttr:use-group/cttr:use</sourcexml>
          element(s), appended to each other in priority (rank) order followed by an 8 digit integer
          value which is calculated as 100 million minus the decision date in YYYYMMDD format [D]. <ul>
            <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
            <li>01 - Followed</li>
            <li>02 - Applied</li>
            <li>03 - Approved</li>
            <li>04 - Adopted</li>
            <li>05 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
            <li>06 - Overruled</li>
            <li>07 - Not applied</li>
            <li>08 - Disapproved</li>
            <li>09 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>10 - Not followed</li>
            <li>11 - Questioned</li>
            <li>12 - Doubted</li>
            <li>13 - Explained</li>
            <li>14 - Distinguished</li>
            <li>15 - [any other @signal="cautionary" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>16 - Overruled in part</li>
            <li>17 - Considered</li>
            <li>18 - Discussed</li>
            <li>19 - Cited</li>
            <li>20 - Referred to</li>
            <li>21 - See</li>
            <li>22 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>23 - [any other text]</li>
          </ul>
          <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
            cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
            attribute).</note>
        </li>
        <li> [D] Value of attrubutes @year, @month and @day of
            <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format. 
          <note>For
            CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
            For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
          <p>If
            the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
            "100000000".</p>
        </li>
      </ul>
    </section>
    <example>
      <title>Populating sort weight attributes, Example 1 - Source</title>
      <codeblock>

&lt;cttr:annot signal="cautionary"&gt;
  &lt;case:info&gt;
    ...
    &lt;case:courtinfo&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date day="31" month="08" year="1920"&gt;31/8/1920&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
      ...
    &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
  &lt;cttr:use-group&gt;
    &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
    &lt;cttr:use signal="neutral"&gt;Cited&lt;/cttr:use&gt;
  &lt;/cttr:use-group&gt;
  ...
&lt;/cttr:annot&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating sort weight attributes, Example 1 - Target</title>
      <codeblock>

&lt;cttr:refitem&gt;
  &lt;cttr:consideredcase treatment="cautionary"&gt;
    &lt;cttr:caseinfo&gt;
      ...
      &lt;decision:dates&gt;
        &lt;decision:decisiondate day="31" month="08" year="1920"&gt;
          &lt;date-text&gt;31/8/1920&lt;/date-text&gt;
        &lt;/decision:decisiondate&gt;
      &lt;/decision:dates&gt;
    &lt;/cttr:caseinfo&gt;
    &lt;cttr:usagegroup negativesortweight="192080799169" positivesortweight="192080799169"&gt;
      &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Referred to&lt;/text&gt;
      &lt;/cttr:usage&gt;
      &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Cited&lt;/text&gt;
      &lt;/cttr:usage&gt;
    &lt;/cttr:usagegroup&gt;
    ...
&lt;/cttr:refitem&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating sort weight attributes, Example 2 - Source</title>
      <codeblock>

&lt;cttr:annot signal="negative"&gt;
  &lt;case:info&gt;
   ...
   &lt;case:courtinfo&gt;
    &lt;case:dates&gt;
      &lt;case:decisiondate&gt;&lt;date day="25" month="07" year="1955"
      &gt;25/7/1955&lt;/date&gt;&lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
   ...
   &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
  &lt;cttr:use-group&gt;
    &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
    &lt;cttr:use signal="positive"&gt;Applied&lt;/cttr:use&gt;
  &lt;/cttr:use-group&gt;
...
&lt;/cttr:annot&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating sort weight attributes, Example 2 - Target</title>
      <codeblock>

&lt;cttr:refitem&gt;
  &lt;cttr:consideredcase treatment="negative"&gt;
  &lt;cttr:caseinfo&gt;
    ...
    &lt;decision:dates&gt;
    &lt;decision:decisiondate day="25" month="07" year="1955"&gt;
    &lt;date-text&gt;25/7/1955&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;/decision:dates&gt;
  &lt;/cttr:caseinfo&gt;
  &lt;cttr:usagegroup negativesortweight="132080449275" positivesortweight="022080449275"&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
      &lt;text&gt;Referred to&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="positive"&gt;
      &lt;text&gt;Applied&lt;/text&gt;
    &lt;/cttr:usage&gt;
  &lt;/cttr:usagegroup&gt;
  &lt;/cttr:consideredcase&gt;
&lt;/cttr:refitem&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating sort weight attributes, Example 3 - Source</title>
      <codeblock>

&lt;cttr:use-group&gt;
  &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
  &lt;cttr:use signal="positive"&gt;New Annotation Type&lt;/cttr:use&gt;
  &lt;cttr:use signal="new signal"&gt;Applied&lt;/cttr:use&gt;
&lt;/cttr:use-group&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating sort weight attributes, Example 3 - Target</title>
      <codeblock>

&lt;cttr:usagegroup negativesortweight="15202380449275" positivesortweight="05202380449275"&gt;
  &lt;cttr:usage usagetype="neutral"&gt;
    &lt;text&gt;Referred to&lt;/text&gt;
  &lt;/cttr:usage&gt;
  &lt;cttr:usage usagetype="positive"&gt;
    &lt;text&gt;New Annotation Type&lt;/text&gt;
  &lt;/cttr:usage&gt;
  &lt;cttr:usage usagetype="unspecified"&gt;
    &lt;text&gt;Applied&lt;/text&gt;
  &lt;/cttr:usage&gt;
&lt;/cttr:usagegroup&gt;

	</codeblock>
      <p>Notes on Example 3:</p>
      <p> - The negativesortweight value of 15 and positivesortweight value of 05 is used for "New
        Annotation Type", that matches "Other Positive". </p>
      <p> - The cttr:usage/@usagetype="unspecified" is used for the "new signal". </p>
      <p> - The sort value of 23 being is used for "Applied" because it is given with the
        unrecognized "new signal" that matches "Other". </p>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-10-30: <ph id="change_20131030_LxAdv-cttr.usagegroup_AddingSortWeightInformation_brt">Added second XPath for <sourcexml>case:descisiondate</sourcexml>. Paths are different for UK citator documents than originally listed.</ph></p>
      <p>2013-10-16: <ph id="change_20131016_LxAdv-cttr.usagegroup_AddingSortWeightInformation_sp">Further updates per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering"
          document: WebTeams 233689, 233908, and 233912.</ph></p>
      <p>2013-09-18: <ph id="change_20130918_LxAdv-cttr.usagegroup_AddingSortWeightInformation_sp">Updated per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering" document
          amended 22 August 2012: WebTeams 233689, 233908, and 233912.</ph></p>
      <p>2013-09-03: <ph id="change_20130903_raj">Created per WebStar: WebTeam #233689</ph></p>
    </section>
    
  </body>
	</dita:topic>

  <xsl:template match="source_cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->
    
    <!--  Original Target XPath:  cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:usagegroup   -->
    <cttr:priorhist>
      <cttr:histitem>
        <cttr:histdecision>
          <cttr:usagegroup>
            <!-- Create a 8 digit number out of YYYYMMDD values from ctrr:use-group attributes -->
            <xsl:variable name="dateNumber">
              <xsl:for-each select="preceding-sibling::case:info[1]/case:courtinfo/case:dates/case:decisiondate/date">
                <xsl:value-of select="@year"/>
                <xsl:value-of select="@month"/>                
                <xsl:value-of select="@day"/>
              </xsl:for-each>
            </xsl:variable>
            <!-- Check if the created dateNumber only contains digits, otherwise output a zero -->
            <xsl:variable name="sortWeight1">
              <xsl:choose>
                <xsl:when test="string(number($dateNumber)) != 'NaN'">
                  <xsl:value-of select="$dateNumber"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="number(0)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <!-- 100 million minus the dateNumber value -->
            <xsl:variable name="sortWeight">
              <xsl:value-of select="xs:decimal(100000000) - xs:decimal($sortWeight1)"/>
            </xsl:variable>
            <xsl:attribute name="negativesortweight">
              <!-- Collect the digits associated with certain @signal values and output as a a comma separated string -->
              <xsl:variable name="negUsageGroupAttribute">
                <xsl:for-each select="source_cttr:use">
                  <xsl:variable name="signalAttrValue" select="@signal"/>
                  <xsl:variable name="useEleValue" select="lower-case(.)"/>
                  <xsl:choose>
                    <xsl:when test="$signalAttrValue = 'negative'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'overruled'">01</xsl:when>
                        <xsl:when test="$useEleValue = 'disapproved'">02</xsl:when>
                        <xsl:when test="$useEleValue = 'not applied'">03</xsl:when>
                        <xsl:otherwise>04</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'cautionary'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'not followed'">05</xsl:when>
                        <xsl:when test="$useEleValue = 'questioned'">06</xsl:when>
                        <xsl:when test="$useEleValue = 'doubted'">07</xsl:when>
                        <xsl:when test="$useEleValue = 'explained'">08</xsl:when>
                        <xsl:when test="$useEleValue = 'distinguished'">09</xsl:when>
                        <xsl:otherwise>10</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'positive'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'followed'">11</xsl:when>
                        <xsl:when test="$useEleValue = 'applied'">12</xsl:when>
                        <xsl:when test="$useEleValue = 'approved'">13</xsl:when>
                        <xsl:when test="$useEleValue = 'adopted'">14</xsl:when>
                        <xsl:otherwise>15</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'neutral'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'overruled in part'">16</xsl:when>
                        <xsl:when test="$useEleValue = 'considered'">17</xsl:when>
                        <xsl:when test="$useEleValue = 'discussed'">18</xsl:when>
                        <xsl:when test="$useEleValue = 'cited'">19</xsl:when>
                        <xsl:when test="$useEleValue = 'referred to'">20</xsl:when>
                        <xsl:when test="$useEleValue = 'See'">21</xsl:when>
                        <xsl:otherwise>22</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>23</xsl:otherwise>
                  </xsl:choose>
                  <xsl:if test="following-sibling::source_cttr:use"><xsl:text>,</xsl:text></xsl:if>
                </xsl:for-each>
              </xsl:variable>
              <!-- Output each value in comma delimated string.  Concat with value of negSortWeight -->
              <xsl:for-each select="tokenize($negUsageGroupAttribute, ',')">
                <xsl:sort data-type="number"/>
                <xsl:value-of select="."/>                
              </xsl:for-each>
              <xsl:value-of select="$sortWeight"/>
            </xsl:attribute>
            <xsl:attribute name="positivesortweight">
              <!-- Collect the digits associated with certain @signal values and output as a a comma separated string -->
              <xsl:variable name="posUsageGroupAttribute">
                <xsl:for-each select="source_cttr:use">
                  <xsl:variable name="signalAttrValue" select="@signal"/>
                  <xsl:variable name="useEleValue" select="lower-case(.)"/>
                  <xsl:choose>
                    <xsl:when test="$signalAttrValue = 'positive'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'followed'">01</xsl:when>
                        <xsl:when test="$useEleValue = 'applied'">02</xsl:when>
                        <xsl:when test="$useEleValue = 'approved'">03</xsl:when>
                        <xsl:when test="$useEleValue = 'adopted'">04</xsl:when>
                        <xsl:otherwise>05</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'negative'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'overruled'">06</xsl:when>
                        <xsl:when test="$useEleValue = 'not applied'">07</xsl:when>
                        <xsl:when test="$useEleValue = 'disapproved'">08</xsl:when>
                        <xsl:otherwise>9</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'cautionary'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'not followed'">10</xsl:when>
                        <xsl:when test="$useEleValue = 'questioned'">11</xsl:when>
                        <xsl:when test="$useEleValue = 'doubted'">12</xsl:when>
                        <xsl:when test="$useEleValue = 'explained'">13</xsl:when>
                        <xsl:when test="$useEleValue = 'distinguished'">14</xsl:when>
                        <xsl:otherwise>15</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$signalAttrValue = 'neutral'">
                      <xsl:choose>
                        <xsl:when test="$useEleValue = 'overruled in part'">16</xsl:when>
                        <xsl:when test="$useEleValue = 'considered'">17</xsl:when>
                        <xsl:when test="$useEleValue = 'discussed'">18</xsl:when>
                        <xsl:when test="$useEleValue = 'cited'">19</xsl:when>
                        <xsl:when test="$useEleValue = 'referred to'">20</xsl:when>
                        <xsl:when test="$useEleValue = 'See'">21</xsl:when>
                        <xsl:otherwise>22</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>23</xsl:otherwise>
                  </xsl:choose>
                  <xsl:if test="following-sibling::source_cttr:use"><xsl:text>,</xsl:text></xsl:if>
                </xsl:for-each>
              </xsl:variable>
              <!-- Output each value in comma delimated string.  Concat with value of negSortWeight -->
              <xsl:for-each select="tokenize($posUsageGroupAttribute, ',')">
                <xsl:sort data-type="number"/>
                <xsl:value-of select="."/>                
              </xsl:for-each>
              <xsl:value-of select="$sortWeight"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
          </cttr:usagegroup>
        </cttr:histdecision>
      </cttr:histitem>
    </cttr:priorhist>
    
  </xsl:template>
</xsl:stylesheet>