<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
  <title>catchwordgrp <lnpid>id-CA02CC-12433</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
                    <sourcexml>catchwordgrp</sourcexml> omit tag and retain content. <ul>
                        <li>
                            <sourcexml>catchwords</sourcexml> becomes
                                <targetxml>casedigest:body/casedigest:caseinfo/classify:classification</targetxml>
                            and comes with <targetxml>@classscheme="catchwords"</targetxml>
                            <ul>
                                <li>
                                    <sourcexml>catchphrase</sourcexml> becomes
                                        <targetxml>classify:classification/classify:classitem</targetxml>
                                    <ul>
                                        <li>Create
                                                <targetxml>classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                                            <ul>
                                                <li>Create
                                                  <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <note>Each instance of <sourcexml>catchwords</sourcexml> should be converted to
                        its own
                            <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
                        element.</note>
                    <note>Conversion should not create adjacent
                            <targetxml>caseinfo:caseinfo</targetxml>, data should be merged into
                        single element <targetxml>caseinfo:caseinfo</targetxml>.</note>
                    <pre>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Commercial law&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Business of borrowing money for acquisition of mortgages and interests in
            land&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Trading in promissory notes&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether subject to The Securities Act --Order of Securities Commission removing
            exemption&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether sections of The Securities Act dealing with promissory notes ultra
            vires Provincial Legislature&lt;/catchphrase&gt;
        &lt;catchphrase&gt;The Securities Act, S.S 1954, c. 89, s. 20(2), (3)&lt;/catchphrase&gt;
        &lt;catchphrase&gt;B.N.A. Act, 1867, s. 91.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Commercial law&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Business of borrowing money for acquisition of mortgages and
                interests in land&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether subject to The Securities Act --Order of Securities
                Commission removing exemption&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether sections of The Securities Act dealing with promissory notes
                ultra vires Provincial Legislature&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;The Securities Act, S.S 1954, c. 89, s. 20(2),
                (3)&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;B.N.A. Act, 1867, s. 91.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </pre><note>Handling of a special scenario occurred within
                            <sourcexml>catchwordgrp</sourcexml> which contains
                            <sourcexml>heading/title</sourcexml> along with value
                            <sourcexml>"Catchwords:" ONLY</sourcexml>. In this scenario, if element
                            <sourcexml>heading/title</sourcexml> contains only
                            <sourcexml>"Catchwords:"</sourcexml>, then conversion will suppress it
                        and rest conversion will be same for <sourcexml>catchwordgrp</sourcexml> as
                        given above.</note> For more details please see below input and output
                    examples. <pre>

&lt;catchwordgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Catchwords:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Labour relations&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Pension plan&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Jurisdiction of grievance arbitrator&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements referring expressly to pension plan
            established by university&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Motion for authorization to institute class action filed in
            Superior Court by unionized employee disagreeing with decisions made by
            university respecting administration and use of pension fund&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Majority of members of class action group covered by one of
            collective agreements between university and unions&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether this dispute relating to pension plan within jurisdiction
            of Superior Court or of grievance arbitrator.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
                
            </pre>
                    <b>Becomes</b>
                    <pre>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Labour relations&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Pension plan&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Jurisdiction of grievance arbitrator&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements referring expressly to pension plan
                established by university&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Motion for authorization to institute class action filed in
                Superior Court by unionized employee disagreeing with decisions made by
                university respecting administration and use of pension fund&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Majority of members of class action group covered by one of
                collective agreements between university and unions&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether this dispute relating to pension plan within jurisdiction
                of Superior Court or of grievance arbitrator.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
                
            </pre>
                   <!-- <note><b>Exception Scenario for CA02-CC:</b> If there is a scenario where
                        ordering of <sourcexml>catchwordgrp</sourcexml> and
                            <sourcexml>case:decisionsummary</sourcexml> comes one after the other.
                        Then mapping for <sourcexml>catchwordgrp</sourcexml> will be :
                            <sourcexml>catchwordgrp</sourcexml> omit tag and retain content.
                            <sourcexml>catchwords</sourcexml> becomes
                            <targetxml>casedigest:body/casedigest:caseinfo/classify:classification</targetxml>
                        and comes with <targetxml>@classscheme="catchwords"</targetxml>. Rest of the
                        mapping will be same as above. This is to maintain the flow of data. For
                        more details please refer the example below:</note> --> 
            
            <b>Example when <sourcexml>catchwordgrp</sourcexml> and <sourcexml>case:decisionsummary</sourcexml> comes one after the other. </b>
                    <pre>
