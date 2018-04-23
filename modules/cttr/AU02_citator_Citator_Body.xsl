<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita source_case ci source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Body">
  <title>Body <lnpid>id-AU02-18411</lnpid></title>
  <body>

    <p><sourcexml>cttr:body</sourcexml> becomes <targetxml>cttr:body</targetxml></p>
    <p><targetxml>cttr:history</targetxml> - [This structure has been created to support future functionality] , <targetxml>cttr:refs</targetxml> and
        <targetxml>cttr:descriptors</targetxml> are created as children of <targetxml>cttr:body</targetxml></p>

    <p>
      <sourcexml>cttr:body/cttr:content/cttr:annotations @annotationtype="litigation-history"</sourcexml> becomes
        <targetxml>cttr:body/cttr:history/cttr:casehist</targetxml>. <note>Please note that <sourcexml>cttr:content</sourcexml> - This is a container
        element that does not need to be carried forward in the conversion. Also, the following conversion instruction is applicable only if the
        attribute value is "litigation-history" : <sourcexml>cttr:annotations @annotationtype="litigation-history"</sourcexml>. For all other values,
        please refer to "References" section. </note> The children are described below: <ul>
        <li>
          <sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>. The children are described below: <ul>
            <li>
              <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
            </li>
          </ul>
          <pre>

&lt;cttr:body&gt;
  &lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="litigation-history"&gt;
      &lt;heading&gt;
        &lt;title&gt;Litigation History&lt;/title&gt;
      &lt;/heading&gt;
    &lt;/cttr:annotations&gt;
  &lt;/cttr:content&gt;
&lt;/cttr:body&gt;

<b>Becomes</b>

&lt;cttr:body&gt;
  &lt;cttr:history&gt;
    &lt;cttr:casehist&gt;...
      &lt;heading&gt;
        &lt;title&gt;Litigation History&lt;/title&gt;
      &lt;/heading&gt;
    &lt;/cttr:casehist&gt;
  &lt;/cttr:history&gt;
&lt;/cttr:body&gt;
                
