<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_References">
  <title>References <lnpid>id-HK08-37615</lnpid></title>
  <body>
    <p>
      <note> <sourcexml>cttr:content</sourcexml> - This is a container element that does not need to be carried forward in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information.</note>
           
    </p>
  </body>
	</dita:topic>

	<xsl:template match="source_cttr:content">
		
		<!--  Original Target XPath:     -->
		<xsl:if test="child::*[not(self::catchwordgrp or self::source_cttr:wordphrasegrp | self::source_cttr:summary)] except child::source_cttr:annotations[@annotationtype='appealproc']">
		<cttr:refs>
			<xsl:apply-templates select="@* | node() except child::source_cttr:annotations[@annotationtype='appealproc'] except(source_cttr:wordphrasegrp, catchwordgrp, source_cttr:summary)"/>
		</cttr:refs>
		</xsl:if>
		
		<xsl:if test="child::*[not(self::catchwordgrp or self::source_cttr:wordphrasegrp | self::source_cttr:summary)] except (child::source_cttr:annotations[@annotationtype='consideredcases'] | child::source_cttr:annotations[@annotationtype='consideredleg'] |  child::source_cttr:annotations[@annotationtype='subseqcases'])">
			<cttr:history>
				<xsl:apply-templates select="@* | node() except(source_cttr:wordphrasegrp, catchwordgrp, source_cttr:summary) except (child::source_cttr:annotations[@annotationtype='consideredcases'] | child::source_cttr:annotations[@annotationtype='consideredleg'] |  child::source_cttr:annotations[@annotationtype='subseqcases'])"/>
			</cttr:history>
		</xsl:if>
		
		<xsl:if test="catchwordgrp|source_cttr:wordphrasegrp">
			<cttr:descriptors>
				<xsl:apply-templates select="catchwordgrp|source_cttr:wordphrasegrp"/>
			</cttr:descriptors>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>