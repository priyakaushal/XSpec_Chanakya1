<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case ci glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.content_case.judgments">
		<title>case:content/case:judgments <lnpid>id-NZ18-26008</lnpid></title>
		<body>
			<section>
				<ul>
					<li class="- topic/li ">
						<sourcexml class="+ topic/keyword xml-d/sourcexml "
							>case:content/case:judgments</sourcexml> is a container element
						and need not be carried forward in the conversion. However, as
						mentioned above, all content must be converted such that the order
						of elements is maintained whenever possible. The children are
						described below: <ul class="- topic/ul ">
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml "
									>case:judgments/case:judgment</sourcexml> becomes <targetxml
									class="+ topic/keyword xml-d/targetxml "
									>courtorder:body/section</targetxml>. The source attributes :
									<sourcexml class="+ topic/keyword xml-d/sourcexml "
									>case:judgment @toc-caption</sourcexml> and <sourcexml
									class="+ topic/keyword xml-d/sourcexml ">case:judgment
									@subdoc</sourcexml> : <note class="- topic/note ">The
									attributes are anomalies and the source data would be
									corrected so that these elements won’t appear at the time of
									conversion.</note> The children are described below: <ul
									class="- topic/ul ">
									<li class="- topic/li ">
										<sourcexml class="+ topic/keyword xml-d/sourcexml "
											>case:judgment/case:judgmentbody</sourcexml> becomes
											<targetxml class="+ topic/keyword xml-d/targetxml "
											>courtorder:body/section/bodytext</targetxml>.
										<pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;...
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
&lt;/case:judgments&gt;&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;...
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;                
</pre>
										The children are described below: <p class="- topic/p ">
											<b class="+ topic/ph hi-d/b ">Please refer to General
												Markup section for handling of children.</b>
										</p>
										<ul class="- topic/ul ">
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>p</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
												>p</targetxml>. The children are described below: <ul
													class="- topic/ul ">
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>case:judgmentbody/p/blockquote/p/blockquote/legfragment/leg:level</sourcexml>
														becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>section/bodytext/p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level</targetxml>.
															<note class="- topic/note ">The above rule will be
															applicable only when the input documents have
															nested <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>blockquotes</sourcexml> and if <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>legfragment</sourcexml> is the child element of
															one of the <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>blockquote</sourcexml> and the immediate child
															of <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>legfragment</sourcexml> is <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>leg:level</sourcexml>.</note>
													</li>
												</ul>
											</li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>pgrp</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>pgrp</targetxml>. The children are described below:
													<ul class="- topic/ul ">
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>heading</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>heading</targetxml>. <note>Conversion should not
															create consecutive <targetxml>heading</targetxml>
															elements. When 2 or more consecutive sibling
															source elements map to
																<targetxml>heading</targetxml>, data should be
															merged to a single <targetxml>heading</targetxml>
															element unless this would hamper content
															ordering.</note> The children are described below:
															<ul class="- topic/ul ">
															<li id="pgrp_title" class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>title</sourcexml> becomes <targetxml
																	class="+ topic/keyword xml-d/targetxml "
																	>title</targetxml>. The children are described
																below: <ul class="- topic/ul ">
																	<li class="- topic/li ">
																		<sourcexml
																			class="+ topic/keyword xml-d/sourcexml "
																			>remotelink</sourcexml> becomes <targetxml
																			class="+ topic/keyword xml-d/targetxml "
																			>ref:crossreference</targetxml>.
																			<note>Refer to
																				<sourcexml>remotelink</sourcexml>
																			section of General Markup for
																			details.</note>
																		<note>Please note that both
																				<sourcexml>remotelink</sourcexml> and
																			its child element
																				<sourcexml>inlineobject</sourcexml>
																			should be dropped whenever the value of
																			attribute
																				<sourcexml>remotelink/@service="QUERY"</sourcexml>
																			and the only content within the
																				<sourcexml>remotelink</sourcexml> is
																				<sourcexml>inlineobject</sourcexml>.
																			Otherwise, the
																				<sourcexml>remotelink/@service="QUERY"</sourcexml>
																			start-tag and end-tag are dropped, but the
																			content is retained.</note>
																		<pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;
                &lt;pgrp&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Interest 
                                &lt;remotelink refpt="ASDL.VICLEG.TXAV97.S24" dpsi="006V" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID"&gt;s24&lt;/remotelink&gt; of the TAA
                            &lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/pgrp&gt;
                &lt;/pgrp&gt;                                                    
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Interest
                            &lt;ref:crossreference crossreferencetype="seeAlso" referencedresourcesentiment="none" referencedresourcetype="practicenote"&gt;
                                &lt;ref:content&gt;s24&lt;/ref:content&gt;
                                &lt;ref:locator anchoridref="ASDL.VICLEG.TXAV97.S24"&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="006V-ABCD_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;
                            of the TAA
                        &lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/pgrp&gt;	
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;                
</pre>
																	</li>
																</ul>
															</li>
														</ul>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>p</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>p</targetxml> The children are described below:
															<ul class="- topic/ul ">
															<li class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>blockquote</sourcexml> gets dropped whenever
																	<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>legfragment</sourcexml> occurs within
																	<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>blockquote</sourcexml>. The children are
																described below : <ul class="- topic/ul ">
																	<li class="- topic/li ">
																		<sourcexml
																			class="+ topic/keyword xml-d/sourcexml "
																			>pgrp/p/blockquote/legfragment</sourcexml>
																		becomes <targetxml
																			class="+ topic/keyword xml-d/targetxml "
																			>pgrp/primlaw:excerpt</targetxml>. <note
																			class="- topic/note "> Please note that
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>p</sourcexml> is dropped because
																				<targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:excerpt</targetxml> cannot be a
																			child of <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>p</targetxml>. </note> The children are
																		described below: <ul class="- topic/ul ">
																			<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/p</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:bodytext/p</targetxml>.
																				<pre xml:space="preserve" class="- topic/pre ">
