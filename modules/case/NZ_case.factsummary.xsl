<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.factsummary">
		<title>NZ-case:factsummary <lnpid>id-NZ18-26010</lnpid></title>
		<body>
			<p>
				<ul>
					<li>
						<p><b>The following conversion instruction is specific to NZ
								CourtOrders:</b></p>
						<sourcexml>case:headnote/case:factsummary</sourcexml> becomes
							<targetxml>courtorder:body/section</targetxml>. The children are
						described below: <ul>
							<li>
								<sourcexml>case:headnote/case:factsummary/p</sourcexml> becomes
									<targetxml>courtorder:body/section/bodytext/p</targetxml>. The
								children are described below: <ul>
									<li>
										<sourcexml>case:headnote/case:factsummary/p/text</sourcexml>
										becomes
											<targetxml>courtorder:body/section/bodytext/p/text</targetxml>.
										The children are described below: <ul>
											<li>
												<sourcexml>case:headnote/case:factsummary/p/text/link</sourcexml>
												becomes
													<targetxml>courtorder:body/section/bodytext/p/text/ref:lnlink</targetxml>
												with <targetxml>ref:marker</targetxml> as optional child
												and <targetxml>ref:locator @anchoridref=""</targetxml>
												as a required
														child.<note><targetxml>ref:locator/@anchoridref</targetxml>
													that begins with a number must have an underscore
													added at the start. Also apply other identifier data
													type formatting as used for
														<targetxml>xml:id</targetxml> and
														<targetxml>ref:anchor/@id</targetxml>, e.g. change
													colon to underscore.</note></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<pre>

&lt;case:headnote&gt;
    &lt;case:factsummary&gt;
        &lt;p indent="none"&gt;
            &lt;text&gt;The Court of Appeal issued guidance to practitioners on applications forleave to appeal from pretrial rulings under s379A of the CrimesAct1961.The instructions as to procedures for the filing of suchapplications at paras[
                &lt;link refpt="20082NZLR_218_p32"&gt;32&lt;/link&gt;][
                &lt;link refpt="20082NZLR_218_p45"&gt;45&lt;/link&gt;] 
inclusive have been superseded bythe Court of Appeal (Criminal) Amendment Rules2008, which cameinto force on 17April2008.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:factsummary&gt;
&lt;/case:headnote&gt;
<b>Becomes</b>

&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;The Court of Appeal issued guidance to practitioners on applications forleave to appeal from pretrial rulings under s379A of the CrimesAct1961. The instructions as to procedures for the filing of suchapplications at paras[
                    &lt;ref:lnlink&gt;
                        &lt;ref:marker&gt;32&lt;/ref:marker&gt;
                        &lt;ref:locator @anchoridref="20082NZLR_218_p32"/&gt;
                    &lt;/ref:lnlink&gt;
                    ][
                    &lt;ref:lnlink&gt;
                        &lt;ref:marker&gt;45]&lt;/ref:marker&gt;
                        &lt;ref:locator @anchoridref="20082NZLR_218_p45"/&gt;
                    &lt;/ref:lnlink&gt;
inclusive have been superseded bythe Court of Appeal (Criminal) Amendment Rules2008, which cameinto force on 17April2008.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;         
&lt;/courtorder:body&gt;                
</pre>
						<ul>
							<li>
								<sourcexml>case:headnote/case:factsummary/l</sourcexml> becomes
									<targetxml>courtorder:body/section/bodytext/list</targetxml>.
								The children are described below: <ul>
									<li>
										<sourcexml>case:headnote/case:factsummary/l/li</sourcexml>
										becomes
											<targetxml>courtorder:body/section/bodytext/list/listitem</targetxml>.
										The children are described below: <ul>
											<li>
												<sourcexml>case:headnote/case:factsummary/l/li/lilabel</sourcexml>
												becomes
													<targetxml>courtorder:body/section/bodytext/list/listitem/label</targetxml>. </li>
											<li>
												<sourcexml>case:headnote/case:factsummary/l/li/p</sourcexml>
												becomes
													<targetxml>courtorder:body/section/bodytext/list/listitem/bodytext/p</targetxml>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<pre>
                        
