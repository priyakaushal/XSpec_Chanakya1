<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0"
	exclude-result-prefixes="dita case jurisinfo">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.courtinfo-LxAdv_caseinfo.caseinfo_caseinfo.jurisinfo">
		<title>case:courtinfo <lnpid>id-CCCC-12012</lnpid></title>
		<body>
			<section>
				<p><sourcexml>case:courtinfo</sourcexml> becomes
					<targetxml>/caseinfo:caseinfo/jurisinfo:courtinfo</targetxml>.</p>
				<note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more
					consecutive sibling source elements map to <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to
					a single <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content ordering.</note>
			</section>
			<!--<section>
      <title>Changes</title>
    </section>-->
		</body>
	</dita:topic>
	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.courtinfo-LxAdv_caseinfo.caseinfo_caseinfo.jurisinfo.dita  -->


	<xsl:template match="case:courtinfo">
		<!--  Original Target XPath:  /caseinfo:caseinfo/jurisinfo:courtinfo   -->
		<xsl:choose>
			<xsl:when test="parent::case:judgment">
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:otherwise>
				<jurisinfo:courtinfo>
					<xsl:apply-templates select="case:courtcode"/>
					<xsl:apply-templates select="case:courtname"/>										
					<xsl:apply-templates select="case:juris"/>					
				</jurisinfo:courtinfo>
				<!-- Awantika: 2017-10-17: Added case:dates and case:judges in except condition for HK03 -->
				<!-- Awantika: 2017-10-27- removing page if coming under case:courtinfo and placing it inside courtcase:panel -->
				<!--SS[2017-11-21]: Added this condition "./text()[preceding-sibling::case:courtcode and following-sibling::case:judges][$streamID='AU01']" for moving text() of case:courtinfo under target 'courtcase:judges' element -->
				<!--SS[2017-01-12]: Added this condition "./text()[preceding-sibling::case:courtcode and following-sibling::case:courtloc][$streamID='NZ03']" for moving text() of case:courtinfo under target 'location:city' element -->
				<!--RS[2018-01-04]: Modify the condition "./text()[preceding-sibling::case:courtcode or preceding-sibling::case:courtname and following-sibling::case:judges][$streamID='AU01']" for moving text() of case:courtinfo under target 'courtcase:judges' element -->
				<xsl:apply-templates select="@* | node() except (case:courtcode | case:courtname | case:juris | ./text()[following-sibling::case:courtloc][$streamID=('AU09','AU01')] | ./text()[preceding-sibling::case:courtcode or preceding-sibling::case:courtname and following-sibling::case:judges][$streamID='AU01'] | ./text()[preceding-sibling::case:courtcode and following-sibling::case:courtloc][$streamID='NZ03'] | case:courtloc[$streamID=('AU09','AU01', 'NZ03')] | case:judges[$streamID=('HK03')] | case:dates[$streamID=('HK03')] | page[$streamID='HK03'] | ./text()[preceding-sibling::case:filenum and following-sibling::filenum][$streamID='NZ03'] | ./text()[preceding-sibling::case:dates and following-sibling::case:dates][$streamID='NZ03'])"/>
				<!--<xsl:apply-templates select="case:filenum"/>
                  <xsl:apply-templates select="case:judges[ancestor::case:headnote]"/>
                  <xsl:apply-templates select="case:dates"/>-->
				<!--<xsl:apply-templates select="case:judges[ancestor::case:headnote]"/>
                                <xsl:apply-templates select="case:dates"/>-->
				<!--<xsl:apply-templates select="@* | node()"/>-->
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	

<!--	<xsl:template match="case:courtinfo">
		<!-\-  Original Target XPath:  /caseinfo:caseinfo/jurisinfo:courtinfo   -\->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="case:courtcode"/>
			<xsl:apply-templates select="case:courtname"/>
			<xsl:apply-templates select="case:juris"/>
		</jurisinfo:courtinfo>
		<xsl:apply-templates select="@* | node() except (case:courtcode | case:courtname | case:juris | ./text()[following-sibling::case:courtloc][$streamID='AU09'] | case:courtloc[$streamID='AU09'])"/>
		<!-\-<xsl:apply-templates select="case:filenum"/>
	  <xsl:apply-templates select="case:judges[ancestor::case:headnote]"/>
	  <xsl:apply-templates select="case:dates"/>-\->
		<!-\-<xsl:apply-templates select="case:judges[ancestor::case:headnote]"/>
		<xsl:apply-templates select="case:dates"/>-\->
		<!-\-<xsl:apply-templates select="@* | node()"/>-\->-->

	
</xsl:stylesheet>