&lt;case:judgmentbody&gt;&lt;pgrp&gt;
    &lt;p&gt;
        &lt;blockquote&gt;
            &lt;legfragment&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;defterm&gt;&lt;emph typestyle="bf"&gt;An "eligible person"&lt;/emph&gt;&lt;/defterm&gt; is defined as meaning:&lt;/text&gt;
                &lt;/p&gt;
            &lt;/legfragment&gt;
        &lt;/blockquote&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;
&lt;/case:judgmentbody&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;section&gt;&lt;bodytext&gt;
    &lt;pgrp&gt;
        &lt;primlaw:excerpt&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;defterm&gt;&lt;emph typestyle="bf"&gt;An "eligible person"&lt;/emph&gt;&lt;/defterm&gt; is defined as meaning:
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:excerpt&gt;
    &lt;/pgrp&gt;
&lt;/bodytext&gt;
&lt;/section&gt;                
</pre>
																			</li>
																			<li class="- topic/li "
																				id="p_blockquote_legfragment_leg.level">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/leg:level</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:level</targetxml>.
																				The children are described below: <ul
																				class="- topic/ul ">
																				<li>The source attribute <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@leveltype</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@leveltype</targetxml>,
																				and the attribute <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@subdoc</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@includeintoc</targetxml>.
																				The start-tag and end-tag (but not the
																				content) of <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt</sourcexml>
																				are dropped after converting these
																				attributes.</li>
																				<li>When converting <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@leveltype</sourcexml>,
																				use the following list to map the source
																				value to the target value: <ul
																				class="- topic/ul ">
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="agreement"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="agreement"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="attachment"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="attachment"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="attachments"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="attachment"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="comm.intro"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="annotation-group"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="convention"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="treaty"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="group"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="chapter"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="leg-inst"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="instrument"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="miscins"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="instrument"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="proc-guide"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="procedural-guide"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="reg-code"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="regulatory-code"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="reg"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="regulation"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="subreg"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="subregulation"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="release"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="instrument"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="scale"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="schedule"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="scalep"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="paragraph"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="scales"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="schedule"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="scalesp"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="paragraph"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="schedulegrp"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="schedule"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="subgroup"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="subchapter"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="summary"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="introduction"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="sect"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="section"</targetxml>
																				</li>
																				<li class="- topic/li "
																				><sourcexml>leg:level-vrnt/@leveltype="subsect"</sourcexml>
																				becomes
																				<targetxml>primlaw:level/@leveltype="subsection"</targetxml>
																				</li>
																				<li>if a value specified for
																				<sourcexml>leg:level-vrnt/@leveltype</sourcexml>
																				is not listed above, then
																				<targetxml>primlaw:level/@leveltype="unclassified"</targetxml></li>
																				</ul>
																				</li>
																				<li class="- topic/li "><sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:heading</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:level/heading</targetxml>.
																				The attribute <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:heading/@inline</sourcexml> becomes
																				<targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>heading/@inline</targetxml>. The child
																				element is described below: <ul
																				class="- topic/ul ">
																				<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:level/primlaw:authority/primlaw:authority-item/textitem</targetxml>.
																				<pre xml:space="preserve" class="- topic/pre ">
