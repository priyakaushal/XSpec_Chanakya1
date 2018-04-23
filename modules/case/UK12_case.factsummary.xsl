<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK12_case.factsummary"> 
		<title>case:factsummary <lnpid>id-UK12-29836</lnpid> </title>
		<body>
			<section>
				<p>
					<sourcexml>case:headnote/case:factsummary/</sourcexml> becomes 
					<targetxml>courtcase:head/casesum:summaries/casesum:editorialsummary</targetxml>. The children can be converted as follows:
					<ul>
						<li>
							<sourcexml>case:factsummary/p</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/p</targetxml>.
							<pre>
<![CDATA[
 
     <case:embeddedcase>
          <case:headnote>
            <case:factsummary>
              <p>
                <text>William Wilson (W) began working for the respondent company as
                    a relief area manager in May 2001. His terms of employment were
                    set out in a “statement of terms and conditions of employment”
                    which was expressly said to include the particulars required to
                    be given under the Employment Rights Act.
                </text>
              </p>
            </case:factsummary>
          </case:headnote>
        </case:embeddedcase>
   
]]>
<b>Becomes</b>
<![CDATA[
 
     <courtcase:caseexcerpt>
          <courtcase:head>
            <casesum:summaries>
              <casesum:editorialsummary>
                <p>
                  <text>William Wilson (W) began working for the respondent company as
                    a relief area manager in May 2001. His terms of employment were
                    set out in a “statement of terms and conditions of employment”
                    which was expressly said to include the particulars required to
                    be given under the Employment Rights Act.
                  </text>
                </p>
              </casesum:editorialsummary>
            </casesum:summaries>
          </courtcase:head>
     </courtcase:caseexcerpt>
    ]]>
</pre>            
							
						</li>
						<li>
							<sourcexml>case:factsummary/h</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/h</targetxml>.
							<pre>
<![CDATA[
        <case:embeddedcase>
          <case:headnote>
            <case:factsummary>
              <h>
                <emph typestyle="bf">Adults under disability</emph>
              </h>
            </case:factsummary>
          </case:headnote>
        </case:embeddedcase>
      
]]>
<b>Becomes</b>
<![CDATA[
        <courtcase:caseexcerpt>
          <courtcase:head>
            <casesum:summaries>
              <casesum:editorialsummary>
                <h>
                  <emph typestyle="bf">Adults under disability</emph>
                </h>
              </casesum:editorialsummary>
            </casesum:summaries>
          </courtcase:head>
        </courtcase:caseexcerpt>
      ]]>
</pre>            
							
						</li>
						<li>
							<sourcexml>case:factsummary/l</sourcexml> becomes
							<targetxml>casesum:summaries/casesum:editorialsummary/p/list</targetxml>.  <note>If
								<sourcexml>l</sourcexml> occurs within <sourcexml>case:factsummary</sourcexml> then
								corresponding element <targetxml>list</targetxml> should occur within
								<targetxml>p</targetxml> under <targetxml>casesum:editorialsummary</targetxml> i.e,
								<sourcexml>case:factsummary/l</sourcexml> becomes
								<targetxml>casesum:editorialsummary/p/list</targetxml>.</note>
							<pre>
<![CDATA[
        <case:embeddedcase>
          <case:headnote>
            <case:factsummary>
              <l>
                <li>
                  <lilabel> </lilabel>
                  <p>
                    <text>Under Children Act proceedings applicants should seek
                        an order in the following form:
                    </text>
                  </p>
                </li>
              </l>
            </case:factsummary>
          </case:headnote>
        </case:embeddedcase>
      
]]>
<b>Becomes</b>
<![CDATA[
        <courtcase:caseexcerpt>
          <courtcase:head>
            <casesum:summaries>
              <casesum:editorialsummary>
                <p>
                  <list>
                    <listitem>
                      <label></label>
                      <p>
                        <text>Under Children Act proceedings applicants should seek
                              an order in the following form:
                        </text>
                      </p>
                    </listitem>
                  </list>
                </p>
              </casesum:editorialsummary>
            </casesum:summaries>
          </courtcase:head>
        </courtcase:caseexcerpt>
      ]]>
</pre>
						</li>
						<li>
							<sourcexml>case:factsummary/blockquote</sourcexml> becomes
							<targetxml>casesum:summaries/casesum:editorialsummary/blockquote</targetxml>. <pre>
<![CDATA[
        <case:embeddedcase>
          <case:headnote>
            <case:factsummary>
             <blockquote>
              <p>
                <text>&#x201c;Is there an unlawful restriction on
                    intra-Community trade for the purposes of Articles 30 and 36
                    of the EEC Treaty if a subsidiary trading in Member State A
                    of an automobile manufacturer established in Member State B
                    is prohibited from using as a mark in Member State A the
                    designation 'Quadra', which the manufacturer has hitherto
                    used without restriction for a four-wheel drive motor
                    vehicle, both in its own State and elsewhere, on the grounds
                    that another automobile manufacturer in Member State A
                    claims &#x2013; validly under the internal law of Member
                    State A &#x2013; a trade mark right in the word
                    'Quattro' even though that word denotes a numeral in another
                    Member State and that meaning is clearly discernible in yet
                    other Member States, and even though the number 4 thereby
                    designated plays a significant and varied role in automobile
                    manufacturing and the automobile trade?&#x201d;
                </text>
              </p>
             </blockquote>
            </case:factsummary>
          </case:headnote>
        </case:embeddedcase>
      
]]>
<b>Becomes</b>
<![CDATA[
        <courtcase:caseexcerpt>
          <courtcase:head>
            <casesum:summaries>
              <casesum:editorialsummary>
                <blockquote>
                  <p>
                    <text>&#x201c;Is there an unlawful restriction on
                      intra-Community trade for the purposes of Articles 30 and 36
                      of the EEC Treaty if a subsidiary trading in Member State A
                      of an automobile manufacturer established in Member State B
                      is prohibited from using as a mark in Member State A the
                      designation 'Quadra', which the manufacturer has hitherto
                      used without restriction for a four-wheel drive motor
                      vehicle, both in its own State and elsewhere, on the grounds
                      that another automobile manufacturer in Member State A
                      claims &#x2013; validly under the internal law of Member
                      State A &#x2013; a trade mark right in the word
                      'Quattro' even though that word denotes a numeral in another
                      Member State and that meaning is clearly discernible in yet
                      other Member States, and even though the number 4 thereby
                      designated plays a significant and varied role in automobile
                      manufacturing and the automobile trade?&#x201d;
                    </text>
                  </p>
                </blockquote>
              </casesum:editorialsummary>
            </casesum:summaries>
          </courtcase:head>
        </courtcase:caseexcerpt>]]>
</pre>
						</li>
						
					</ul>
				</p>
			</section>
			
			<section>
				<title>Changes</title>
				<p>2017-04-21: <ph id="change_20170421_RS">Created. VSTS Issue 272255</ph></p>   
			</section>
		</body>
		
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_case.factsummary.dita -->
<!--	<xsl:message>UK12_case.factsummary.xsl requires manual development!</xsl:message> -->
	
  <xsl:template match="case:factsummary">
    <casesum:summaries>
      <casesum:editorialsummary>
        <xsl:apply-templates select="@*|node()"/>
      </casesum:editorialsummary>
    </casesum:summaries>
  </xsl:template>
	
	


	

</xsl:stylesheet>
