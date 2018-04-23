<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.appendix-LxAdv_attachments_appendix">
		<title>case:appendix <lnpid>id-UK01-27016</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/mapping"/>
			<example>
				<codeblock> &lt;case:appendix&gt; &lt;p&gt; &lt;text&gt;BRITISH INTERNATIONAL FREIGHT ASSOCIATION (BIFA)
					STANDARD TRADING CONDITIONS 1989 EDITION&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Clause 29(A):    
					Subject to Clause 2(B) above and Sub-Clause (D) below the Company's liability howsoever arising and not
					withstanding that the cause of loss or damage be unexplained shall not exceed&lt;/text&gt; &lt;/p&gt;
					&lt;p&gt; &lt;text&gt;(i) in the case of claims for loss or damage to goods &lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;(a) the value of any goods lost or damaged, or&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(b)
					the sum at the rate of two Special Drawing Rights as defined by the International Monetary Fund (hereinafter
					referred to as SDR's), per kilo or gross weight of any goods lost or damaged whichever shall be the
					least&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(ii) in the case of all other claims&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;(a) the value of the goods the subject of the relevant transaction between
					the Company and its Customer, or &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(b) a sum at the rate of two
					SDR's per kilo of the gross weight of the goods the subject of the said transaction, or &lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;(c) 75,000 SDR's in respect of any one transaction whichever shall be the
					least&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;For the purposes of Clause 29(A) the value of the goods
					shall be their value when they were or should have been shipped. The value of SDR's shall be calculated as at
					the date when the claim is received by the Company in writing.&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;Clause 30(A):     Any claim by the Customer against the Company arising in respect of any service
					provided for the Customer or which the Company has undertaken to provide shall be made in writing and notified
					to the Company within l4 days of the date upon which the Customer became or should have become aware of any
					event or occurrence alleged to give rise to such claim and any claim not made and notified as aforesaid shall
					be deemed to be waived and absolutely barred except where the Customer can show that it was impossible for him
					to comply with this Time Limit and that he has made the claim as soon as it was reasonably possible for him to
					do so.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Clause 30(B): Notwithstanding the provisions of
					Sub-Paragraph (A) above the Company shall in any event be discharged of all liability whatsoever howsoever
					arising in respect of any service provided for the Customer or which the Company has undertaken to provide
					unless suit be brought and written notice thereof given to the Company within nine months from the date of the
					event or occurrence alleged to give rise to a cause of action against the Company.&lt;/text&gt; &lt;/p&gt;
					&lt;/case:appendix&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;attachments&gt; &lt;appendix&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;BRITISH INTERNATIONAL
					FREIGHT ASSOCIATION (BIFA) STANDARD TRADING CONDITIONS 1989 EDITION&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;Clause 29(A):     Subject to Clause 2(B) above and Sub-Clause (D) below the Company's liability
					howsoever arising and not withstanding that the cause of loss or damage be unexplained shall not
					exceed&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(i) in the case of claims for loss or damage to goods
					&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(a) the value of any goods lost or damaged, or&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;(b) the sum at the rate of two Special Drawing Rights as defined by the
					International Monetary Fund (hereinafter referred to as SDR's), per kilo or gross weight of any goods lost or
					damaged whichever shall be the least&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(ii) in the case of all
					other claims&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(a) the value of the goods the subject of the
					relevant transaction between the Company and its Customer, or &lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;(b) a sum at the rate of two SDR's per kilo of the gross weight of the goods the subject of the
					said transaction, or &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(c) 75,000 SDR's in respect of any one
					transaction whichever shall be the least&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;For the purposes of
					Clause 29(A) the value of the goods shall be their value when they were or should have been shipped. The value
					of SDR's shall be calculated as at the date when the claim is received by the Company in writing.&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;Clause 30(A):     Any claim by the Customer against the Company arising in
					respect of any service provided for the Customer or which the Company has undertaken to provide shall be made
					in writing and notified to the Company within l4 days of the date upon which the Customer became or should
					have become aware of any event or occurrence alleged to give rise to such claim and any claim not made and
					notified as aforesaid shall be deemed to be waived and absolutely barred except where the Customer can show
					that it was impossible for him to comply with this Time Limit and that he has made the claim as soon as it was
					reasonably possible for him to do so.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Clause 30(B):
					Notwithstanding the provisions of Sub-Paragraph (A) above the Company shall in any event be discharged of all
					liability whatsoever howsoever arising in respect of any service provided for the Customer or which the
					Company has undertaken to provide unless suit be brought and written notice thereof given to the Company
					within nine months from the date of the event or occurrence alleged to give rise to a cause of action against
					the Company.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/appendix&gt; &lt;/attachments&gt; </codeblock>
			</example>
			<section>
				<p>If <sourcexml>case:embeddedcase</sourcexml> occurs within <sourcexml>case:appendix</sourcexml> then
					conversion need to handle <targetxml>courtcase:caseexcerpt</targetxml> by using
						<targetxml>bodytext</targetxml> under <targetxml>appendix</targetxml> i.e,
						<sourcexml>case:appendix/case:embeddedcase</sourcexml> becomes
						<targetxml>attachments/appendix/bodytext/courtcase:caseexcerpt</targetxml>
				</p>
			</section>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
        </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.appendix-LxAdv_attachments_appendix.dita  -->
	
	<xsl:template match="case:appendix">
		<attachments xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<appendix>
				<xsl:apply-templates select="heading"/>
				<bodytext>
					<xsl:apply-templates select="@* | node() except heading"/>
				</bodytext>
			</appendix>
		</attachments>
	</xsl:template>

	<xsl:template match="case:embeddedcase">
		<!--  Original Target XPath:  courtcase:caseexcerpt   -->
		<courtcase:caseexcerpt>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:caseexcerpt>
	</xsl:template>

</xsl:stylesheet>