&lt;leg:level-vrnt&gt;
    &lt;leg:heading inline="true"&gt;
        &lt;leg:empleg&gt;
        &lt;/leg:empleg&gt;
    &lt;/leg:heading&gt;
&lt;/leg:level-vrnt&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;primlaw:level&gt;
    &lt;primlaw:authority&gt;
        &lt;primlaw:authority-item&gt;
            &lt;textitem&gt;
            &lt;/textitem&gt;
        &lt;/primlaw:authority-item&gt;
    &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;          
                
</pre>
																				</li>
																				</ul>
																				</li>
																				<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:level/primlaw:bodytext</targetxml>.
																				<pre xml:space="preserve" class="- topic/pre ">
&lt;case:judgmentbody&gt;
    &lt;pgrp&gt;...
        &lt;p&gt;
            &lt;blockquote&gt;
                &lt;legfragment&gt;
                    &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="subsect"&gt;
                            &lt;leg:heading inline="true"&gt;...
                            &lt;/leg:heading&gt;
                            &lt;leg:levelbody&gt;
                                &lt;leg:bodytext&gt;...
                                &lt;/leg:bodytext&gt;
                            &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt;
                &lt;/legfragment&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:judgmentbody&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;section&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;primlaw:excerpt&gt;
                &lt;primlaw:level leveltype="subsection"&gt;
                    &lt;heading inline="true"&gt;...
                    &lt;/heading&gt;
                    &lt;primlaw:bodytext&gt;...
                    &lt;/primlaw:bodytext&gt;
                &lt;/primlaw:level&gt;
            &lt;/primlaw:excerpt&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/section&gt;                                                               
                
                                                  </pre>
																				</li>
																				<li
																				id="p_l_li_p_blockquote_legfragment_leg.level"
																				><sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/l/li/p/blockquote/legfragment/leg:level</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/list/listitem/primlaw:excerpt/primlaw:level</targetxml>.
																				The children of <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/l/li/p/blockquote/legfragment/leg:level</sourcexml>
																				are converted as described above for the
																				children of <xref
																				href="#case.content_case.judgments/p_blockquote_legfragment_leg.level"
																				>pgrp/p/blockquote/legfragment/leg:level</xref>,
																				including the conversion of the source
																				attribute <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@leveltype</sourcexml>
																				to <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@leveltype</targetxml>,
																				and the conversion of the attribute
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@subdoc</sourcexml>
																				to <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@includeintoc</targetxml>.</li>
																				<li class="- topic/li "
																				id="p_l_li_p_blockquote_legfragment_leg.level_nested">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/l/li/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:level</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/list/listitem/primlaw:excerpt/primlaw:level/primlaw:bodytext/primlaw:level</targetxml>.
																				The children of <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/l/li/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:level</sourcexml>
																				are converted as described above for the
																				children of <xref
																				href="#case.content_case.judgments/p_blockquote_legfragment_leg.level"
																				>pgrp/p/blockquote/legfragment/leg:level</xref>,
																				including the conversion of the source
																				attribute <sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@leveltype</sourcexml>
																				to <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@leveltype</targetxml>,
																				and the conversion of the attribute
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>leg:level/leg:level-vrnt/@subdoc</sourcexml>
																				to <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>primlaw:level/@includeintoc</targetxml>..
																				<pre xml:space="preserve" class="- topic/pre ">