&lt;case:headnote&gt;
    &lt;case:factsummary&gt;
        &lt;l&gt;
            &lt;li&gt;
                &lt;lilabel&gt;2.&lt;/lilabel&gt;
                &lt;p&gt;
                    &lt;text&gt;This Practice Note is to take effect from 2 October 1995 and is made in the exercise of the power to give directions contained in s 24D of the Judicature Act 1908. Under this section, a Commercial List Judge may from time to time give such directions as thought fit for the speedy and inexpensive determination of the real questions between parties in proceedings in a Commercial List. Such directions may be made notwithstanding any provision in the High Court Rules.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/li&gt;
        &lt;/l&gt;
    &lt;/case:factsummary&gt;
&lt;/case:headnote&gt;

<b>Becomes</b>

&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt;2.&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;This Practice Note is to take effect from 2 October 1995 and is made in the exercise of the power to give directions contained in s 24D of the Judicature Act 1908. Under this section, a Commercial List Judge may from time to time give such directions as thought fit for the speedy and inexpensive determination of the real questions between parties in proceedings in a Commercial List. Such directions may be made notwithstanding any provision in the High Court Rules.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;         
&lt;/courtorder:body&gt;

                    </pre>
						<ul>
							<li>
								<sourcexml>case:headnote/case:factsummary/h</sourcexml> becomes
									<targetxml>courtorder:body/section/bodytext/h</targetxml>.
							</li>
						</ul>
						<pre>
                        
&lt;case:headnote&gt;
    &lt;case:factsummary&gt;
        &lt;h&gt;
            &lt;emph typestyle="it"&gt;Commencement in and transfer to and from the Commercial Division&lt;/emph&gt;
        &lt;/h&gt;
    &lt;/case:factsummary&gt;
&lt;/case:headnote&gt;

<b>Becomes</b>

&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;h&gt;
                &lt;emph typestyle="it"&gt;Commencement in and transfer to and from the Commercial Division&lt;/emph&gt;
            &lt;/h&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;         
&lt;/courtorder:body&gt;

                    </pre>
						<ul>
							<li>
								<sourcexml>case:headnote/case:factsummary/blockquote</sourcexml>
								becomes
									<targetxml>courtorder:body/section/bodytext/blockquote</targetxml>.
							</li>
						</ul>
						<pre>
                        
&lt;case:headnote&gt;
    &lt;case:factsummary&gt;
        &lt;blockquote&gt;
            &lt;p&gt;
                &lt;text&gt;"The usual default order provision in cl 5 has not proved to be necessary or successful. Because the Court can and will enforce compliance with its orders with all appropriate sanctions, there is no longer any need for a form of usual default order which is accordingly deleted from the Practice Note. Counsel are reminded, however, that the Court will be increasingly vigilant when enforcing timetable orders. Defaults by parties in complying with timetable orders without proper excuse will not be favourably received. The existing cl 5 is therefore revoked."&lt;/text&gt;
            &lt;/p&gt;
        &lt;/blockquote&gt;
    &lt;/case:factsummary&gt;
&lt;/case:headnote&gt;

<b>Becomes</b>

&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;blockquote&gt;
                &lt;p&gt;
                    &lt;text&gt;"The usual default order provision in cl 5 has not proved to be necessary or successful. Because the Court can and will enforce compliance with its orders with all appropriate sanctions, there is no longer any need for a form of usual default order which is accordingly deleted from the Practice Note. Counsel are reminded, however, that the Court will be increasingly vigilant when enforcing timetable orders. Defaults by parties in complying with timetable orders without proper excuse will not be favourably received. The existing cl 5 is therefore revoked."&lt;/text&gt;
                &lt;/p&gt;
            &lt;/blockquote&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;         
&lt;/courtorder:body&gt;

                    </pre>
					</li>
				</ul>
			</p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ18_courtorder\NZ_case.factsummary.dita  -->

	<xsl:template match="case:headnote/case:factsummary">
		<!--  Original Target XPath:  courtorder:body/section   -->
			<section>
				<xsl:apply-templates select="@* | node()"/>
			</section>
	</xsl:template>

	<xsl:template match="case:headnote/case:factsummary/p">
		<!--  Original Target XPath:  courtorder:body/section/bodytext/p   -->
				<bodytext>
					<p>
						<xsl:apply-templates select="@* | node()"/>
					</p>
				</bodytext>
	</xsl:template>

</xsl:stylesheet>
