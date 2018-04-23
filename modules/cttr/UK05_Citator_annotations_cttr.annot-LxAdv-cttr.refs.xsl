<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	
	xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
	xmlns:ci="http://www.lexis-nexis.com/ci" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita case case2 ci source_cttr docinfo lnf">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqcases_cttr.annot.dita">
		<title>cttr:annotations/@annotationtype="subseqcases"/cttr:annot <lnpid>id-UK05-27823</lnpid></title>
		<body>
			<p>
				<sourcexml>cttr:annotations</sourcexml> becomes <targetxml>cttr:refs/cttr:refsection</targetxml> the child
				element <sourcexml>cttr:annot</sourcexml> becomes <targetxml>cttr:refitem</targetxml> and the attribute
					<sourcexml>@annotationtype</sourcexml> becomes <targetxml>@reftype</targetxml> - Should contain 1 or more
				reference sections based on the values: (cttr:refs/cttr:refsection @reftype="citing-cases",
				"citing-publications", "considered-cases", "consideredlegislation", "appeal-proceedings".) <ul>
					<li>
						<sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>
						<ul>
							<li>
								<targetxml>title</targetxml> becomes <targetxml>title</targetxml>
							</li>
						</ul>
						<pre>
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;heading&gt;
      &lt;title&gt;Cases referring to this case&lt;/title&gt;
    &lt;/heading&gt;
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
					</li>
					<li>
						<sourcexml>cttr:annotations @annotationtype="subseqcases"/cttr:annot</sourcexml> becomes
							<targetxml>cttr:refsection @reftype="citingcases"/cttr:refitem</targetxml>. <note>The value of the
							attribute <sourcexml>cttr:annotations/@annotationtype="subseqcases"</sourcexml> maps to the attribute
								<targetxml>cttr:refsection/@reftype="citing-cases"</targetxml>.</note>
						<p>
							<sourcexml>cttr:annot/@signal</sourcexml> becomes
								<targetxml>cttr:refitem/cttr:citingcase/@treatment</targetxml> and the child elements are described
							below:</p>
						<pre>
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot signal="citation"&gt;...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingcase treatment="citation"&gt;
      ...
      &lt;/cttr:citingcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

          </pre>
						<ul>
							<li>
								<sourcexml>cttr:annotations/cttr:annot/case:info</sourcexml> becomes
									<targetxml>cttr:refsection/cttr:refitem/cttr:citingcase/cttr:caseinfo</targetxml>. <ul>
									<li>
										<sourcexml>cttr:annot/case:info/case:casename</sourcexml> becomes
											<targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/
											caseinfo:casename/caseinfo:fullcasename</targetxml>. <note>The child element
												<sourcexml>emph</sourcexml> is dropped.</note>
										<pre>
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot signal="citation"&gt;
    &lt;case:info&gt;
      &lt;case:casename&gt;
        &lt;emph typestyle="bf"&gt;Baturina v Times Newspapers Ltd&lt;/emph&gt;
      &lt;/case:casename&gt;
    &lt;/case:info&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingcase treatment="citation"&gt;
        &lt;cttr:caseinfo&gt;
          &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Baturina v Times Newspapers Ltd&lt;/caseinfo:fullcasename&gt;
          &lt;/caseinfo:casename&gt;
        &lt;/cttr:caseinfo&gt;
      &lt;/cttr:citingcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
									</li>
									<li>
										<note>The conversion of <sourcexml>case:courtinfo</sourcexml> is discussed in the
													<b><i>case:courtinfo-to-jurisinfo:courtinfo</i></b> section.</note>
									</li>
									<li>
										<note>The conversion of <sourcexml>case:dates</sourcexml> is discussed in the
													<b><i>case:dates-to-decision:dates</i></b> section.</note>
									</li>
								</ul>
							</li>
							<li> The tag <sourcexml>case:citations</sourcexml> is omitted but the content is maintained as described
								below - <ul>
									<li> The tag <sourcexml>case:citetext</sourcexml> is omitted but the content is maintained as
										described below: <ul>
											<li>
												<sourcexml>ci:cite</sourcexml> becomes
													<targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. <note>Please refer to general
													markup section for more details on <sourcexml>ci:cite</sourcexml>.</note>
												<ul>
													<li>
														<sourcexml>ci:case</sourcexml> becomes <targetxml>lnci:case</targetxml>. </li>
													<li>
														<sourcexml>ci:content</sourcexml> becomes <targetxml>lnci:content</targetxml>. </li>
													<li>
														<sourcexml>ci:sesslaw</sourcexml> becomes <targetxml>lnci:sesslaw</targetxml>. </li>
												</ul>
											</li>
										</ul>
										<pre>