&lt;legfragment&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt subdoc="false" leveltype="reg" ln.nsprefix="lnvxe:"&gt;
            &lt;leg:heading inline="true"&gt;...
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:level&gt;
                    &lt;leg:level-vrnt subdoc="false" leveltype="subreg" ln.nsprefix="lnvxe:"&gt;
                    ...
                    &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/legfragment&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;primlaw:excerpt&gt;
    &lt;primlaw:level leveltype="reg" includeintoc="false"&gt;
        &lt;heading inline="true"&gt;...
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;...
            &lt;primlaw:level leveltype="subreg" includeintoc="false"&gt;
            ...
            &lt;/primlaw:level&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:excerpt&gt;
                                                          </pre>
																				</li>
																				</ul>
																			</li>
																			<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/l</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:bodytext/list</targetxml>
																			</li>
																			<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>pgrp/p/blockquote/legfragment/deflist</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>pgrp/primlaw:excerpt/primlaw:bodytext/deflist</targetxml>
																			</li>
																		</ul>
																	</li>
																</ul>
																<note class="- topic/note ">Please refer to
																	General Markup for handling of
																	children.</note>
															</li>
															<li class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>p/text</sourcexml> becomes <targetxml
																	class="+ topic/keyword xml-d/targetxml "
																	>p/text</targetxml>. The children are
																described below: <ul class="- topic/ul ">
																	<li class="- topic/li ">
																		<sourcexml
																			class="+ topic/keyword xml-d/sourcexml "
																			>text/ci:cite</sourcexml> becomes
																			<targetxml
																			class="+ topic/keyword xml-d/targetxml "
																			>text/lnci:cite</targetxml>. The children
																		are described below: <ul class="- topic/ul ">
																			<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>ci:cite/ci:content</sourcexml> becomes
																				<targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>lnci:cite/lnci:content</targetxml>. The
																				children : <ul class="- topic/ul ">
																				<li class="- topic/li ">
																				<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>ci:content/remotelink</sourcexml>
																				becomes <targetxml
																				class="+ topic/keyword xml-d/targetxml "
																				>ref:crossreference</targetxml>. <note
																				class="- topic/note ">Please refer to
																				'<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>ci:cite</sourcexml>' and '<sourcexml
																				class="+ topic/keyword xml-d/sourcexml "
																				>remotelink</sourcexml>' sections of
																				General Markup for details.</note>
																				</li>
																				</ul>
																			</li>
																		</ul>
																	</li>
																</ul>
																<pre xml:space="preserve" class="- topic/pre ">
&lt;p&gt;
    &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;remotelink refpt="Q.Q.SDA20.S6" dpsi="006V" docidref="ABCD_1234" remotekey1="REFPTID" service="DOC-ID"&gt;Section 6&lt;/remotelink&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt; of that Act includes the following provisions:
    &lt;/text&gt;
&lt;/p&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;p&gt;
    &lt;text&gt;
        &lt;lnci:cite type="legislation" citeref="Q.Q.SDA20.S6"&gt;
            &lt;lnci:content&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
              &lt;ref:content&gt;Section 6&lt;/ref:content&gt;
              &lt;ref:locator anchoridref="Q.Q.SDA20.S6"&gt;
                  &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="006V-ABCD_1234"/&gt;
                  &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
          &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt; of that Act includes the following provisions:
    &lt;/text&gt;
&lt;/p&gt;                
</pre>
															</li>
															<li class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>pgrp/p/l/li/blockquote/legfragment/deflist</sourcexml>
																becomes <targetxml
																	class="+ topic/keyword xml-d/targetxml "
																	>pgrp/p/l/li/bodytext/primlaw:excerpt/primlaw:bodytext/deflist</targetxml>
															</li>
														</ul>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>pgrp</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>pgrp</targetxml>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>blockquote</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>blockquote</targetxml>. The children are
														described as follows: <ul class="- topic/ul ">
															<li class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>pgrp/blockquote/blockquote/insert-line</sourcexml>
																becomes <targetxml
																	class="+ topic/keyword xml-d/targetxml "
																	>pgrp/blockquote/blockquote/p(empty)</targetxml>
																<pre xml:space="preserve" class="- topic/pre ">
&lt;pgrp&gt;...
    &lt;blockquote&gt;
        &lt;blockquote&gt;
            &lt;insert-line character=" "/&gt;
        &lt;/blockquote&gt;
    &lt;/blockquote&gt;
&lt;/pgrp&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;pgrp&gt;
    &lt;blockquote&gt;
        &lt;blockquote&gt;...
            &lt;p&gt;&lt;/p&gt;
        &lt;/blockquote&gt;
    &lt;/blockquote&gt;