&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Construction law&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Building contracts&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Breach by contractor or subcontractor&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Defendants/plaintiffs by counterclaim entitled to recover the sum
            of $14,445 less $4,242, being the difference between the amount of the loss
            and the unpaid portion of the contract, capped at $7,500 under the statute,
            for plaintiff's/defendant by counterclaim failure to build an addition to
            the required standard&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Court of Queen's Bench Small Claims Practices Act.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;A contractor who sued homeowners for the unpaid balance of a contract to
            build an addition to their home was instead ordered to pay the homeowners
            due to the work being below the required standard. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Appeal under the Court of Queen's Bench Small Claims Practices Act
            for determination as to the calculation of damages&lt;/catchphrase&gt;
        &lt;catchphrase&gt;One of the primary issues was whether the defendants' entitlement
            to damages was to be calculated by deducting the unpaid balance of the
            contract price from the full amount of damages suffered by the defendants or
            from the statutory cap of $7,500&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Plaintiff was a contractor hired by the defendants under written
            agreement to build an addition to the defendants' home&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Unpaid balance under the contract was $4,000&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Plaintiff filed a claim for that sum and $637 for
            extras&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Defendants disputed the claim and filed counterclaim for
            $7,500&lt;/catchphrase&gt;
        &lt;catchphrase&gt;At conclusion of defendants' case, plaintiff acknowledged liability
            to the defendants for damages for breach of contract in that he failed to
            build the addition to the required standard&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Plaintiff disputed the amount of damages and the position of the
            defendants as to how the set-off or counterclaim was to be given
            effect&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Plaintiff argued that damages should be assessed based on the cost
            of building a new stud-bearing wall inside the exterior wall of the
            addition&lt;/catchphrase&gt;
        &lt;catchphrase&gt;However, there was no evidence as to cost and no evidence that that
            was a satisfactory solution&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Defendants led evidence that he would charge $14,445 to perform
            work prescribed by an engineer&lt;/catchphrase&gt;
        &lt;catchphrase&gt;HELD: Plaintiff's claim was dismissed&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Defendants were entitled to recover the sum of $14,445 less $4,242,
            being the difference between the amount of the loss and the unpaid portion
            of the contract, capped at $7,500 under the statute.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;Note: This digest also was reported in the Butterworths Construction
            NetLetter, Issue 27, February 15, 2006. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;                
            </pre>
                    <b>Becomes</b>
                    <pre>
&lt;casedigest:body&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;classify:classification classscheme="catchwords"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Construction law&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Building contracts&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Breach by contractor or
                        subcontractor&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Defendants/plaintiffs by counterclaim entitled to
                        recover the sum of $14,445 less $4,242, being the difference between the
                        amount of the loss and the unpaid portion of the contract, capped at
                        $7,500 under the statute, for plaintiff's/defendant by counterclaim
                        failure to build an addition to the required
                        standard&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Court of Queen's Bench Small Claims Practices
                        Act.&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/casedigest:caseinfo&gt;
    &lt;casedigest:decision&gt;
        &lt;casedigest:decisionsummary&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;A contractor who sued homeowners for the unpaid balance of a contract
                        to build an addition to their home was instead ordered to pay the
                        homeowners due to the work being below the required standard. &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/casedigest:decisionsummary&gt;
    &lt;/casedigest:decision&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;classify:classification classscheme="catchwords"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Appeal under the Court of Queen's Bench Small Claims
                        Practices Act for determination as to the calculation of
                        damages&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;One of the primary issues was whether the defendants'
                        entitlement to damages was to be calculated by deducting the unpaid
                        balance of the contract price from the full amount of damages suffered
                        by the defendants or from the statutory cap of
                        $7,500&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Plaintiff was a contractor hired by the defendants under
                        written agreement to build an addition to the defendants'
                        home&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Unpaid balance under the contract was
                        $4,000&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Plaintiff filed a claim for that sum and $637 for
                        extras&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Defendants disputed the claim and filed counterclaim for
                        $7,500&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;At conclusion of defendants' case, plaintiff
                        acknowledged liability to the defendants for damages for breach of
                        contract in that he failed to build the addition to the required
                        standard&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Plaintiff disputed the amount of damages and the
                        position of the defendants as to how the set-off or counterclaim was to
                        be given effect&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Plaintiff argued that damages should be assessed based
                        on the cost of building a new stud-bearing wall inside the exterior wall
                        of the addition&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;However, there was no evidence as to cost and no
                        evidence that that was a satisfactory solution&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Defendants led evidence that he would charge $14,445 to
                        perform work prescribed by an engineer&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;HELD: Plaintiff's claim was
                        dismissed&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Defendants were entitled to recover the sum of $14,445
                        less $4,242, being the difference between the amount of the loss and the
                        unpaid portion of the contract, capped at $7,500 under the
                        statute.&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/casedigest:caseinfo&gt;
    &lt;casedigest:decision&gt;
        &lt;casedigest:decisionsummary&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Note: This digest also was reported in the Butterworths Construction
                        NetLetter, Issue 27, February 15, 2006. &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/casedigest:decisionsummary&gt;
    &lt;/casedigest:decision&gt;
&lt;/casedigest:body&gt;                
            </pre>
                </li>
      </ul>
    </section>
      <section>
          <title>Changes</title>
          <p>2014-07-23: <ph id="change_20140723_AS">Mapping of Catchwordgrp in casedigest:body. Db issue #258</ph></p>
          <!-- <p>2014-07-16: <ph id="change_20140716_AS">Resolution to maintain order of Catchword and Summary Content. Db issue #258</ph></p> --> 
      </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\catchwordgrp.dita  -->

<!-- Sudhanshu Srivastava edited on 16-May-2017. -->
	<xsl:template match="catchwordgrp">
		<!--  Original Target XPath:  casedigest:body/casedigest:caseinfo/classify:classification   -->
	    <casedigest:caseinfo>			
	    <xsl:apply-templates select="@* | node()"/>
	    </casedigest:caseinfo>
	</xsl:template>

	<xsl:template match="catchwords">
		<!--  Original Target XPath:  casedigest:body/casedigest:caseinfo/classify:classification   -->
				<classify:classification>
				    <xsl:attribute name="classscheme">
				        <xsl:text>catchwords</xsl:text>
				    </xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>
	</xsl:template>

	<xsl:template match="catchphrase">
		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
			<classify:classitem>
			    <classify:classitem-identifier>
			        <classify:classname>
				<xsl:apply-templates select="@* | node()"/>
			        </classify:classname>
			    </classify:classitem-identifier>
			</classify:classitem>
	</xsl:template>
</xsl:stylesheet>