&lt;case:citations&gt;
  &lt;case:citetext&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref&gt;
          &lt;ci:reporter value="EWCACIV"/&gt;
          &lt;ci:edition&gt;
            &lt;ci:date year="2011"/&gt;
          &lt;/ci:edition&gt;
          &lt;ci:page num="308"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;[2011] EWCA Civ 308&lt;/ci:content&gt;
    &lt;/ci:cite&gt;, [2011] EMLR 343, 
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref&gt;
          &lt;ci:reporter value="ALLERD"/&gt;
          &lt;ci:volume num="03"/&gt;
            &lt;ci:edition&gt;
              &lt;ci:date year="2011"/&gt;
            &lt;/ci:edition&gt;
            &lt;ci:page num="268"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;[2011] All ER (D) 268 (Mar)&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;
<b>Becomes</b>
&lt;cttr:citations&gt;
  &lt;lnci:cite&gt;
    &lt;lnci:case&gt;
      &lt;lnci:caseref&gt;
        &lt;lnci:reporter value="EWCACIV"/&gt;
        &lt;lnci:edition&gt;
          &lt;lnci:date year="2011"/&gt;
        &lt;/lnci:edition&gt;
        &lt;lnci:page num="308"/&gt;
      &lt;/lnci:caseref&gt;
    &lt;/lnci:case&gt;
    &lt;lnci:content&gt;[2011] EWCA Civ 308&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;, [2011] EMLR 343, 
  &lt;lnci:cite&gt;
    &lt;lnci:case&gt;
      &lt;lnci:caseref&gt;
        &lt;lnci:reporter value="ALLERD"/&gt;
        &lt;lnci:volume num="03"/&gt;
        &lt;lnci:edition&gt;
          &lt;lnci:date year="2011"/&gt;
        &lt;/lnci:edition&gt;
        &lt;lnci:page num="268"/&gt;
      &lt;/lnci:caseref&gt;
    &lt;/lnci:case&gt;
    &lt;lnci:content&gt;[2011] All ER (D) 268 (Mar)&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;

</pre>
									</li>
								</ul>
							</li>
							<li>
								<sourcexml>cttr:use-group</sourcexml> becomes <targetxml>cttr:citingcase/cttr:usagegroup</targetxml> and
								the child element is described below: <ul>
									<li>
										<sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and the attributes :
											<sourcexml>cttr:use/@signal</sourcexml> becomes <targetxml>cttr:usage @usagetype</targetxml>. <pre>
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot&gt;
    &lt;cttr:use-group&gt;
      &lt;cttr:use signal="neutral"&gt;Considered&lt;/cttr:use&gt;
    &lt;/cttr:use-group&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingcase&gt;
        &lt;cttr:usagegroup&gt;
          &lt;cttr:usage usagetype="neutral"&gt;
            &lt;text&gt;Considered&lt;/text&gt;
          &lt;/cttr:usage&gt;
        &lt;/cttr:usagegroup&gt;
      &lt;/cttr:citingcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
										<note> Attributes <targetxml>@negativesortweight</targetxml> and
												<targetxml>@positivesortweight</targetxml> are added to the element
												<targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are calculated based on
											the designation, annotation type, usagegroup type and decision date. Please refer to <xref
												href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note>
									</li>
								</ul>
							</li>
							<li>
								<sourcexml>remotelink/@service="DOC-ID"</sourcexml> becomes <targetxml>ref:crossreference</targetxml>
								that comes with the required child element <targetxml>ref:content</targetxml> and with the attributes
									<targetxml>ref:crossreference/@crossreferencetype="citatorAlert"</targetxml> and
									<targetxml>ref:crossreference/@referencedresourcetype="citator"</targetxml>.
										<p><targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> is determined based on the
									value of the parent <sourcexml>cttr:annot/@signal</sourcexml> as described below: <ul>
										<li><sourcexml>cttr:annot/@signal="negative"</sourcexml> becomes
												<targetxml>ref:crossreference/@referencedresourcesentiment="negative"</targetxml></li>
										<li><sourcexml>cttr:annot/@signal="cautionary"</sourcexml> becomes
												<targetxml>ref:crossreference/@referencedresourcesentiment="cautionary"</targetxml></li>
										<li><sourcexml>cttr:annot/@signal="positive"</sourcexml> becomes
												<targetxml>ref:crossreference/@referencedresourcesentiment="positive"</targetxml></li>
										<li><sourcexml>cttr:annot/@signal="neutral"</sourcexml> becomes
												<targetxml>ref:crossreference/@referencedresourcesentiment="neutral"</targetxml></li>
										<li><sourcexml>cttr:annot/@signal="citation"</sourcexml> becomes
												<targetxml>ref:crossreference/@referencedresourcesentiment="none"</targetxml></li>
									</ul></p>
								<ul>
									<li> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with attributes and
										children as follows: <ul>
											<li> If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
													<li>
														<targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID". </li>
													<li>
														<targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml>
														followed by hyphen and concatenated with <sourcexml>@refpt</sourcexml> or
															<sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use
															<sourcexml>@remotekey2</sourcexml>). </li>
												</ul>
											</li>
											<li> If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
													<li>
														<targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID". </li>
													<li>
														<targetxml>ref:key-value/@value</targetxml> will be the value of
															<sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
															<sourcexml>@docidref</sourcexml>. </li>
													<li> Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
															<sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present
														(if both are present, use <sourcexml>@refpt</sourcexml>). </li>
												</ul>
											</li>
										</ul>
										<note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
												<sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU manifest
											file.</note>
										<note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an
											underscore added at the start. Also apply other identifier data type formatting as used for
												<targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to
											underscore.</note>
										<note>Please refer to general markup section for more details on <sourcexml>remotelink</sourcexml>
											and <sourcexml>inlineobject</sourcexml> conversion instructions.</note>
									</li>
								</ul>
								<pre>