&lt;/pgrp&gt;                
</pre>
															</li>
														</ul>
														<note class="- topic/note ">Please refer to
															'blockquote' in the General Markup section for
															more details.</note>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>l</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>list</targetxml>. </li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>page</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>ref:page</targetxml>. <note class="- topic/note "
															>Please follow the below rule ONLY WHEN <sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>page</sourcexml> is the first child of
																<sourcexml
																class="+ topic/keyword xml-d/sourcexml "
																>pgrp</sourcexml>.</note>
														<pre xml:space="preserve" class="- topic/pre ">

&lt;pgrp&gt;
    &lt;page.../&gt;
    &lt;p&gt;
        &lt;text/&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;    

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;pgrp&gt;
    &lt;p&gt;
        &lt;ref:page .../&gt;
        &lt;text/&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;
                
</pre>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>glp:note</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>note</targetxml>
													</li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>table</sourcexml> becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>table</targetxml>
													</li>
												</ul>
											</li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>h</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
												>h</targetxml>. </li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>l</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>list</targetxml>
											</li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>page</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>ref:page</targetxml>. </li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>case:judgment/case:judgmentbody/glp:note</sourcexml>
												becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>section/bodytext/note/bodytext</targetxml>. <note
													class="- topic/note ">When <sourcexml
														class="+ topic/keyword xml-d/sourcexml "
														>blockquote</sourcexml> occurs as a child element of
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
														>glp:note</sourcexml> then <sourcexml
														class="+ topic/keyword xml-d/sourcexml "
														>glp:note</sourcexml> maps to <targetxml
														class="+ topic/keyword xml-d/targetxml "
														>note/bodytext</targetxml>. Please refer to General
													Markup section for handling of children.</note>
												<pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
        &lt;glp:note&gt;
            &lt;blockquote&gt;
                &lt;h&gt;ATTACHMENT 1&lt;/h&gt;
                &lt;h&gt;INSURANCE APPORTIONMENT SCHEDULE&lt;/h&gt;
            &lt;/blockquote&gt;
        &lt;/glp:note&gt;
    &lt;/case:judgmentbody&gt;                                      
&lt;/case:judgment&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;section&gt;
    &lt;bodytext&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;blockquote&gt;
                    &lt;h&gt;ATTACHMENT 1&lt;/h&gt;
                    &lt;h&gt;INSURANCE APPORTIONMENT SCHEDULE&lt;/h&gt;
                &lt;/blockquote&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/bodytext&gt;
