<?xml version="1.0" encoding="UTF-8"?>
<!-- ***************************************************
      2017-05-17:  MCJ - Created this new module to act as a place to build AU06 locally
                         without having to modularize.  At some point, the code here should
                         be assessed/refactored back into separate modules.
     ***************************************************-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp" 
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
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
	exclude-result-prefixes="dita">

    <!-- The LEGDOC root element becomes the root regulation:regulation element. 
         This supports instructions specified by id-AU06-19009 and id-NZ05-23209. -->
	<xsl:template match="LEGDOC">
		<xsl:choose>
			<!-- The @legtype value of 'regulations' is understood for both AU06 and NZ05.  The values of 'court-rules' and 
				 'leg-inst' added for NZ05. -->
			<xsl:when test="@legtype=('regulations', 'court-rules', 'leg-inst')">
				<regulation:regulation>
					<!--  Output the LA namespace nodes onto the root element.  -->
					<xsl:call-template name="generateNSGlobalBindings" />
					
					<!-- MCJ:  Create @xsi:schemaLocation based on the global parameter. -->
					<xsl:attribute name="xsi:schemaLocation" select=" $outputSchemaLoc "/>

                    <!-- MCJ:  Process all attributes that occur on LEGDOC. -->
					<xsl:apply-templates select="@*" />
					
					<!-- MCJ:  Create @xml:lang using the global named template that uses doc-lang and doc-country. -->
					<xsl:call-template name="xml_lang"/>

					<!-- Create regulation:head within regulation:body.  This is not the most robust template but there is only one component needed. -->
					<regulation:head>
						<xsl:apply-templates select="leg:body/leg:info/leg:juris" mode="createRegulationHead" />
					</regulation:head>
					
					<!-- Now process the body. -->
					<xsl:apply-templates select="leg:body"/>
					
					<!-- Create doc:metadata. -->
					<doc:metadata>
						<xsl:apply-templates select="docinfo"/>
					</doc:metadata>
				</regulation:regulation>        		
			</xsl:when>
			<xsl:otherwise>
				<!-- 20170515:  MCJ:  The instructions don't specify what to do if the value of @legtype is not set. -->				
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- LEGDOC/@id becomes regulation:regulation/@xml:id 
	     This supports instructions specified by id-AU06-19009.	-->
	<xsl:template match="LEGDOC/@id">
		<xsl:attribute name="xml:id">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>
	
	<!-- Suppress LEGDOC/@legtype as it is pulled elsewhere. -->
	<xsl:template match="LEGDOC/@legtype" />

    <!-- start leg:juris -->

	<!-- Suppress leg:juris by default.  Specific handling is through moded templates. -->
	<xsl:template match="leg:juris" />
	<xsl:template match="leg:juris/@searchtype" />
	
	<!-- Moded template for handling leg:juris that is called from the module creating doc:metadata.  This implementation intercepts
		 and dispatches based on the stream ID. -->
	<xsl:template match="leg:juris" mode="metadata">
        <xsl:choose>
        	<!-- Dispatch handling for AU06. -->
        	<xsl:when test="$streamID='AU06'">
        		<xsl:apply-templates select="." mode="metadata_AU06" />
        	</xsl:when>
        	<!-- Dispatch handling for NZ05. -->
        	<xsl:when test="$streamID='NZ05'">
        		<xsl:apply-templates select="." mode="metadata_NZ05" />
        	</xsl:when>
        	<xsl:otherwise>
        		<xsl:comment>Processing leg:juris in 'metadata' mode... not set up for stream '<xsl:value-of select="$streamID" />'.</xsl:comment>
        	</xsl:otherwise>
        </xsl:choose>
	</xsl:template>
	
	<!-- Moded template for building dc:coverage from leg:juris.  This mode is called from the templates reponsible for building doc:metadata/dc:metadata. 
	     This supports instructions specified by id-AU06-19008. -->
	<xsl:template match="leg:juris" mode="metadata_AU06">
		<!-- 20170519:  MCJ:  This is not done in a way that the mappings are externalized from the conversion... -->
		<!-- 20170519:  MCJ:  The instructions for when leg:juris[@ln.user-displayed='false'] are to process as if the attribute doesn't exist. -->
		<xsl:variable name="testValue">
			<xsl:value-of select="normalize-space(.)" />
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$testValue='CTH'">
				<dc:coverage>
					<location:country codescheme="ISO-3166-1" countrycode="AU" />
				</dc:coverage>
			</xsl:when>
			<xsl:when test="$testValue=('NSW', 'QLD', 'SA', 'TAS', 'VIC', 'WA', 'ACT', 'NT')">
				<xsl:variable name="stateCode">
					<xsl:choose>
						<xsl:when test="$testValue='NSW'">AU-NS</xsl:when>
						<xsl:when test="$testValue='QLD'">AU-QL</xsl:when>
						<xsl:when test="$testValue='SA'">AU-SA</xsl:when>
						<xsl:when test="$testValue='TAS'">AU-TS</xsl:when>
						<xsl:when test="$testValue='VIC'">AU-VI</xsl:when>
						<xsl:when test="$testValue='WA'">AU-WA</xsl:when>
						<xsl:when test="$testValue='ACT'">AU-CT</xsl:when>
						<xsl:when test="$testValue='NT'">AU-NT</xsl:when>
						<xsl:otherwise>unknownstatecode</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<dc:coverage>
					<location:state codescheme="ISO-3166-1" statecode="{$stateCode}" />
				</dc:coverage>
			</xsl:when>
			<xsl:otherwise></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- Moded template for building dc:coverage from leg:juris.  This mode is called from the templates reponsible for building doc:metadata/dc:metadata. 
	     This supports instructions specified by id-NZ05-23208. -->
	<xsl:template match="leg:juris" mode="metadata_NZ05">
		<dc:coverage>
			<location:country codescheme="ISO-3166-1" countrycode="NZ" />
		</dc:coverage>
	</xsl:template>

    <!-- Moded template for using leg:juris to build jurisinfo:legisbodyinfo within regulation:head. 
         This supports instructions specified by id-AU06-19008 and id-NZ05-23208. -->
	<xsl:template match="leg:juris" mode="createRegulationHead">
		<!-- The presence of leg:juris can also create location:state within doc:metadata. -->
		<jurisinfo:legisbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:legisbodyinfo>
	</xsl:template>
	
    <!-- end leg:juris -->

    <!-- leg:body becomes regulation:body. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:body">
		<!--  Original Target XPath:  regulation:body   -->
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>
	</xsl:template>

    <!-- start leg:info. -->
	
    <!-- leg:info becomes a single outer primlaw:level[@leveltype="unclassified"].  The children of leg:info need to be evaluated
    	 for proper treatment.
    	 This supports instructions specified by id-AU06-19007 and id-NZ05-23207. -->
	<xsl:template match="leg:info">
		<!-- Create an outer primlaw:level to represent the leg:info.  Not sure if this is entirely correct but matches the DT output. -->
		<primlaw:level leveltype="unclassified">
			<xsl:apply-templates select="@*" />
			
		    <!-- Group children so that the proper wrappers can be created. 
		    wpk 2018-03-16. Added histcite to list of exceptions as these don't get wrapped in info wrapper. webstar 7135946 and 7135982     -->
			<xsl:for-each-group select="node()" group-adjacent="if (self::leg:histcite | self::leg:sectionlist | self::leg:relatedleg | self::leg:empleg) then 1 else 0">
			    <xsl:choose>
				    <!-- process section lists which create their own primlaw:level. -->
				    <xsl:when test="current-grouping-key()=1">
					    <xsl:for-each select="current-group()">
						    <xsl:apply-templates select="." />
					    </xsl:for-each>
				    </xsl:when>
		    		<!-- products of all other children of leg:info can be within a primlaw:levelinfo of the outer primlaw:level. --> 
				    <xsl:otherwise>
		                <primlaw:levelinfo>
			                <primlawinfo:primlawinfo>
			            	    <!-- group again in order to determine which elements go in legisinfo:legisinfo. -->
				                <!-- <xsl:for-each-group select="current-group()" group-adjacent="if (self::leg:officialname| self::leg:officialnum | self::leg:dates | self::leg:year | self::leg:relatedleg) then 2 else if (self::leg:juris) then 1 else 0"> -->
				                <xsl:for-each-group select="current-group()" group-adjacent="if (self::leg:officialnum | self::leg:dates | self::leg:year | self::leg:relatedleg) then 2 else if (self::leg:juris) then 1 else 0">
					                <xsl:choose>
						                <xsl:when test="current-grouping-key()=2">
							                <xsl:for-each select="current-group()">
								                <xsl:apply-templates select="." />
							                </xsl:for-each>
						                </xsl:when>
					                	<xsl:when test="current-grouping-key()=1">
					                		<!-- leg:juris is excluded from the selection because it is not processed as a part of a levelinfo.  If it were processed, it would result
				                                 in an empty legisinfo:legisinfo. -->					                		
					                	</xsl:when>
						                <xsl:otherwise>
							                <legisinfo:legisinfo>
								                <xsl:for-each select="current-group()">
 							                        <xsl:apply-templates select="."/>
								                </xsl:for-each>
							                </legisinfo:legisinfo>
						                </xsl:otherwise>
					                </xsl:choose>
				                </xsl:for-each-group>
			                </primlawinfo:primlawinfo>
		                </primlaw:levelinfo>
				    </xsl:otherwise>
			    </xsl:choose>
		    </xsl:for-each-group>
		</primlaw:level>
	</xsl:template>

    <!-- Suppress leg:info/@subseqdoc. 
         This supports instructions specified in id-AU06-19007 and id-NZ05-23207. -->
    <xsl:template match="leg:info/@subseqdoc" />

	<!-- leg:info/leg:dates becomes primlawinfo:dates. -->
	<xsl:template match="leg:info/leg:dates">
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()" />
		</primlawinfo:dates>
	</xsl:template>

	<!-- leg:effdate becomes primlawinfo:effdate.  The handling of leg:effdate doesn't create the primlawinfo:dates wrapper.
		 Rather, the parent leg:dates creates the wrapper and the leg:effdate simply becomes primlawinfo:effdate. 
	     This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:info/leg:dates/leg:effdate">
		<primlawinfo:effdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:effdate>
	</xsl:template>

	<!-- leg:info/leg:status becomes legisinfo:status wrapped in legisinfo:statusgroup.
    	 Attributes of leg:status are processed so that leg:status/@statuscode is carried over to legisinfo:status.
    	 The content of leg:status becomes a part of legisinfo:statustext. 
         This supports instructions specified by id-AU06-19007. -->	
	<xsl:template match="leg:info/leg:status">
		<legisinfo:statusgroup>
			<legisinfo:status>
				<xsl:apply-templates select="@*" />
				<legisinfo:statustext>
					<xsl:apply-templates select="node()"/>
				</legisinfo:statustext>
			</legisinfo:status>
		</legisinfo:statusgroup>
	</xsl:template>
	
	<!-- leg:status/@statuscode becomes @statuscode (presumably on legisinfo:status). 
	     This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:status/@statuscode">
		<xsl:attribute name="statuscode">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>

    <!-- Suppress leg:officialnum/@searchtype.  Not sure why this isn't done in a non-stream-specific module. -->
	<!-- <xsl:template match="leg:officialnum/@searchtype" /> -->
	
	<!-- end leg:info. -->

    <!-- start docinfo stuff. -->
	

	<!-- Supress docinfo:doc-id as it is pulled in during creation of doc:metadata. -->
	<!-- <xsl:template match="docinfo:doc-id" /> -->
	
	<!-- End docinfo stuff. -->

    <!-- leg:levelstatus becomes legisinfo:statusgroup.  The child legisinfo:status receives a @statusgroup of 'repealed'.
    	 Note the choice here is to go and create the wrapping primlawinfo:primlawinfo/legisinfo:legisinfo as it wasn't clear
    	 where else that could be created... but that would be nice to take a second look at at some point. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:levelstatus">
		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   -->
		<xsl:choose>
  		    <xsl:when test="@isrepealed='true'">
    			    <legisinfo:legisinfo>
			            <legisinfo:statusgroup>
				            <legisinfo:status statuscode="repealed">
				            	<xsl:apply-templates select="@*" />
				            	<!-- Only create the statustext if there are children and the ln.user-displayed is not 'false'.
				            		 Note that this might not exactly match the instructions around ln.user-displayed which do not
				            		 clarify what to do if the value is 'true' or if the attributes doesn't exist at all. -->
				            	<xsl:if test="node() and not(@ln.user-displayed='false')">
					                <legisinfo:statustext>
					        	        <!-- Exclude refpt from processing because we don't want a ref:anchor created here. -->
					                    <xsl:apply-templates select="node() except refpt"/>
					                </legisinfo:statustext>
				            	</xsl:if>
				            </legisinfo:status>
			            </legisinfo:statusgroup>
			        </legisinfo:legisinfo>
		    </xsl:when>
			<xsl:when test="@isrepealed='false'">
				<!-- Suppress. -->
			</xsl:when>
			<xsl:otherwise>
				<!-- Suppress. -->
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- Suppress leg:levelstatus/@isrepealed as it's value is pulled in elsewhere. -->
	<xsl:template match="leg:levelstatus/@isrepealed" />

    <!-- leg:level is treated as a pass-through element. 
    	 The handling for leg:level differs slightly from the instructions specified in id-AU06-19007 because the content model 
    	 for leg:level supports one or more leg:level-vrnt and it is the variant that carries the leveltype.
    	 Due to this, it is more straight-forward (and flexibile) to treat the leg:level as a pass-through element and to 
    	 consider the leg:level-vrnt as being the primlaw:level. 
         This supports instructions specified by id-AU06-19007. --> 
	<xsl:template match="leg:level">
		<xsl:apply-templates />
	</xsl:template>
	
	<!-- leg:level-vrnt becomes primlaw:level.
		 The handling is slighly different from the instuctions specified by id-AU06-19007 because the content model supports multiple
		 leg:level-vrnt for each leg:level and it is the leg:level-vrnt that carries the leveltype.  Due to this, it is more
		 straight-forward (and flexibile) to consider the leg:level-vrnt as the primlaw:level.
	     This supports instructions specified by id-AU06-19007 and id-NZ05-23207. -->
	<xsl:template match="leg:level-vrnt">
		<!-- The base level type is determined by the value of leg:level-vrnt/@leveltype. -->
		<xsl:variable name="baseLevelType">
			<xsl:value-of select="./@leveltype" />
		</xsl:variable>

		<!-- Determine the mapped level type to use with the resulting primlaw:level. -->
		<xsl:variable name="mappedLevelType">
			<xsl:choose>
				<xsl:when test="$baseLevelType = ('act', 'addendum', 'agreement', 'amendment', 'annex', 'appendix', 'article', 'canon', 'chapter', 'clause', 'constitution',
					'dictionary', 'division', 'endnote', 'exhibit', 'form', 'hierarchy-note', 'instrument', 'introduction', 'order', 'paragraph',
					'part', 'preamble', 'procedural-guide', 'regulation', 'regulatory-code', 'rule', 'schedule', 'section', 'subarticle',
					'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subregulation', 'subschedule', 'subrule', 'subsection',
					'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency', 'companion', 'unclassified')">
					<xsl:value-of select="$baseLevelType" />
				</xsl:when>
				<!-- 20170626:  MCJ:  Added mapping for attachments which is not in the AU06 CI.  Note that 'attachments' might be handled as a pass-through level but, again,
				                      the CI does not address this. -->
				<!-- 20170803:  MCJ:  Updating so that the default is to map to 'attachment' which will be allowed as a new level.  This appears to be
					                  the scenario for NZ05 and I think it makes sense.  Again, not covered in the CI and 'attachments' (plural) is not allowed
					                  by the regulations schema. -->
				<xsl:when test="$baseLevelType = 'attachments'">
					<xsl:choose>
						<xsl:when test="$streamID='AU06'">attachments</xsl:when>
						<xsl:otherwise>attachment</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<!-- 20170626:  MCJ:  Added mapping for attachment which is not in the AU06 or NZ05 CI.  This could be added to the main condition above but
					                  wanted to document the addition. -->
				<xsl:when test="$baseLevelType = 'attachment'">attachment</xsl:when>
				<!-- MCJ:  derived from looking at DT output for AU06.  It is probable that this mapping is only true when the parent is a leg:endmatter. -->
				<xsl:when test="$baseLevelType='notes'">endnote</xsl:when>
				<!-- MCJ:  For AU06, 'reg' is not in the instructions but is in the data. -->
				<xsl:when test="$baseLevelType='reg'">regulation</xsl:when>
				<!-- MCJ:  For AU06, 'subreg' is not in the instructions but is in the data. -->
				<xsl:when test="$baseLevelType='subreg'">subregulation</xsl:when>
				<!-- 20170803:  MCJ:  For NZ05, 'convention' is not covered in the CI but the DT output appears to map it to 'treaty'...  Told that DT output should be taken into account for Rocket. -->
				<xsl:when test="$streamID='NZ05' and $baseLevelType='convention'">treaty</xsl:when>
				<!-- 20170803:  MCJ:  For NZ05, found 'chap' in input data.  DT was mapping to 'chapter... makes sense. -->
				<xsl:when test="$streamID='NZ05' and $baseLevelType='chap'">chapter</xsl:when>
				<!-- should use the error message template here. -->
				<xsl:otherwise>unclassified</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>	

        <!-- 20170626:  MCJ:  Need to allow a "pass-through" mechanism for some values of @leveltype (e.g. 'attachments')... these do not
                              result in a primlaw:level wrapper. -->
        <xsl:choose>
        	<!-- 20170626:  MCJ:  The pass-through for 'attachments' is not something covered in the CI but matches the DT output
        		                  and there is no corresponding value allowed by the schema. -->
        	<xsl:when test="$mappedLevelType = ('attachments')">
                <xsl:apply-templates />
        	</xsl:when>
            <xsl:otherwise>
            	<primlaw:level leveltype="{$mappedLevelType}">
            		<!-- MCJ:  Process the id of the parent leg:level.  **If** there were ever multiple variants, this would be a problem because the same id would be applied. -->
            		<xsl:apply-templates select="parent::leg:level/@id" />
            		<!-- Process attributes of the variant. -->
            		<xsl:apply-templates select="@*" />
            		<!-- MCJ:  Pull in any refpt that exist as a part of the heading (sometimes in title but sometimes in desig) to act as the anchor of the level. -->
            		<xsl:if test="./leg:heading//refpt[@type='ext']">
            			<xsl:for-each select="leg:heading//refpt[@type='ext']">
            				<xsl:apply-templates select="." />
            			</xsl:for-each>
            		</xsl:if>
            		<xsl:apply-templates select="node()" />
            	</primlaw:level>            	
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>

    <!-- Suppress leg:level-vrnt/@leveltype as leveltype is determined elsewhere. -->
	<xsl:template match="leg:level-vrnt/@leveltype" />
	
	<!-- Suppress leg:level-vrnt/@searchtype. -->
	<xsl:template match="leg:level-vrnt/@searchtype" />

    <!-- leg:level-vrnt/@subdoc becomes primlaw:level/@includeintoc. --> 
	<xsl:template match="leg:level-vrnt/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>
	
	<!-- leg:level-vrnt/@toc-caption becomes primlaw:level/@alternatetoccaption. -->
	<xsl:template match="leg:level-vrnt/@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>
	
	<!-- leg:levelinfo becomes primlaw:levelinfo but specific handling depends on which children are present. 
	     Supports instructions specified by id-AU-19007. -->
	<!-- MCJ:  Needed to push this up in priority in order to override.  It would be good to evaluate whether there is another
		       way (other than setting the priority) to override. -->
	<xsl:template match="leg:levelinfo" priority="25">
		<!-- keep current content node for later use. -->
		<xsl:variable name="me" select="." />
		<!-- group all children that need to be processed within a primlaw:levelinfo wrapper within group 1. -->
		<!-- the condition for handling leg:levelstatus needs to duplicate some of the logic in order to determine if the node will
			 produce output... this is to try and avoid having an empty primlaw:levelinfo. -->
		<xsl:for-each-group select="*" group-adjacent="if (self::classification or self::leg:levelstatus[@isrepealed='true']) then 1 else 0">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=1">
					<!-- wpk 2018-03-08  webstar 7130195 
						Added this choose.  Classifications were unhandled and are a new xpath.  Inside levelinfo, they are related to status
						because both are wrapped in primlaw:levelinfo/primlaw:primlawinfo.  A combination of this grouping key and this choose allows all 
						sibling combinations of status (repealed) and classification to be wrapped in a single levelinfo wrapper.
					-->
					<xsl:choose>
						<xsl:when test="preceding-sibling::*[1][self::classification or self::leg:levelstatus[@isrepealed='true']]">
							<!-- prior classifications or statuses, is processed in next when clause.  only need to see if other wrapped items exist -->
							<xsl:apply-templates select="following-sibling::*[1][self::classification or self::leg:levelstatus[@isrepealed='true']]"/>
						</xsl:when>
						<xsl:when test="not(preceding-sibling::*[1][self::classification or self::leg:levelstatus[@isrepealed='true']])">
							<!-- this is the first status or classification, so add levelinfo wrapper -->
							<primlaw:levelinfo xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
								<primlawinfo:primlawinfo>
									<xsl:apply-templates select="$me/@*" />
									<xsl:apply-templates select="current-group()" />
								</primlawinfo:primlawinfo>
							</primlaw:levelinfo>							
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</xsl:when>
				<xsl:when test="current-grouping-key()=1">
					<primlaw:levelinfo xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlawinfo:primlawinfo>
							<xsl:apply-templates select="$me/@*" />
							<xsl:apply-templates select="current-group()" />
						</primlawinfo:primlawinfo>
					</primlaw:levelinfo>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="current-group()" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>

	<!-- leg:body/leg:prelim becomes primlaw:prelim within a new primlaw:level[@leveltype="unclassified"]. 
	     This supports instructions specified by id-AU06-19007.	-->
	<xsl:template match="leg:body/leg:prelim">
		<!--  Original Target XPath:  regulation:regulation/regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim   -->
		<primlaw:level leveltype="unclassified">
		    <primlaw:prelim>
			    <xsl:apply-templates select="@* | node()"/>
		    </primlaw:prelim>
		</primlaw:level>
	</xsl:template>

    <!-- leg:heading becomes base:heading. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:heading">
		<!--  Original Target XPath:  heading   -->
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node() except (leg:empleg | glp:note | leg:histnote)"/>
		</heading>
		<xsl:apply-templates select="leg:empleg | glp:note | leg:histnote" />
	</xsl:template>

    <!-- leg:heading/@inline becomes @inline on base:heading. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:heading/@inline">
		<xsl:attribute name="inline">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>

    <!-- MCJ:  In this scenario, leg:heading does not map to base:heading because leg:bodytext already become primlaw:bodytext which does 
    	       not allow for base:heading.  Thisi is done to to match DT output but it not specified in the CI.  -->
	<xsl:template match="leg:bodytext/leg:heading">
		<xsl:for-each select="title | subtitle">
			<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:apply-templates select=".//text()" /></h>
		</xsl:for-each>
	</xsl:template>


    <!-- leg:heading/glp:note becomes a base:note.
    	 This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:heading/glp:note">
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:for-each-group select="*" group-adjacent="if (self::heading) then 0 else 1">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=0">
						<xsl:apply-templates select="current-group()"/>
					</xsl:when>
					<xsl:otherwise>
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates select="current-group()"/>
						</bodytext>		        
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</note>
	</xsl:template>

    <!-- leg:levelbody is treated as a pass-through element because the base:bodytext is produced elsewhere. -->
	<xsl:template match="leg:levelbody">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

    <!-- /LEGDOC/leg:body/leg:info/leg:histcite becomes primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"].
    	 It is not clear how to handle leg:histcite that might occur in other locations.
    	 This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="/LEGDOC/leg:body/leg:info/leg:histcite">
		<!--  Original Target XPath:  /regulation:regulation/regulation:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp grptype="histcite">
				<xsl:apply-templates select="leg:heading/title/refpt"/>
				<xsl:for-each-group select="*" group-adjacent="if (self::glp:note | self::note| self::leg:heading) then 0 else 1">
					<xsl:choose>
						<xsl:when test="current-grouping-key()=0">
							<xsl:apply-templates select="current-group()"/>
						</xsl:when>
						<xsl:otherwise>
							<primlawhist:histitem>
							    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								    <xsl:apply-templates select="current-group()"/>
							    </bodytext>
							</primlawhist:histitem>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each-group>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>
	</xsl:template>

    <!-- leg:preamble becomes a new primlaw:level[@leveltype="unclassified"]. 
         This supports instructions specified by id-AU06-19007. -->
    <xsl:template match="leg:preamble">
        <primlaw:level leveltype="unclassified">
        	<xsl:apply-templates select="@* | node()" />
        </primlaw:level>
    </xsl:template>

    <!-- leg:bodytext becomes primlaw:bodytext. -->
	<xsl:template match="leg:bodytext">
		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble]/primlawbodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>
	</xsl:template>

    <!-- leg:endmatter becomes a new primlaw:level[@leveltype="endnote"].
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="/LEGDOC/leg:body/leg:endmatter">
		<!--  Original Target XPath:  /regulation:regulation/regulation:body/primlaw:level   -->
		<primlaw:level leveltype="endnote">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>

    <!-- leg:companion becomes a new primlaw:level[@leveltype="unclassified"]. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:companion">
		<!--  Original Target XPath:  primlaw:level[@leveltype="companion"]   -->
		<primlaw:level leveltype="unclassified">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>

    <!-- leg:history becomes primlawhist:primlawhist. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:history">
		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<!-- wpk 2018-03-16.  added anchor support.  webstar 7135857 -->
			<xsl:apply-templates select="leg:heading/title/refpt"/>
			<!-- some children of leg:history needs to be grouped for a 'bump-up'. -->
			<xsl:for-each-group select="node()" group-adjacent="if (self::p) then 1 else 0">
				<xsl:choose>
					<!-- Contiguous p children should be grouped together into a separate primlawhist:histgrp/primlawhist:histitem. -->
					<xsl:when test="current-grouping-key()=1">
						<primlawhist:histgrp>
							<primlawhist:histitem>
								<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                    <xsl:apply-templates select="current-group()" />
								</bodytext>
							</primlawhist:histitem>
						</primlawhist:histgrp>
					</xsl:when>
					<!-- All other children are processed as-is. -->
					<xsl:otherwise>
						<xsl:apply-templates select="current-group()" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</primlawhist:primlawhist>
	</xsl:template>

    <!-- Each leg:history/leg:tableofamend is treated as a separate history item within a history group dedicated to "tableofamend". 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:history/leg:tableofamend">
		<primlawhist:histgrp grptype="tableofamend">
			<!-- wpk 2018-03-16.  added anchor support.  webstar 7135857 -->
			<xsl:apply-templates select="leg:heading/title/refpt"/>	
			<xsl:apply-templates select="leg:heading" />
			<primlawhist:histitem>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="node() except leg:heading"/>
				</bodytext>
			</primlawhist:histitem>
		</primlawhist:histgrp>
	</xsl:template>

    <!-- legfragment becomes primlaw:excerpt.
    	 This supports several conversion modules. -->
	<!-- This came from modules/leg/Rosetta_blockquote-legfragment-leg.level-LxAdv-primlaw.excerpt-primlaw.level.xsl but could not
		 use that module because it has another template for legfragment/leg:level that maps leg:level directly to primlaw:level.  This
		 does not work here because it is leg:level-vrnt that maps to primlaw:level and the result is 2 occurrences of primlaw:level
		 when there should only be one. -->
	<xsl:template match="legfragment">
		<primlaw:excerpt>
			<xsl:apply-templates select="@*"/>
			<xsl:for-each-group select="*" group-adjacent="if (self::leg:level) then 0 else 1">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=0">
						<xsl:apply-templates select="current-group()"/>
					</xsl:when>
					<xsl:otherwise>
						<primlaw:bodytext>
							<xsl:apply-templates select="current-group()"/>
						</primlaw:bodytext>		        
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>		 
		</primlaw:excerpt>
	</xsl:template>
	
	<!-- MCJ:  start handling for index elements. -->

    <!-- index becomes index:index. 
         This supports instructions specified by a few converison modules... including id-AU06-19007. -->
	<xsl:template match="index">
		<index:index>
			<xsl:apply-templates select="@*" />
			<!-- MCJ:  The creation of @indextype based on @id might be specific to AU06...  -->
			<xsl:choose>
			    <xsl:when test="ends-with(@id, '_DEFLIST')">
				    <xsl:attribute name="indextype">definedTerms</xsl:attribute>
			    </xsl:when>
				<xsl:when test="ends-with(@id, '_INDEX')">
					<xsl:attribute name="indextype">topical</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<xsl:apply-templates select="node()" />
		</index:index>
	</xsl:template>

    <!-- MCJ:  It appears that index/p should become a base:subtitle within base:heading.  However, this particular implementation does
               nothing to create the wrapping base:heading so this will need to be revisited.  Also, unclear whether to handle the scenario
               where there is an index/heading and also an index/p... presumably the base:subtitle should be placed in the base:heading
               created by the heading... and then this template should suppress the index/p if the heading is pulling it in as a subtitle. -->
	<xsl:template match="index/p">
		<!--  Original Target XPath:  index:index/heading/subtitle   -->
		<subtitle xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</subtitle>
	</xsl:template>

    <!-- in:lev1 becomes index:item. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="in:lev1">
		<!--  Original Target XPath:  index:index/index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>
	</xsl:template>

    <!-- in:entry becomes index:entry. 
         This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="in:entry">
		<index:entry>
			<xsl:apply-templates select="node()" />
		</index:entry>
	</xsl:template>
	
	<!-- in:entry-text becomes index:entrytext. 
	     This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="in:entry-text">
		<index:entrytext>
			<xsl:apply-templates select="node()" />
		</index:entrytext>
	</xsl:template>
	
    <!-- MCJ:  This is an odd transform.  Instead of each index-ref becoming a index:locator, the index-ref is a passthrough. 
               This enables any PCDATA nodes to be wrapped (in a separate template) by a connector. -->
	<xsl:template match="in:entry/in:index-ref">
		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink   -->
		<!-- <index:locator> -->
			<!-- <ref:lnlink> -->
				<xsl:apply-templates select="@* | node()"/>
			<!-- </ref:lnlink> -->
		<!-- </index:locator> -->
	</xsl:template>
	
	<!-- MCJ:  This is an odd transform.  Each in:index-ref/remotelink is treated as a separate index:locator that has a single ref:lnlink. -->
	<!-- Had to use priority to force it above another module... should revisit to evaluate if there a different method is possible. -->
	<xsl:template match="in:entry/in:index-ref/remotelink" priority="100">
		<index:locator>
		    <ref:lnlink>
			    <xsl:if test="@service='DOC-ID'"><xsl:attribute name="service">DOCUMENT</xsl:attribute></xsl:if>
			    <ref:marker>
				    <xsl:apply-templates />
			    </ref:marker>
			    <ref:locator>
				    <xsl:if test="@refpt">
					    <xsl:attribute name="anchoridref"><xsl:value-of select="@refpt" /></xsl:attribute>
				    </xsl:if>
				    <ref:locator-key>
					    <ref:key-name>
						    <xsl:attribute name="name">DOC-ID</xsl:attribute>
					    </ref:key-name>
					    <ref:key-value>
						    <xsl:attribute name="value">
							    <xsl:value-of select="concat(/LEGDOC/docinfo/docinfo:dpsi/@id-string, '-', @docidref)" />
						    </xsl:attribute>
					    </ref:key-value>
				    </ref:locator-key>
			    </ref:locator>
		    </ref:lnlink>
		</index:locator>
	</xsl:template>
	
	<!-- PCDATA found directly within an in:index-ref should be wrapped in a base:connector.  Presumably, there will also be occurrences of remotelink
	     and other elements that are 'connected' together using this text (commas, etc.). --> 
	<xsl:template match="in:entry/in:index-ref/text()">
		<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:value-of select="." /></connector>
	</xsl:template>
	

	<!-- MCJ:  end handling for index elements. -->

	<!-- MCJ:  Not clear what to do with remotelink/@alttext.  For AU06, it appears to carry links to LawNow and makes sense to suppress. -->
	<!-- <xsl:template match="remotelink/@alttext" /> -->

    <!-- start handling for leg:histnote. -->
	
	<!-- leg:histnote becomes base:note.
		 This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:histnote">
		<!--  Original Target XPath:  note[notetype="historical"]   -->
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" notetype="historical">
			<xsl:for-each-group select="*" group-adjacent="if (self::leg:heading) then 0 else 1">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=0">
						<xsl:for-each select="current-group()">
							<xsl:apply-templates select="."/>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	                    
							<xsl:for-each select="current-group()">
								<xsl:apply-templates select="."/>
							</xsl:for-each>
						</bodytext>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</note>
	</xsl:template>

	<!-- end handling for leg:histnote. -->

    <!-- leg:empleg becomes a primlaw:authority-item within primlaw:authority.  All children are processed within a single base:textitem.
    	 This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:empleg">
		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
				<textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>
	</xsl:template>

    <!-- leg:sectionlist becomes primlaw:level[@leveltype="unclassified"]. -->    	
	<xsl:template match="leg:sectionlist">
		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level leveltype="unclassified">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>

    <!-- leg:info/leg:sectionlist. --> 
	<xsl:template match="leg:info/leg:sectionlist">
		<!--
 wpk 2018-03-20.  this template basically does the same thing for regulation as the following
	        modules do for legislation and court rules.  They should ideally be in sync.
	        The code differs slightly as a detailed note is in the following regarding a webstar.
