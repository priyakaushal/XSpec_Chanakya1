<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK12_case.dates"> <title>case:dates <lnpid>id-UK12-29834</lnpid> </title>
		<body>
			<section>
				<ul>
					<li class="- topic/li ">
						<sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml "
							>decision:dates</targetxml>
						
						<ul class="- topic/ul ">
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
								becomes <targetxml class="+ topic/keyword xml-d/targetxml "
									>decision:dates/decision:argueddate</targetxml>              
							</li>
							<li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml "
								>date-text</targetxml> for capturing the PCDATA of <sourcexml
									class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
							</li>
							
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate</sourcexml>
								becomes <targetxml class="+ topic/keyword xml-d/targetxml "
									>decision:dates/decision:decisiondate</targetxml> populated with below mentioned
								children and attributes: <ul>
									<li>The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
										populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
										<sourcexml>case:decisiondate/date/@month</sourcexml> and
										<sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by
										a single hyphen. The values of
										<sourcexml>case:decisiondate/date/@month</sourcexml> and
										<sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
										so that they are 2 digits. <note>If one or more of the three date values (year,
											month or day) are absent, then
											<targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
											populated.</note></li>
									<li><sourcexml>case:decisiondate/date/@day</sourcexml> becomes
										<targetxml>decision:decisiondate/@day</targetxml>.</li>
									<li><sourcexml>case:decisiondate/date/@month</sourcexml> becomes
										<targetxml>decision:decisiondate/@month</targetxml>.</li>
									<li><sourcexml>case:decisiondate/date/@year</sourcexml> becomes
										<targetxml>decision:decisiondate/@year</targetxml>.</li>
								</ul>
								<ul class="- topic/ul ">
									<li class="- topic/li ">
										<sourcexml class="+ topic/keyword xml-d/sourcexml "
											>case:decisiondate/date</sourcexml> becomes <targetxml
												class="+ topic/keyword xml-d/targetxml "
												>decision:dates/decision:decisiondate/date-text</targetxml>
									</li>
								</ul>
								
								
								<pre xml:space="preserve" class="- topic/pre ">
<![CDATA[
<case:dates>
    <case:hearingdates>23 February;</case:hearingdates>
    <case:decisiondate>
        <date day="16" month="05" year="1995">16 May 1995</date>
    </case:decisiondate>
    <case:fileddate>
          <emph typestyle="it">Judgment received 16/05/1995 </emph></case:fileddate>
</case:dates>
]]>


<b class="+ topic/ph hi-d/b ">Becomes</b>

<![CDATA[
<decision:dates>
    <decision:argueddate>
        <date-text>23 February;</date-text>
    </decision:argueddate>
</decision:dates>
<decision:dates>
     <decision:decisiondate day="16" month="05" year="1995" normdate="1995-05-16">
         <date-text>16 May 1995</date-text>
     </decision:decisiondate>
     <decision:fileddate day="16" month="05" year="1995">
        Judgment received <date-text>16/05/1995</date-text></decision:fileddate>
</decision:dates>
]]>

              </pre>
							</li>
							
						</ul>
						<note class="- topic/note ">The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for
							normalization, but the element content should remain the same.</note>
					</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>  
				<p>2017-04-21: <ph id="change_20170421_RS">Created. VSTS Issue 272255</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_case.dates.dita -->
<!--	<xsl:message>UK12_case.dates.xsl requires manual development!</xsl:message> -->
	
	<!--Vikas Rohilla : Created the template -->
	<xsl:template match="case:dates">
		<decision:dates>
			<xsl:apply-templates select="@*|node()"/>
		</decision:dates>
	</xsl:template>
	
	<xsl:template match="case:decisiondate">
		<decision:decisiondate>
			<xsl:if test="date/@*!=''">
				<xsl:attribute name="normdate">
					<xsl:value-of select="concat(date/@year,'-',date/@month,'-',date/@day)"/>
				</xsl:attribute>	
			</xsl:if>
			<xsl:apply-templates select="@*|date/@*,node()"/>
		</decision:decisiondate>
	</xsl:template>
	
	<xsl:template match="case:hearingdates">
		<decision:argueddate>
			<xsl:apply-templates select="@*|date/@*,node()"/>
		</decision:argueddate>
	</xsl:template>
	
	
	
	

</xsl:stylesheet>