&lt;/section&gt;                
</pre>
												The children are described below: <ul
													class="- topic/ul ">
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>glp:note/blockquote/blockquote/insert-line</sourcexml>
														becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>note/bodytext/blockquote/blockquote/p(empty)</targetxml>. </li>
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>glp:note/blockquote/insert-line</sourcexml>
														becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>note/bodytext/p/blockquote/p(empty)</targetxml>.
													</li>
												</ul>
											</li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>table</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>table</targetxml>. </li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>footnotegrp</sourcexml> - For handling of footnotegrp
												element, please refer to 'footnotegrp and footnote' in
												the General Markup section. </li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>case:judgment/case:judgmentbody/form</sourcexml>
												becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>courtorder:body/section/bodytext/form:form</targetxml>.
												The children are described below: <ul
													class="- topic/ul ">
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>case:judgment/case:judgmentbody/form/bodytext</sourcexml>
														becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>courtorder:body/section/bodytext/form:form/form:document
															@annotated="false" @official="false"
															@typeofdoc="general"/form:bodytext</targetxml>.
														The source attribute : <sourcexml
															class="+ topic/keyword xml-d/sourcexml "
															>form/bodytext @searchtype=”FORM”</sourcexml> is
														dropped. The children are described below: <ul
															class="- topic/ul ">
															<li class="- topic/li ">
																<sourcexml
																	class="+ topic/keyword xml-d/sourcexml "
																	>form/bodytext/p</sourcexml> becomes
																	<targetxml
																	class="+ topic/keyword xml-d/targetxml "
																	>form:form/form:document/form:bodytext/form:p</targetxml>
																The children: <ul class="- topic/ul ">
																	<li class="- topic/li ">
																		<sourcexml
																			class="+ topic/keyword xml-d/sourcexml "
																			>form/bodytext/p/text</sourcexml> becomes
																			<targetxml
																			class="+ topic/keyword xml-d/targetxml "
																			>form:form/form:document/form:bodytext/form:p/form:text</targetxml>
																	</li>
																</ul>
															</li>
														</ul>
													</li>
												</ul>
											</li>
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>blockquote</sourcexml> becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>blockquote</targetxml>. </li>
										</ul>
									</li>
									<li class="- topic/li ">
										<sourcexml class="+ topic/keyword xml-d/sourcexml "
											>case:judgment/case:courtinfo</sourcexml> is a container
										element and it is dropped but the content is maintained in
											<targetxml class="+ topic/keyword xml-d/targetxml "
											>courtorder:head/courtorder:authors</targetxml> The
										children are described below: <ul class="- topic/ul ">
											<li class="- topic/li ">
												<sourcexml class="+ topic/keyword xml-d/sourcexml "
													>case:judgment/case:courtinfo/case:judges</sourcexml>
												becomes <targetxml
													class="+ topic/keyword xml-d/targetxml "
													>courtorder:head/courtorder:authors</targetxml> The
												child element is described below: <ul
													class="- topic/ul ">
													<li class="- topic/li ">
														<sourcexml class="+ topic/keyword xml-d/sourcexml "
															>case:judgment/case:courtinfo/case:judges/case:judge</sourcexml>
														becomes <targetxml
															class="+ topic/keyword xml-d/targetxml "
															>courtorder:head/courtorder:authors/person:judge/person:person/person:name.text</targetxml>
													</li>
												</ul>
											</li>
										</ul>
										<pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;&lt;case:judgments&gt;
    &lt;case:judgment&gt;
        &lt;case:courtinfo&gt;
            &lt;case:judges&gt;
                &lt;case:judge&gt;Shanahan&lt;/case:judge&gt; CJ
            &lt;/case:judges&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:judgment&gt;
&lt;/case:judgments&gt;&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;&lt;courtorder:authors&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;SHANAHAN CJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
&lt;/courtorder:authors&gt;
&lt;/courtorder:head&gt;                
                                    </pre>
										<note>If the content in <sourcexml
												class="+ topic/keyword xml-d/sourcexml "
												>case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml>
											(case insensitive) exists in <sourcexml
												class="+ topic/keyword xml-d/sourcexml "
												>case:headnote/case:info/case:courtinfo/case:judges</sourcexml>,
											then <sourcexml class="+ topic/keyword xml-d/sourcexml "
												>case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml>
											and its content should be suppressed. According to the LBU
											this is redundant content.</note>
										<pre>

&lt;case:body&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
            &lt;case:casename&gt;PRACTICE NOTE NO 19A&lt;/case:casename&gt;
            ... 
            &lt;case:courtinfo&gt;
                &lt;case:courtname&gt;SUPREME COURT OF NEW SOUTH WALES&lt;/case:courtname&gt;
                &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
                &lt;case:judges&gt;&lt;case:judge&gt;STREET&lt;/case:judge&gt; CJ&lt;/case:judges&gt;
                &lt;case:dates&gt;
                    &lt;case:decisiondate&gt;
                        &lt;date day="15" month="12" year="1983"&gt;15 December 1983&lt;/date&gt;
                    &lt;/case:decisiondate&gt;
                &lt;/case:dates&gt;
                &lt;case:juris&gt;nsw&lt;/case:juris&gt;
            &lt;/case:courtinfo&gt;
        &lt;/case:info&gt;
        ... 
    &lt;/case:headnote&gt;
    &lt;case:content&gt;
        &lt;case:judgments&gt;
            &lt;case:judgment&gt;
                &lt;case:courtinfo&gt;
                    &lt;case:judges&gt;&lt;case:judge&gt;Street&lt;/case:judge&gt; CJ&lt;/case:judges&gt;
                &lt;/case:courtinfo&gt;
                &lt;case:judgmentbody&gt;
                    &lt;p&gt;
                        &lt;text&gt;1. This Practice Note applies where -&lt;/text&gt;
                    &lt;/p&gt;
                    ...
                &lt;/case:judgmentbody&gt;
            &lt;/case:judgment&gt;
        &lt;/case:judgments&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;

  
                                    </pre>
										<b>Becomes</b>
										<pre>