</pre>
        </li>
          <li>Create <targetxml>cttr:priorhist</targetxml> and process the children as follows:
            <ul>
                  <li>Within <targetxml>cttr:priorhist</targetxml>, create
                    <targetxml>cttr:histsummary[summarytype="date_court_summary"]</targetxml>. </li>
                  <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                    <sourcexml>cttr:annotations[@annotationtype="litigation-history"]</sourcexml>, collect the unique
                    court values in the path
                    <sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>
                    (for example: ACTCA, NSWCCA, NSWLEC, NSWSC, QCA, SASC).</li>
                  <li>For each unique court value, create
                    <targetxml>cttr:histsummarygroup</targetxml> and assign
                    <targetxml>@grouptype</targetxml> that court value (for example,
                    <targetxml>cttr:histsummarygroup[@grouptype="NSWDC"]</targetxml></li>
                  <li>For each <sourcexml>cttr:annot</sourcexml> that contains that court value,
              create <targetxml>cttr:histsummaryitem</targetxml> with
                <targetxml>@documenttype="case"</targetxml>, and
                <targetxml>@value="decisiondate"</targetxml>. </li><li>Convert the decision date found in
                <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate/date</sourcexml>
              to the format yyyy-mm-dd, and populate <targetxml>cttr:histsummaryitem</targetxml>
              with this date. For
                example:<pre>&lt;cttr:histsummarygroup grouptype="NSWDC"&gt;
  &lt;cttr:histsummaryitem @value="decisiondate" documenttype="case"&gt;2006-04-10&lt;/cttr:histsummaryitem&gt;
&lt;/cttr:histsummarygroup&gt;</pre><p>Following
                is an example of the complete markup for a litigation history
                graph:<pre>&lt;cttr:history&gt;
    &lt;cttr:casehist&gt;
        &lt;heading&gt;
            &lt;title&gt;Litigation History&lt;/title&gt;
        &lt;/heading&gt;
        &lt;cttr:priorhist&gt;   
            &lt;cttr:histsummary summarytype="date_court_summary"&gt;
                &lt;cttr:histsummarygroup grouptype="NSWDC"&gt;
                    &lt;cttr:histsummaryitem value="decisiondate" documenttype="case"&gt;2006-04-10&lt;/cttr:histsummaryitem&gt;
                &lt;/cttr:histsummarygroup&gt;
                &lt;cttr:histsummarygroup grouptype="NSWCCA"&gt;
                    &lt;cttr:histsummaryitem value="decisiondate" documenttype="case"&gt;2006-10-26&lt;/cttr:histsummaryitem&gt;
                &lt;/cttr:histsummarygroup&gt;
                &lt;cttr:histsummarygroup grouptype="HCA"&gt;
                    &lt;cttr:histsummaryitem value="decisiondate" documenttype="case"&gt;2010-05-26&lt;/cttr:histsummaryitem&gt;
                &lt;/cttr:histsummarygroup
            &lt;/cttr:histsummary&gt;   
            
            &lt;cttr:histitem&gt;
                .........
            &lt;/cttr:histitem&gt;
            .............
        &lt;/cttr:priorhist&gt;
    &lt;/cttr:casehist&gt;
&lt;/cttr:history&gt;
            </pre>.</p>
            </li>
                </ul>
              </li>
              
            <li> The attribute <sourcexml>cttr:annot @signal="negative"</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision
            @treatment="negative"</targetxml>. <note> Please note that the value of the attribute <sourcexml>cttr:annot @signal="negative"</sourcexml>
            maps to the attribute <targetxml>cttr:histdecision @treatment="negative"</targetxml>. </note> The attribute <sourcexml>cttr:annot
            @id</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision @xml:id</targetxml>. The children are described below: <ul>
            <li>
              <sourcexml>case:info</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:caseinfo</targetxml>. The
              children are described below: <ul>
                <li>
                  <sourcexml>case:casename</sourcexml> becomes <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>. <pre>

&lt;cttr:body&gt;
  &lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="litigation-history"&gt;
      &lt;case:info&gt;
        &lt;case:casename&gt;L Shaddock &amp;amp; Associates Pty Ltd v Parramatta City Council&lt;/case:casename&gt;
      &lt;/case:info&gt;
    &lt;/cttr:annotations&gt;
  &lt;/cttr:content&gt;
&lt;/cttr:body&gt;

<b>Becomes</b>

&lt;cttr:body&gt;
  &lt;cttr:history&gt;
    &lt;cttr:casehist&gt;
      &lt;cttr:priorhist&gt;
        &lt;cttr:histitem&gt;
          &lt;cttr:histdecision&gt;
            &lt;cttr:caseinfo&gt;...
              &lt;caseinfo:casename&gt;
                &lt;caseinfo:fullcasename&gt;L Shaddock &amp;amp; Associates Pty Ltd v Parramatta City Council&lt;/caseinfo:fullcasename&gt;
              &lt;/caseinfo:casename&gt;
            &lt;/cttr:caseinfo&gt;
          &lt;/cttr:histdecision&gt;
        &lt;/cttr:histitem&gt;
      &lt;/cttr:priorhist&gt;              
    &lt;/cttr:casehist&gt;
  &lt;/cttr:history&gt;
&lt;/cttr:body&gt;
                
</pre>
                </li>
                <li>
                  <note>The conversion of <sourcexml>case:courtinfo</sourcexml> is discussed in the Head topic (AU Citator section).</note>
                </li>
                <li>
                  <sourcexml>case:citations</sourcexml> is omitted but the content is maintained as described below : <ul>
                    <li> The tag <sourcexml>case:citetext</sourcexml> is omitted but the content is maintained as described below: <ul>
                        <li>
                          <sourcexml>ci:cite</sourcexml> becomes <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. <ul>
                            <li>
                              <sourcexml>ci:case</sourcexml> becomes <targetxml>lnci:case</targetxml>. <ul>
                                <li>
                                  <sourcexml>ci:caseinfo</sourcexml> becomes <targetxml>lnci:caseinfo</targetxml>
                                  <ul>
                                    <li>
                                      <sourcexml>ci:decisiondate</sourcexml> becomes <targetxml>lnci:decisiondate</targetxml>
                                    </li>
                                  </ul>
                                </li>
                                <li>
                                  <sourcexml>ci:caseref</sourcexml> becomes <targetxml>lnci:caseref</targetxml>. The attribute <sourcexml>ci:caseref
                                    @ID</sourcexml> becomes <targetxml>lnci:caseref @ID</targetxml> and <sourcexml>ci:caseref @spanref</sourcexml>
                                  should be dropped. The children are described below : <ul>
                                    <li>
                                      <sourcexml>ci:reporter @value</sourcexml> becomes <targetxml>lnci:reporter @value</targetxml>. </li>
                                    <li>
                                      <sourcexml>ci:edition</sourcexml> becomes <targetxml>lnci:edition</targetxml>. <ul>
                                        <li> The child element <sourcexml>ci:edition/ci:date @year</sourcexml> becomes
                                            <targetxml>lnci:edition/lnci:date @year</targetxml>. </li>
                                      </ul>
                                    </li>
                                    <li>
                                      <sourcexml>ci:page @num</sourcexml> becomes <targetxml>lnci:page @num</targetxml>. </li>
                                    <li>
                                      <sourcexml>ci:refnum @num</sourcexml> becomes <targetxml>lnci:refnum @num</targetxml>. </li>
                                  </ul>
                                </li>
                              </ul>
                              <pre>
&lt;case:citations&gt;
  &lt;case:citetext&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseinfo&gt;
          &lt;ci:decisiondate year="1988"/&gt;
        &lt;/ci:caseinfo&gt;
        &lt;ci:caseref ID="cr000196" spanref="cr000196-001"&gt;
          &lt;ci:reporter value="ALD"/&gt;
          &lt;ci:volume num="15"/&gt;
          &lt;ci:page num="310"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;        
    &lt;/ci:cite&gt;
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;cttr:citations&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseinfo&gt;
          &lt;lnci:decisiondate year="1988"/&gt;
        &lt;/lnci:caseinfo&gt;
        &lt;lnci:caseref ID="cr000196"&gt;
          &lt;lnci:reporter value="ALD"/&gt;
          &lt;lnci:volume num="15"/&gt;
          &lt;lnci:page num="310"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;   
    &lt;/lnci:cite&gt;
  &lt;/cttr:citations&gt;
&lt;/cttr:caseinfo&gt;                
</pre>
                            </li>
                            <li>
                              <sourcexml>ci:content</sourcexml> becomes <targetxml>/cttr:caseinfo/cttr:citations/lnci:cite/lnci:content</targetxml>
                              and the child element is described below : <ul>
                                <li> The tags <sourcexml>citefragment</sourcexml>, the attribute <sourcexml>citefragment @searchtype</sourcexml> and
                                  its child element <sourcexml>ci:span</sourcexml> are omitted but the content is maintained in
                                    <targetxml>lnci:content</targetxml>
                                </li>
                              </ul>
                              <pre>
&lt;ci:content&gt;
  &lt;citefragment searchtype="CASE-CITE-REF"&gt;
    &lt;ci:span spanid="cr000006-001"&gt;[2009] FCAFC 166&lt;/ci:span&gt;; 
    &lt;ci:span spanid="cr000007-001"&gt;BC200910812&lt;/ci:span&gt;
  &lt;/citefragment&gt;
&lt;/ci:content&gt;

<b>Becomes</b>
&lt;lnci:content&gt;[2009] FCAFC 166; BC200910812&lt;/lnci:content&gt;
                
</pre>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li>
                  <sourcexml>cttr:use-group</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:usagegroup</targetxml>
                  and the child element is described below: <ul>
                    <li>
                      <sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and the attributes : <sourcexml>cttr:use
                        @signal</sourcexml> becomes <targetxml>cttr:usage @usagetype</targetxml>
                    </li>
                  </ul>
                  <pre>
&lt;cttr:use-group&gt;
  &lt;cttr:use signal="neutral"&gt;Considered&lt;/cttr:use&gt;
&lt;/cttr:use-group&gt;

<b>Becomes</b>

&lt;cttr:body&gt;
  &lt;cttr:history&gt;
    &lt;cttr:casehist&gt;
      &lt;cttr:priorhist&gt;
        &lt;cttr:histitem&gt;
          &lt;cttr:histdecision&gt;
            &lt;cttr:usagegroup&gt;
              &lt;cttr:usage usagetype="negative"&gt;
                &lt;text&gt;Considered&lt;/text&gt;
              &lt;/cttr:usage&gt;
            &lt;/cttr:usagegroup&gt;
          &lt;/cttr:histdecision&gt;
        &lt;/cttr:histitem&gt;
      &lt;/cttr:priorhist&gt;              
    &lt;/cttr:casehist&gt;
  &lt;/cttr:history&gt;
&lt;/cttr:body&gt;
                
</pre>
                </li>
                <li>
                  <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                    <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/ref:crossreference</targetxml> that comes with the required child
                  element <targetxml>ref:content</targetxml> and with the attribute <targetxml>ref:crossreference
                    @crossreferencetype="citatorAlert"</targetxml>. <ul>
                    <li>
                      <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with attributes and children as follows: <ul>
                          <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                              <li>
                                <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                              <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and
                                concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both
                                are present, use <sourcexml>@remotekey2</sourcexml>).</li>
                            </ul>
                          </li>
                          <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                              <li>
                                <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                              <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and
                                concatenated with <sourcexml>@docidref</sourcexml>.</li>
                              <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or
                                  <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </p>
                      <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml>
                        or capture value from the LBU manifest file.</note>
                      <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at the start. Also
                        apply other identifier data type formatting as used for <targetxml>xml:id</targetxml> and
                          <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to underscore.</note>
                    </li>
                    <li>
                      <p> The child element <sourcexml>inlineobject</sourcexml> is converted as follows - <ul>
                          <li>
                            <sourcexml>inlineobject @alttext="Citation information only - Click for CaseBase entry"</sourcexml> becomes
                              <targetxml>ref:crossreference @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for
                              CaseBase entry" should be removed. </li>
                        <li>
                          <sourcexml>inlineobject @alttext="Citation information available - Click for CaseBase entry"</sourcexml> becomes
                          <targetxml>ref:crossreference @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for
                          CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Positive treatment indicated - Click for CaseBase entry"</sourcexml> becomes
                              <targetxml>ref:crossreference @referencedresourcesentiment="positive"/ref:content</targetxml>, but the text " - Click
                            for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Neutral treatment indicated - Click for CaseBase entry"</sourcexml> becomes
                              <targetxml>ref:crossreference @referencedresourcesentiment="neutral"/ref:content</targetxml>, but the text " - Click for
                            CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Negative treatment indicated - Click for CaseBase entry"</sourcexml> becomes
                              <targetxml>ref:crossreference @referencedresourcesentiment="negative"/ref:content</targetxml>, but the text " - Click
                            for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Cautionary treatment indicated - Click for CaseBase entry"</sourcexml> becomes
                              <targetxml>ref:crossreference @referencedresourcesentiment="cautionary"/ref:content</targetxml>, but the text " - Click
                            for CaseBase entry" should be removed. </li>
                        </ul>
                        <note>
                          <sourcexml>inlineobject[@alttext="Click for CaseBase entry"]</sourcexml> becomes
                            <targetxml>ref:crossreference/ref:content</targetxml>. Do not populate <targetxml>@referencedresourcesentiment</targetxml>
                          in this scenario. </note>
                        <note> The content of <sourcexml>inlineobject</sourcexml> is captured in <targetxml>ref:crossreference</targetxml> and its
                          children as decribed in the above instructions. For the handling of icon, the LBU will need to identify icon images
                          definitively. Please refer to inlineobect in the general markup section for more details on handling the icon/images. </note>
                        <pre>