&lt;cttr:annotations annotationtype="subseqcases"&gt;                
  &lt;cttr:annot signal="neutral"&gt;
    &lt;remotelink dpsi="03W6" remotekey1="REFPTID" service="DOC-ID" refpt="318052" docidref="1234"&gt;
      &lt;inlineobject filename="4.gif" type="image" attachment="web-server"/&gt;
    &lt;/remotelink&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:citingcase&gt;
        &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="neutral" referencedresourcetype="citator"&gt;
          &lt;ref:content/&gt;
          &lt;ref:locator anchoridref="_318052"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03W6-1234"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:crossreference&gt;
      &lt;/cttr:citingcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
							</li>
						</ul>
					</li>
				</ul>
			</p>
			<section>
				<title>Changes</title>
				<p>2017-01-17: <ph id="change_20170117_brt">Use <sourcexml>cttr:annot/@signal</sourcexml> to determine the value
						for <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</ph></p>
				<p>2013-12-11: <ph id="change_20131211_brt">Modified instructions to determine the value for
							<targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> - replaced 'citation' with
						'none'.</ph></p>
				<p>2013-11-13: <ph id="change_20131113_brt">Added instructions to determine the value for
							<targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</ph></p>
				<p>2013-10-22: <ph id="change_20131022_brt">Added instructions to convert
							<sourcexml>cttr:annot/@signal</sourcexml> to
							<targetxml>cttr:refitem/cttr:citingcase/@treatment</targetxml>.</ph></p>
				<p>2013-08-30: <ph id="change_20130830_raj">Added reference to instruction for attributes
							<targetxml>@negativesortweight</targetxml> and <targetxml>@positivesortweight</targetxml> of
							<targetxml>cttr:usagegroup</targetxml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\subseqcases_cttr.annot.dita  -->
	<xsl:template match="source_cttr:annotations">
		<!--  Original Target XPath:  cttr:refs/cttr:refsection   -->
		<cttr:refs>
			<cttr:refsection>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refsection>
		</cttr:refs>
	</xsl:template>

	<xsl:template match="source_cttr:annot">
		<!--  Original Target XPath:  cttr:refitem   -->
		<!-- JD: 20170525: input can have many case:info, but output only allows one cttr:citingcase per cttr:refitem -->
				<!--
				JD: schema order:
				caseinfo:casename
				caseinfo:alternatecasename
				popname
				caseinfo:docketnum
				cttr:annotationrefs
				cttr:citations
				jurisinfo:courtinfo
				courtcase:judges
				caseinfo:constituents
				decision:dates
				ref:citations
				-->
		<cttr:refitem>
			<xsl:if test="case:info or case2:info">
				<!-- generate proper wrapper element based on @annotationtype -->
				<xsl:variable name="annotationtypeElementName" as="text()?">
					<xsl:choose>
						<xsl:when test="../@annotationtype='appealproc'"><xsl:value-of select="'appealproceeding'"/></xsl:when>
						<xsl:when test="../@annotationtype='consideredcases'"><xsl:value-of select="'consideredcase'"/></xsl:when>
						<xsl:when test="../@annotationtype='subseqarticles'"><xsl:value-of select="'citingpub'"/></xsl:when>
						<xsl:when test="../@annotationtype='subseqcases'"><xsl:value-of select="'citingcase'"/></xsl:when>
						<!-- trap when other values may be used; generate error.  See AU02 -->
						<xsl:otherwise><xsl:value-of select="'unhandled'"/></xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:element name="{concat('cttr:',$annotationtypeElementName)}">
					<xsl:apply-templates select="@*"/>
					<!-- JD: DT output shows that if source @annotationtype != 'appealproc' then cttr:usagegroup is output
						before cttr:caseinfo; otherwise after.-->
					<xsl:if test="$annotationtypeElementName!='appealproceeding'">
						<xsl:apply-templates select="source_cttr:use-group"/>
					</xsl:if>
					<cttr:caseinfo>
						<xsl:for-each select=".//case:info | .//case2:info">
							<xsl:call-template name="case.info.body_contents"/>
						</xsl:for-each>
					</cttr:caseinfo>
					<!-- JD: DT output shows that if source @annotationtype != 'appealproc' then cttr:usagegroup is output
						before cttr:caseinfo; otherwise after.-->					
					<xsl:if test="$annotationtypeElementName='appealproceeding'">							
						<xsl:apply-templates select="source_cttr:use-group"/>
					</xsl:if>					
					<!-- ref:crossreference -->
					<xsl:apply-templates select="remotelink" mode="ref.crossreference"/>
				</xsl:element>
			</xsl:if>
			<xsl:apply-templates select="case:references | case2:references"/>
		</cttr:refitem>
	</xsl:template>
	
	<xsl:template match="remotelink[parent::source_cttr:annot]" mode="ref.crossreference">
		<xsl:call-template name="remotelinkDOCID"/>		
	</xsl:template>
	
	<xsl:template name="case.info.body_contents">
		<!-- fullcasename / alternatecasename-->
		<xsl:apply-templates select="case:casename | case2:casename"/>
		<!-- docket number -->
		<!-- • The content, following the last colon(:) inside case:casename and the content within ci:cite/ci:content should be concatenated and placed in cttr:caseinfo/caseinfo:docketnum. -->		
		<xsl:apply-templates select=".//ci:cite[not(parent::case:parallelcite or parent::case2:parallelcite)]/ci:content[1]" 
			mode="caseinfo.docketnum"/>
		<!-- cttr:annotationrefs -->
		
		<!-- cttr:citations; when under cttr:body the cites won't be within <case:info> -->
		<xsl:if test="following-sibling::case:citations or following-sibling::case2:citations">
			<!-- • Each ci:cite should also be mapped to cttr:caseinfo//cttr: cttr:citations/lnci:cite. -->
			<cttr:citations>
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite" 
					mode="cttr.citations"/>
				<!--xsl:for-each select="following-sibling::*:citations//ci:cite[not(parent::case:parallelcite or parent::case2:parallelcite)]"-->
				<xsl:for-each select="following-sibling::*:citations/node()">
					<xsl:apply-templates select="."/>
				</xsl:for-each>
				<!--
						Within the same cttr:caseinfo/cttr:citations element that contains the parallel citations, create the LexisCitation from case:parallelcite that
						contains ci:cite/ci:content/remotelink as follows:
						-->
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite"
					mode="remotelink"/>
			</cttr:citations>					
		</xsl:if>
		
		<!-- jurisinfo:courtinfo -->
		<xsl:apply-templates select="case:courtinfo | case2:courtinfo"/>
		
		<!-- decision:dates -->
		<xsl:apply-templates select="case:dates | case2:dates"/>
		
		<!-- ref:citations -->				
		<xsl:if test=".//ci:cite[not(ci:content/remotelink)]">
			<!-- • Each ci:cite should be mapped to cttr:caseinfo/ref:citations/ref:cite4thisresource. -->
			<!-- JD: note that cttr:citations appear before ref:citations -->
			<ref:citations>
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite" 
					mode="ref.citations"/>
				<xsl:for-each select=".//ci:cite[not(ci:content/remotelink) 
					and not(ancestor::*[name()=('case:parallelcite', 'case:reportercite', 'case2:parallelcite', 'case2:reportercite')])]">
					<ref:cite4thisresource>
						<xsl:apply-templates select="." />
					</ref:cite4thisresource>
				</xsl:for-each>
			</ref:citations>
		</xsl:if>
	</xsl:template>
	
	

	<!-- JD: 20170525: input can have many case:info, but output only allows one cttr:citingcase per cttr:refitem.
			 These have been accounted for above
	-->
	<xsl:template match="case:info[parent::source_cttr:annot] | case2:info[parent::source_cttr:annot]"/>
	
	<xsl:template match="case:citations[parent::source_cttr:annot] | case2:citations[parent::source_cttr:annot]">
		<cttr:citations>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citations>
	</xsl:template>
	
	<xsl:template match="case:citetext[ancestor::source_cttr:annot] | case2:citetext[ancestor::source_cttr:annot]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="@annotationtype">
		<xsl:choose>
			<xsl:when test=".='subseqcases'">
				<xsl:attribute name="reftype" select="'citing-cases'"/>				
			</xsl:when>
			<xsl:when test=".='subseqarticles'">
				<xsl:attribute name="reftype" select="'citing-publications'"/>				
			</xsl:when>
			<xsl:when test=".='consideredcases'">
				<xsl:attribute name="reftype" select="'considered-cases'"/>				
			</xsl:when>
			<xsl:when test=".='appealproc'">
				<xsl:attribute name="reftype" select="'appeal-proceedings'"/>				
			</xsl:when>
			<xsl:when test=".='consideredleg'">
				<xsl:attribute name="reftype" select="'considered-legislation'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="reftype" select="'other'"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="source_cttr:annot/@signal">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/@treatment   -->
		<xsl:attribute name="treatment">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="remotelink[@service='DOC-ID' and parent::source_cttr:annot]" priority="1">
		<!--  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:citingcase/cttr:caseinfo   -->
		<cttr:citingcase>
			<xsl:call-template name="remotelinkDOCID"/>			
		</cttr:citingcase>
	</xsl:template>
	
	
	<xsl:template match="source_cttr:annotations/source_cttr:annot/case:references | source_cttr:annotations/source_cttr:annot/case2:references">
		<!--  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:citingpub   -->
		<cttr:citingpub>
			<!--