&lt;courtorder:head&gt;
    &lt;heading&gt;
        &lt;title&gt;PRACTICE NOTE NO 19A&lt;/title&gt;
    &lt;/heading&gt;
    ...
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:alternatecourtcode alternatecourtcode="NSWSC"/&gt;
        &lt;jurisinfo:courtname&gt;SUPREME COURT OF NEW SOUTH WALES&lt;/jurisinfo:courtname&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;nsw&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
    &lt;courtorder:authors&gt;
        &lt;person:judge&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;STREET CJ&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:judge&gt;
    &lt;/courtorder:authors&gt;
    &lt;courtorder:issuedate month="12" day="15" year="1983"&gt;15 December 1983&lt;/courtorder:issuedate&gt;
    ...
&lt;/courtorder:head&gt;
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;1. This Practice Note applies where -&lt;/text&gt;
            &lt;/p&gt;
            ... 
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;
  
                                    </pre>
									</li>
								</ul>
							</li>
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml "
									>footnotegrp</sourcexml> - For handling of footnotegrp
								element, please refer to 'footnotegrp and footnote' in the
								General Markup section. </li>
							<li>
								<sourcexml>case:content/case:judgments/prelim</sourcexml>
								becomes
								<targetxml>courtorder:head/courtorder:prelim</targetxml>. <pre>

    &lt;case:body&gt;
        &lt;case:content&gt;
            &lt;case:judgments&gt;
                &lt;prelim&gt;
                    &lt;p&gt;
                        &lt;text&gt;The State of Western Australia (the Government party) proposed to grant mining leases
                              under the Mining Act 1978 (WA). The leases in question were initially covered by a number of
                              registered native title claims, as well as a number of unregistered native title claims. Only
                              registered native title claims have the right to negotiate under Subdiv P of Div 3 of the
                              NTA. A number of the claims in question were subsequently combined before the Federal
                              Court.
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/prelim&gt;
            &lt;case:judgments&gt;
        &lt;/case:content&gt;
    &lt;/case:body&gt;
 
</pre>
								<b>Becomes</b>
								<pre>
    
        &lt;courtorder:head&gt;
            &lt;courtorder:prelim&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;The State of Western Australia (the Government party) proposed to grant mining leases
                        under the Mining Act 1978 (WA). The leases in question were initially covered by a number of
                        registered native title claims, as well as a number of unregistered native title claims. Only
                        registered native title claims have the right to negotiate under Subdiv P of Div 3 of the
                        NTA. A number of the claims in question were subsequently combined before the Federal
                        Court.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/courtorder:prelim&gt;
        &lt;/courtorder:head&gt;
  
