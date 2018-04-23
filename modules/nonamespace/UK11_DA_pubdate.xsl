<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita dig jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_pubdate">
    <title>pubdate and date <lnpid>id-UK11DA-29438</lnpid></title>
    <body>
        <section><p>Mapping of <sourcexml>pubdate/date</sourcexml> is determined by parent element
                and by <sourcexml>pubdate[@display-name]</sourcexml>.</p>
            <p>
                <ul>
                    <li>Parent is <sourcexml>dig:info</sourcexml> - - <ul>
                            <li>
                                <sourcexml>dig:info/pubdate[@display-name="Published
                                    Date"]/date[@day @month @year]</sourcexml> becomes
                                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate[@day
                                    @month @year]/date-text</targetxml>
                            </li>
                            <li>
                                <sourcexml>dig:info/pubdate[@display-name="Issue Date"]/date[@day
                                    @month @year]</sourcexml> becomes
                                    <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate[@day
                                    @month @year]/date-text</targetxml><p><u>Exception:</u> See
                                    special Rule for dpsi 0MCR and 042W, below.</p>
                            </li>
                        </ul>
                    </li>
                    <li>Parent is <sourcexml>jrnl:articleinfo</sourcexml> - - <ul>
                            <li>
                                <sourcexml>dig:info/jrnl:articleinfo/pubdate/date[@day @month
                                    @year]</sourcexml> becomes
                                    <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:dates/pubinfo:issuedate[@day
                                    @month @year]/date-text</targetxml>
                            </li>
                        </ul>
                    </li>
                </ul>
            </p>
        </section>
        <section><p><b><u>Special Rule for dpsi 0MCR and 042W.</u></b></p><p>These two dpsi are
                abstracts of newspaper articles and are new in Sept 2013 delivery. Source does not
                have wrapper <sourcexml>jrnl:articleinfo</sourcexml>. Special rule is required to
                achieve target <targetxml>pubinfo:issuedate</targetxml>. The exception is for "Issue
                Date", only in dpsi 0MCR and 042W, as follows:</p><ul>
                <li><sourcexml>dig:info/pubdate[@display-name="Issue Date"]/date[@day @month
                        @year]</sourcexml> becomes
                        <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:dates/pubinfo:issuedate[@day
                        @month @year]/date-text</targetxml></li>
            </ul></section>

        <pre>
              <b><i>Example 1: <sourcexml>dig:info/pubdate[@display-name="Published Date"]</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;pubdate display-name="Published Date"&gt;
      &lt;date day="14" month="04" year="2008"&gt;14 April 2008&lt;/date&gt;
    &lt;/pubdate&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;doc:metadata&gt;
  &lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:dates&gt;
      &lt;pubinfo:pubdate day="14" month="04" year="2008"&gt;
        &lt;date-text&gt;14 April 2008&lt;/date-text&gt;
      &lt;/pubinfo:pubdate&gt;
    &lt;/pubinfo:dates&gt;
  &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
 
	</pre>
        <pre>
              <b><i>Example 2: <sourcexml>dig:info/pubdate[@display-name="Issue Date"]</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;pubdate display-name="Issue Date"&gt;
      &lt;date day="11" month="02" year="2002"&gt;11 February 2002&lt;/date&gt;
    &lt;/pubdate&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
    &lt;abstract:target&gt;
        &lt;pubinfo:pubinfo&gt;
            &lt;pubinfo:dates&gt;
                &lt;pubinfo:pubdate day="11" month="02" year="2002"&gt;
                    &lt;date-text&gt;11 February 2002&lt;/date-text&gt;
                &lt;/pubinfo:pubdate&gt;
            &lt;/pubinfo:dates&gt;
        &lt;/pubinfo:pubinfo&gt;
    &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
	</pre>
        <pre>
              <b><i>Example 3: <sourcexml>dig:info/pubdate[@display-name="Issue Date"]</sourcexml></i></b>
              <b><u>Special mapping for dpsi 0MCR and 042W</u></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;pubdate display-name="Issue Date"&gt;
      &lt;date day="13" month="10" year="2009"&gt;13 October 2009&lt;/date&gt;
    &lt;/pubdate&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
    &lt;abstract:target&gt;
        &lt;pubinfo:pubinfo&gt;
            &lt;pubinfo:dates&gt;
                &lt;pubinfo:issuedate day="13" month="10" year="2009"&gt;
                    &lt;date-text&gt;13 October 2009&lt;/date-text&gt;
                &lt;/pubinfo:issuedate&gt;
            &lt;/pubinfo:dates&gt;
        &lt;/pubinfo:pubinfo&gt;
    &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
	</pre>
        <pre>
              <b><i>Example 4: <sourcexml>jrnl:articleinfo/pubdate</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
    &lt;dig:info&gt;
        &lt;jrnl:articleinfo&gt;
            &lt;pubdate&gt;
                &lt;date day="25" month="11" year="2005"&gt;25 November 2005&lt;/date&gt;
            &lt;/pubdate&gt;
        &lt;/jrnl:articleinfo&gt;
    &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
    &lt;abstract:target&gt;
        &lt;pubinfo:pubinfo&gt;
            &lt;pubinfo:dates&gt;
                &lt;pubinfo:issuedate day="25" month="11" year="2005"&gt;
                    &lt;date-text&gt;25 November 2005&lt;/date-text&gt;
                &lt;/pubinfo:issuedate&gt;
            &lt;/pubinfo:dates&gt;
        &lt;/pubinfo:pubinfo&gt;
    &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
        </pre>
        <section>
            <title>Changes</title>
            <p>2013-09-17: <ph id="change_20130917_jm">Added exceptional rule for dpsi 0MCR and
                    042W, newspaper article abstracts. Rosetta lacks wrapper
                        <sourcexml>jrnl:articleinfo</sourcexml>. Special rule is required to achieve
                    target <targetxml>pubinfo:issuedate</targetxml>. The two dpsi are new in Sept
                    2013 delivery, as noted in WebTeam # 233402.</ph></p>
            <p>2013-04-08: <ph id="change_20130408_jm">Abstract schema allows
                        <targetxml>abstract:target/pubinfo:pubinfo</targetxml>. Removed all
                    references to pending CR.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_pubdate.dita  -->

    <!--Vikas Rohilla : Template to match the pubdate and creates the pubinfo:dates/pubinfo:pubdate -->
    <xsl:template match="pubdate[@display-name='Issue Date']">
        <pubinfo:dates>
            <pubinfo:pubdate>
                <xsl:apply-templates select="date/@*"/>
                <xsl:apply-templates select="@* | node()"/>    
            </pubinfo:pubdate>
        </pubinfo:dates>
        <xsl:apply-templates select="parent::dig:info/contrib[@contribtype='issuing-department']" mode="issue-dept"/>
    </xsl:template>
	
    <xsl:template match="pubdate[@display-name='Published Date']">
        <pubinfo:dates>
            <pubinfo:pubdate>
                <xsl:apply-templates select="date/@*"/>
                <xsl:apply-templates select="@* | node()"/>
            </pubinfo:pubdate>
        </pubinfo:dates>
    </xsl:template>
        
	<xsl:template match="date/@day">
	    <xsl:attribute name="day">
	        <xsl:value-of select="number(.)"/>
	    </xsl:attribute>
	</xsl:template>

    <xsl:template match="date/@month">
        <xsl:attribute name="month">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="date/@year">
        <xsl:attribute name="year">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
	<xsl:template match="pubdate/@display-name"/>

</xsl:stylesheet>