cttr:annot/@signal becomes cttr:refitem/cttr:citingpub/@treatment.

Note: If there is no value for cttr:annot/@signal, a value for cttr:citingpub/@treatment can be determined from the name of the gif
file in cttr:annot/remotelink/inlineobject/@filename:

(If no @signal and no /remotelink/inlineobject/@filename then setting to 'unspecified'). 
			-->
			<xsl:attribute name="treatment">
				<xsl:choose>
					<xsl:when test="@signal"><xsl:value-of select="@signal"/></xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="lnf:getTreatmentFromFilename(parent::source_cttr:annot)"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:if test="node()">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</xsl:if>
		</cttr:citingpub>
	</xsl:template>
	
	<xsl:function name="lnf:getTreatmentFromFilename" as="text()">
		<xsl:param name="node" as="node()"/>
		<xsl:choose>
			<xsl:when test="$node/remotelink/inlineobject/@filename='1.gif'"><xsl:value-of select="'negative'"/></xsl:when>
			<xsl:when test="$node/remotelink/inlineobject/@filename='2.gif'"><xsl:value-of select="'cautionary'"/></xsl:when>
			<xsl:when test="$node/remotelink/inlineobject/@filename='3.gif'"><xsl:value-of select="'positive'"/></xsl:when>
			<xsl:when test="$node/remotelink/inlineobject/@filename='4.gif'"><xsl:value-of select="'neutral'"/></xsl:when>
			<xsl:when test="$node/remotelink/inlineobject/@filename='5.gif'"><xsl:value-of select="'citation'"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="'unspecified'"/></xsl:otherwise>
		</xsl:choose>
	</xsl:function>

</xsl:stylesheet>