&lt;cttr:annotations annotationtype="litigation-history"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0018" docidref="ABCD_1234" refpt="13677" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Negative treatment indicated - Click for CaseBase entry" attachment="web-server" filename="1.gif" type="image"/&gt;
    &lt;/remotelink&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>

&lt;cttr:body&gt;
  &lt;cttr:history&gt;
    &lt;cttr:casehist&gt;
      &lt;cttr:priorhist&gt;
        &lt;cttr:histitem&gt;
          &lt;cttr:histdecision&gt;
            &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
              &lt;ref:content&gt;Negative treatment indicated&lt;/ref:content&gt;
              &lt;ref:locator anchoridref="_13677"&gt;
                &lt;ref:locator-key&gt;
                  &lt;ref:key-name name="DOC-ID"/&gt;
                  &lt;ref:key-value value="0018-ABCD_1234"/&gt;
                &lt;/ref:locator-key&gt;                
              &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
          &lt;/cttr:histdecision&gt;
        &lt;/cttr:histitem&gt;
      &lt;/cttr:priorhist&gt;              
    &lt;/cttr:casehist&gt;
  &lt;/cttr:history&gt;
&lt;/cttr:body&gt;                
</pre>
                      </p>
                    </li>

                  </ul>
                </li>

              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2014-06-18: <ph id="change_20140618_brt">Added instructions to create Litigation History Table inside 
        <targetxml>cttr:priorhist/cttr:histsummary</targetxml>.</ph></p>
    </section>
  </body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Body.dita  -->

	<xsl:key name="lit-hist-court-values" match="source_cttr:annotations[@annotationtype='litigation-history']/source_cttr:annot" use="source_case:info/source_case:courtinfo/source_case:courtcode"/>
	

	<xsl:template match="source_cttr:body">
		<cttr:body>  
			  <xsl:for-each-group select="source_cttr:content/abstract | source_cttr:content/catchwordgrp | source_cttr:content/source_cttr:summary | 
			    source_cttr:content/source_cttr:wordphrasegrp | source_cttr:content/source_cttr:annotations" 
			    group-adjacent="if (self::source_cttr:annotations) then 0 else 1">
			    <xsl:choose>
			      <xsl:when test="current-grouping-key()=0">
			        <xsl:for-each-group select="current-group()" group-adjacent=" if (self::source_cttr:annotations[@annotationtype='litigation-history']) then 0 else 1">
			         <xsl:choose>
			           <xsl:when test="current-grouping-key()=0">
			             <xsl:apply-templates select="current-group()"/>
			           </xsl:when>
			           <xsl:otherwise>
			             <cttr:refs>
			               <xsl:apply-templates select="current-group()"/>
			             </cttr:refs>
			           </xsl:otherwise>
			         </xsl:choose>			          
			        </xsl:for-each-group>
			      </xsl:when>
			      <xsl:otherwise>
			        <!-- descriptors -->              	        
			          <xsl:for-each-group select="current-group()" group-adjacent=" if (self::catchwordgrp | self::source_cttr:summary) then 0 else 1">
			            <xsl:choose>
			              <xsl:when test="current-grouping-key()=1">
			                <xsl:apply-templates select="current-group()"/>
			              </xsl:when>
			              <xsl:otherwise>
			                <cttr:descriptors>
			                <cttr:descriptorsection descriptortype="catchwords-and-digest">
			                  <xsl:apply-templates select="current-group()"/>
			                </cttr:descriptorsection>
			                </cttr:descriptors>
			              </xsl:otherwise>
			            </xsl:choose>
			          </xsl:for-each-group>              		 
			      </xsl:otherwise>			        
			    </xsl:choose>
			  </xsl:for-each-group>			
		</cttr:body>
	</xsl:template>
	
	
	<xsl:template match="source_cttr:annotations[@annotationtype='litigation-history']" priority="25">
		<cttr:history>
	  <xsl:variable name="litigationHistoryAnnots">
			<xsl:copy-of select="."/>
		</xsl:variable>
		<cttr:casehist>
			<xsl:apply-templates select="heading"/>
			<cttr:priorhist>
			  <xsl:if test="source_cttr:annot/source_case:info/source_case:courtinfo/source_case:courtcode">
				<cttr:histsummary summarytype="date_court_summary">
					<xsl:for-each select="distinct-values(source_cttr:annot/source_case:info/source_case:courtinfo/source_case:courtcode)">
						<cttr:histsummarygroup>
							<xsl:variable name="group-type" select="."/>
						  <!-- JL per webstar 7041541, @grouptype NMTOKEN cannot contain parentheses, but ICt(Cth) is correct data.
						    per Andrew Martin will replace open paren with hyphen and closing paren with nothing
						    making it ICt-Cth.  cttr:histsummarygroup does not display for AU02 per Bency Thomas. -->
							<xsl:attribute name="grouptype" select="replace(translate(. , '()' , '-') , '&amp;' , 'and')"/>
							<xsl:for-each select="key('lit-hist-court-values' , $group-type , $litigationHistoryAnnots)">
								<cttr:histsummaryitem documenttype="case" value="decisiondate">
									<xsl:for-each select="source_case:info/source_case:courtinfo/source_case:dates/source_case:decisiondate/date">
										<!-- JL: this outputs ISO date format as CI instructs.  Reverting to Aus dd/mm/yyyy format 
										  for consistency with DT  / production - with no zero fill because that's how DT does it!
										  Need to copy over the text because the markup for month/day is inconsistent.
										  <xsl:value-of select="@year"/><xsl:text>-</xsl:text>
										<xsl:value-of select="if (string-length(@month)=1) then concat('0' , @month) else @month"/>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="if (string-length(@day)=1) then concat('0' , @day) else @day"/>-->
									 <xsl:apply-templates/>
									</xsl:for-each>
								</cttr:histsummaryitem>
							</xsl:for-each>
						</cttr:histsummarygroup>
					</xsl:for-each>
				</cttr:histsummary>
			  </xsl:if>
					<xsl:apply-templates select="source_cttr:annot" mode="history"/>				
			</cttr:priorhist>
		</cttr:casehist>
		</cttr:history>
	</xsl:template>

	<xsl:template match="source_cttr:annot" mode="history">	  
	  <cttr:histitem>
	 	 <cttr:histdecision>
  			<xsl:apply-templates select="@* | node()"/>
  		</cttr:histdecision>
	  </cttr:histitem>
	</xsl:template>

	<xsl:template match="source_cttr:annot/@signal">
		<xsl:attribute name="treatment" select="."/>
	</xsl:template>
	
	
	<xsl:template match="source_case:citations">
		<xsl:choose>
		  <xsl:when test="parent::source_cttr:annot[parent::source_cttr:annotations[@annotationtype='litigation-history']]">
		    <cttr:caseinfo>
		      <cttr:citations>
		        <xsl:apply-templates/>
		      </cttr:citations>
		    </cttr:caseinfo>
		  </xsl:when>
		  <xsl:otherwise>
		    <cttr:citations>
		      <xsl:apply-templates/>
		    </cttr:citations>
		  </xsl:otherwise>
		</xsl:choose>  
	</xsl:template>
	
	<xsl:template match="source_case:citetext">
		<xsl:apply-templates/>		
	</xsl:template>
	
	<!--<xsl:template match="source_cttr:use-group">
		<cttr:usage-group>
			<xsl:apply-templates select="@*|node()"/>
		</cttr:usage-group>
	</xsl:template>-->
	
	<xsl:template match="source_cttr:use">
		<cttr:usage>
			<xsl:apply-templates select="@*"/>
			<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates/>
			</text>
		</cttr:usage>
	</xsl:template>
	
	
    
    <xsl:template match="source_cttr:use/@signal">
		<xsl:attribute name="usagetype" select="."/>
	</xsl:template>
	
	<!-- remotelink and citation stuff should work out of the box? -->

	
</xsl:stylesheet>