</pre>
							</li>
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml "
									>case:content/case:judgments/case:order</sourcexml>. <note
									class="- topic/note ">This is a bad markup and the source data
									would be corrected so that these elements won’t appear at the
									time of conversion.</note>
							</li>
							<li class="- topic/li ">
								<sourcexml class="+ topic/keyword xml-d/sourcexml "
									>case:content/case:judgments/case:disposition</sourcexml>
								<note class="- topic/note ">This is a bad markup and the source
									data would be corrected so that these elements won’t appear at
									the time of conversion.</note>
							</li>
						</ul>
					</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>
				<p>2014-04-04: <ph id="change_20140404_JCG">Clarified the instructions
						regarding: <xref
							href="#case.content_case.judgments/p_blockquote_legfragment_leg.level"
							>pgrp/p/blockquote/legfragment/leg:level</xref> (particularly the
						handling of the <sourcexml>leg:level-vnrt</sourcexml> attributes),
							<xref
							href="#case.content_case.judgments/p_l_li_p_blockquote_legfragment_leg.level"
							>pgrp/p/l/li/p/blockquote/legfragment/leg:level</xref>, and <xref
							href="#case.content_case.judgments/p_l_li_p_blockquote_legfragment_leg.level_nested"
							>pgrp/p/l/li/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:level</xref>.
						Note that no new instructions were specified, the changes were only
						clarifications.</ph></p>
				<p>2014-03-04: <ph id="change_20140304_JCG">Clarified the note regarding
						the suppression of
							<sourcexml>case:judgment/case:judgmentbody/pgrp/heading/title/remotelink/@service="QUERY"</sourcexml>
						and child <sourcexml>inlineobject</sourcexml>. (Webteam
						#250335)</ph></p>
				<p>2013-05-14: <ph id="change_20130514_RPX">Updated instructions on how
						to handle <sourcexml>case:judgments/prelim</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ18_courtorder\case.content_case.judgments.dita  -->

	<xsl:template match="case:content/case:judgments">
		<!--  Original Target XPath:  courtorder:body/section   -->
				<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="case:judgments/case:judgment">
		<!--  Original Target XPath:  courtorder:body/section   -->
		<section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</section>
	</xsl:template>

	<xsl:template match="case:judgment/@toc-caption | case:judgment/@subdoc"/>
	
	<xsl:template match="case:judgment/case:judgmentbody">
	<!--  Original Target XPath:  courtorder:body/section/bodytext   -->
		<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>
	</xsl:template>

	<xsl:template match="blockquote[(legfragment or figure) and not(ancestor::blockquote)]">
		<xsl:apply-templates />
	</xsl:template>

	<!-- JD: only output <blockquote> when it's required  -->
	<xsl:template match="blockquote[legfragment and ancestor::blockquote]">
		<blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates />
		</blockquote>
	</xsl:template>
	
	<xsl:template match="remotelink[@service='QUERY'][child::inlineobject and count(*)=1]">
		<xsl:apply-templates />
	</xsl:template>
	
	<xsl:template match="@leveltype">
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<!-- JD: 2017-07-24: 'part' not mentioned in CI but appears in DT output -->				
				<xsl:when test=". = ('agreement','attachment','part')">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test=".='attachments'">
					<xsl:value-of select="'attachment'"/>
				</xsl:when>
				<xsl:when test=".='comm.intro'">
					<xsl:value-of select="'annotation-group'"/>
				</xsl:when>
				<xsl:when test=".='convention'">
					<xsl:value-of select="'treaty'"/>
				</xsl:when>
				<xsl:when test=". = 'group'">
					<xsl:value-of select="'chapter'"/>
				</xsl:when>
				<xsl:when test=". = 'leg-inst'">
					<xsl:value-of select="'instrument'"/>
				</xsl:when>
				<xsl:when test=". = 'miscins'">
					<xsl:value-of select="'instrument'"/>
				</xsl:when>
				<xsl:when test=". = 'proc-guide'">
					<xsl:value-of select="'procedural-guide'"/>
				</xsl:when>
				<xsl:when test=". = 'reg-code'">
					<xsl:value-of select="'regulatory-code'"/>
				</xsl:when>
				<xsl:when test=". = 'reg'">
					<xsl:value-of select="'regulation'"/>
				</xsl:when>
				<xsl:when test=". = 'subreg'">
					<xsl:value-of select="'subregulation'"/>
				</xsl:when>
				<xsl:when test=". = 'release'">
					<xsl:value-of select="'instrument'"/>
				</xsl:when>
				<xsl:when test=". = 'scale'">
					<xsl:value-of select="'schedule'"/>
				</xsl:when>
				<xsl:when test=". = 'scalep'">
					<xsl:value-of select="'paragraph'"/>
				</xsl:when>
				<xsl:when test=". = 'scales'">
					<xsl:value-of select="'schedule'"/>
				</xsl:when>
				<xsl:when test=". = 'scalesp'">
					<xsl:value-of select="'paragraph'"/>
				</xsl:when>
				<xsl:when test=". = 'schedulegrp'">
					<xsl:value-of select="'schedule'"/>
				</xsl:when>
				<xsl:when test=". = 'subgroup'">
					<xsl:value-of select="'subchapter'"/>
				</xsl:when>
				<xsl:when test=". = 'summary'">
					<xsl:value-of select="'introduction'"/>
				</xsl:when>
				<xsl:when test=". = 'sect'">
					<xsl:value-of select="'section'"/>
				</xsl:when>
				<xsl:when test=". = 'subsect'">
					<xsl:value-of select="'subsection'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="'unclassified'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
		
	<xsl:template match="leg:level/leg:level-vrnt/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="leg:heading/@inline">
		<xsl:attribute name="inline">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template
		match="pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:heading/leg:empleg">
		<!--  Original Target XPath:  pgrp/primlaw:excerpt/primlaw:level/primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
				<textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>
	</xsl:template>

</xsl:stylesheet>
