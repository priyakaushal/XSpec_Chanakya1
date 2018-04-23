<?xml version="1.0" encoding="UTF-8"?>
<!-- ***************************************************
      2017-05-19:  MCJ - A separate module to test a slightly different approach to handling deflist, defitem, etc.
                         This will stand alone until we can decide 1) it works and 2) how it can fit in with the other
                         defitem-related modules (perhaps replacing them).
     ***************************************************-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp" 
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.0"
	exclude-result-prefixes="dita glp in leg docinfo base regulation">


	<!-- Start deflist handling... this should be handled in Rosetta_deflist-LxAdv-deflist.xsl and Rosetta_text-Chof-deflist_defitem_p-LxAdv-deflist_defitem.xsl but
		 implementing locally to see if I can get it working.  The problem to be solved is mainly the text that exists within defitem/p/text and defitem/p/l.  The change
		 is that defitem/p really should be treated as creating a defdesc and then pull out any defitem/p/text/defterm if exists.  Retaining ordering might be difficult if
	     even possible. -->

	<!-- MCJ:  A Rosetta deflist always becomes a base:deflist.   This is a copy/paste from Rosetta_deflist-LxAdv-deflist.xsl. -->
	<xsl:template match="deflist">
		
		<!--  Original Target XPath:  deflist   -->
		<deflist xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</deflist>
		
	</xsl:template>
	
	<!-- This commented out template was a copy/paste from Rosetta_deflist-LxAdv-deflist.xsl... but the hardcoded defdesc is not needed... but the conditional tests should be considered in the final solution. -->
	<!-- <xsl:template match="defitem">
		
		...  Original Target XPath:  defitem   ...
		<defitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | defterm"/>
			<xsl:if test="not(defdesc|p/text/defdesc)">
				... JL added empty bodytext wrapper to validate to the target schemas ...
				<defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>
				</defdesc>
			</xsl:if>
			<xsl:apply-templates select="node() except(footnote|fnr|defterm)"/>
			
		</defitem>
		
	</xsl:template> -->
	
	<!-- MCJ:  A defitem always becomes base:defitem. 
               The content models for defitem and base:defitem don't completely align in that Rosetta's defitem allows
               for paragraphs and notes as direct children whereas base:defitem is more like a defterm + defdesc.
               
               The following thoughts rely on the fact that the content model for the Shared Services base:defitem allows for multiple defterm and defdesc:
               
               defitem
	             searchhit > ???
	             p > create defdesc
	             defterm > defterm
	             defdesc > defdesc
	             leg:histnote > ???
	             leg:comntry > ???
	             fnr > ???
	             ci:cite > ???
	             glp:note > ???
	             note >  perhaps this should be handled in another defdesc???
	             page > ???
	             #PCDATA > connector
	             
	           base:defitem
	             label
	             defterm
	             connector
	             defdesc
	             note
	             notes
	             annot:annotations
	-->
	<xsl:template match="defitem">
		<defitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:for-each-group select="node() except (fnr[following-sibling::defterm])" group-adjacent="if (self::p) then 1 else 0">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=1">
						<!-- this is a p element... defer the handling to a special moded template. -->
						<xsl:apply-templates select="current-group()" mode="defitem" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="current-group()" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</defitem>
	</xsl:template>
	
	<!-- Moded template for defitem/p.  A Rosetta defitem/p is basically considered to be a base:defdesc.
		 However, if the paragraph has a defterm within its text, the term needs to be placed before the opening of the defdesc.  This does not necessarily
		 retain document ordering.  Once the defdesc and bodytext wrappers are created, defer the handling of the p to the regular/non-moded template
		 in order to let it handle the bump-up of glp:note out of the p.  This moded template probably could have been implemented as a part of the bump-up
	     within the template for defitem itself. -->
	<xsl:template match="defitem/p" mode="defitem">
		<xsl:apply-templates select="./text/defterm" />
		<defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<bodytext>
			    <xsl:apply-templates select="." />					
			</bodytext>
		</defdesc>
	</xsl:template>
	
	<!-- As with the general case, Rosetta's defitem/p/text becomes p/text.  However, this variation excludes any defitem/p/text/defterm
		 because they have been processed earlier.  Did not want to create a separate template to suppress defitem/p/text/defterm because
		 it would affect the creation of base:defterm elsewhere. -->
	<xsl:template match="defitem/p/text">
		<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="node() except (child::defterm | child::refpt[ancestor::defitem][$streamID='AU04'])" />
		</text>
	</xsl:template>
	
	<!-- Rosetta's defterm becomes base:defterm.  This is a copy/paste from Rosetta_deflist-LxAdv-deflist.xsl. -->
	<xsl:template match="defterm">
		
		<!--  Original Target XPath:  defterm   -->
		<defterm xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
			<xsl:if test="(ancestor::defitem and not(parent::text)) and (following-sibling::*[1][self::footnote|self::fnr] | preceding-sibling::*[1][self::footnote|self::fnr])">
				<xsl:apply-templates select="following-sibling::*[1][self::footnote|self::fnr] | preceding-sibling::*[1][self::footnote|self::fnr]"/>
			</xsl:if>
		</defterm>
		
	</xsl:template>
	
	<!-- Rosetta's defterm that has a part of subtitle is just a pass-through.  This is a copy/paste from Rosetta_deflist-LxAdv-deflist.xsl. -->
	<xsl:template match="defterm[parent::subtitle]">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	<!-- Rosetta's defdesc becomes base:defdesc.  This is a copy/paste from Rosetta_deflist-LxAdv-deflist.xsl. -->
	<xsl:template match="defdesc">
		
		<!--  Original Target XPath:  defdesc   -->
		<defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<bodytext>
				<xsl:apply-templates select="node()"/>
			</bodytext>
			<xsl:if test="following-sibling::*[1][self::footnote|self::fnr]">
				<xsl:apply-templates select="following-sibling::*[1][self::footnote|self::fnr]"/>
			</xsl:if>
		</defdesc>
		
	</xsl:template>
	
    <!-- MCJ:
    	PCDATA that is a direct child of the Rosetta defitem should be placed in a connector.  Not all such text will
    	truly be a connector (and/or/etc.) but this feels like a reasonable choice considering that the Rosetta defitem
    	content model is mixed-content and the shared services content model is not.
    	Note that this template only accounts for PCDATA as the Rosetta content model for defitem does not currently allow for 
    	enriched text constructs such asemphasis, sub, strike, etc.
    -->
	<!-- JL added normalize space test to stop outputting empty connector elements -->
    <xsl:template match="defitem/text()[not(normalize-space(.)='')]">
    	<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:value-of select="." /></connector>
    </xsl:template>

    <!-- End deflist handling. -->


</xsl:stylesheet>