Rosetta-to-LA/modules/leg/AU_Legis-Body.xsl
<xsl:template match="leg:sectionlist[not(@id) or not(contains(@id, 'PROVLIST'))]">

Rosetta-to-LA/modules/leg/AU08_courtrule-Body.xsl
<xsl:template match="leg:body/leg:info/leg:sectionlist">
-->        

		<!--  Original Target XPath:  primlaw:level   -->
			<xsl:choose>
				<xsl:when test="not(@id) or not(contains(@id, '_PROVLIST'))">
					<primlaw:level leveltype="unclassified">
						<xsl:apply-templates select="leg:heading/title/refpt"/>
						<navaid:navigationaid>
							<xsl:attribute name="type">
								<xsl:variable name="compareText">
									<xsl:value-of select="normalize-space(lower-case(.))" />
								</xsl:variable>
							    <xsl:choose>
							    	<!-- wpk 2018-03-20.  webstar 7127862 added p/table requirement.  Only cases where this text occurs within a table
							    	should be of type "links" (this appears only on right hand side of page).  This had caused a second occurrence of the
							    	sectionlist (no table but duplicated text) element 
							    	and which appears in the main text of the document to also be of type "links".  The non.table
							    	document version needs to be defaulted to type "sectionlist" as per presentation (all agree this is fragile, but this
							    	is what was negotiated with LBU after long debate on an older webstar as mentioned in this webstar discussion).  
							    	The CI makes this distinction but the wording isn't 100% clear.  So clarifying in this comment. -->
								    <xsl:when test="p/table and (contains($compareText, 'lawnow home page') or contains($compareText, 'government website'))">links</xsl:when>
								    <xsl:otherwise>sectionlist</xsl:otherwise>
							    </xsl:choose>
							</xsl:attribute>
							<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						</navaid:navigationaid>						
					</primlaw:level>
				</xsl:when>
				<xsl:when test="contains(@id, '_PROVLIST')">
					<primlaw:level leveltype="table-of-contents">
						<xsl:apply-templates select="leg:heading/title/refpt"/>
						<!-- 20170901:  MCJ:  Updating handling because leg:sectionlist/p was starting to come out as direct children of primlaw:level. -->
						<!-- <xsl:apply-templates select="@* | node()" /> -->
						<xsl:for-each-group select="node()" group-adjacent="if (self::leg:heading | self::note) then 1 else 0">
							<xsl:choose>
								<!-- pass through this group as found -->
								<xsl:when test="current-grouping-key()=1">
									<xsl:apply-templates select="current-group()" />
								</xsl:when>
								<!-- wrap this group in primlaw:bodytext before processing. --> 
								<xsl:otherwise>
									<primlaw:bodytext>
										<xsl:apply-templates select="current-group()" />
									</primlaw:bodytext>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each-group>
					</primlaw:level>
				</xsl:when>
				<xsl:otherwise>
					<xsl:comment>Unclear what to do with leg:sectionlist in this scenario.</xsl:comment>
				</xsl:otherwise>
			</xsl:choose>
	</xsl:template>

    <!-- leg:levelprelim becomes primlaw:prelim.
    	 This supports instructions specified by id-AU06-19007. -->
	<xsl:template match="leg:levelprelim">
		<!--  Original Target XPath:  primlaw:prelim   -->
		<primlaw:prelim>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:prelim>
	</xsl:template>

    <!-- leg:relatedleg is handled as a textitem of a primlaw:authority-item within a primlaw:authority. 
         This supports instructions specified by id-AU06-19007. -->
    <xsl:template match="leg:relatedleg">
    	<xsl:if test="@type='parent'">
    		<primlaw:authority>
    			<primlaw:authority-item>
    				<textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
    					<xsl:apply-templates select="node()" />
    				</textitem>
    			</primlaw:authority-item>
    		</primlaw:authority>
    	</xsl:if>
    </xsl:template>
	
	<!-- MCJ:  start handling for table elements. -->
	
	<xsl:template match="entry/@charoff">
		<xsl:attribute name="charoff">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>
	
	<!-- MCJ:  end handling for table elements. -->


    <!-- start handling for leg:comntry. -->
	
    <!-- 20170524:  MCJ:  Still suppressing leg:comntry/levelinfo here as I'm not sure what to do with it. -->
	<xsl:template match="leg:comntry/levelinfo" />
	
	<!-- end handling for leg:comntry. -->


</xsl:stylesheet>