<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.factsummary">
  <title>case:factsummary <lnpid>id-UK02-27219</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:factsummary</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">/compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:editorialsummary</targetxml>.
      </p>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:factsummary&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;A local authority made a compulsory purchase order under the Housing
                Act 1925, s 64, in respect of certain land required for housing. A
                public local inquiry was held. Shortly afterwards and before the
                confirmation of the order a deputation from the local authority visited
                the Minister of Health to discuss generally the provision of houses in
                their district under the Housing Act 1935. The visit had been arranged
                before the public local inquiry and had no reference to the
                subject-matter of the inquiry. On an application to quash the compulsory
                purchase order, Swift J held that the Minister, while acting in a 
                &lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial capacity ought not to have had
                an interview with one party without hearing the other party, and he
                quashed the order. The Minister of Health appealed:&amp;#x2014;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:factsummary&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;casesum:summaries&gt;
    &lt;casesum:editorialsummary&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;A local authority made a compulsory purchase order under the Housing
                    Act 1925, s 64, in respect of certain land required for housing. A
                    public local inquiry was held. Shortly afterwards and before the
                    confirmation of the order a deputation from the local authority visited
                    the Minister of Health to discuss generally the provision of houses in
                    their district under the Housing Act 1935. The visit had been arranged
                    before the public local inquiry and had no reference to the
                    subject-matter of the inquiry. On an application to quash the compulsory
                    purchase order, Swift J held that the Minister, while acting in a 
                    &lt;emph typestyle="it"&gt;quasi&lt;/emph&gt;-judicial capacity ought not to have had
                    an interview with one party without hearing the other party, and he
                    quashed the order. The Minister of Health appealed:&amp;#x2014;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/casesum:editorialsummary&gt;
&lt;/casesum:summaries&gt;

      </codeblock>
    </example>
    
    <section>
      <p>If <sourcexml class="+ topic/keyword xml-d/sourcexml ">l</sourcexml> occurs within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:factsummary</sourcexml> 
        then corresponding elements <targetxml class="+ topic/keyword xml-d/targetxml ">list</targetxml> should occur within
        <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml> under <targetxml class="+ topic/keyword xml-d/targetxml ">casesum:editorialsummary</targetxml> 
        i.e, <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:factsummary/l</sourcexml> will become 
        <targetxml class="+ topic/keyword xml-d/targetxml ">casesum:editorialsummary/p/list</targetxml>
      </p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:factsummary&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt; &lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;(a)     As to the quality of the coordination drawings in relation
                    to the mechanical engineering services (The M &amp;amp; E
                    claims).&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt; &lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;(b)     As to the advice given or not given in respect to the
                    decision to instruct Taylor Woodrow to lay material called hydrotite
                    over the power-floated concrete floors (The hydrotite
                    claims).&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:factsummary&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;casesum:summaries&gt;
    &lt;casesum:editorialsummary&gt;
        &lt;p&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt; &lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;(a)     As to the quality of the coordination drawings in relation
                                to the mechanical engineering services (The M &amp;amp; E
                                claims).&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
                &lt;listitem&gt;
                    &lt;label&gt; &lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;(b)     As to the advice given or not given in respect to the
                                decision to instruct Taylor Woodrow to lay material called hydrotite
                                over the power-floated concrete floors (The hydrotite
                                claims).&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/p&gt;
    &lt;/casesum:editorialsummary&gt;
&lt;/casesum:summaries&gt;

      </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.factsummary.dita  -->

  <xsl:template match="case:factsummary[not(node())]"/>

	<xsl:template match="case:factsummary[node()]">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:editorialsummary   -->
		<casesum:editorialsummary>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:editorialsummary>
	</xsl:template>

	<xsl:template match="case:factsummary/l">
		<!--  Original Target XPath:  list   -->
		<p>
			<list>
				<xsl:apply-templates select="@* | node()"/>
			</list>
		</p>
	</xsl:template>

</xsl:stylesheet>