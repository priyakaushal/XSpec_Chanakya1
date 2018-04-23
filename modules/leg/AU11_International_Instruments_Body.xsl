<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
	version="2.0" exclude-result-prefixes="dita leg lnf">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Body">
		<title>Body <lnpid>id-AU11-20007</lnpid></title>
		<shortdesc>Below described elements are the descendants of
				<sourcexml>leg:body</sourcexml>. Handle in document order unless
			specifically stated otherwise. Refer to General Markup Section for
			handling of children (including mixed content).</shortdesc>
		<body>
			<section>
				<title>funddoc:body</title>
				<p><sourcexml>leg:body</sourcexml> becomes
						<targetxml>funddoc:body</targetxml> and children as described below: <ul>
						<li><sourcexml>/LEGDOC/leg:body/leg:info</sourcexml> becomes
								<targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
							with child as described below: <ul>
								<li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml>
									becomes
										<targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>,
									attribute <sourcexml>@searchtype</sourcexml> will be
									suppressed. Conversion will be populated as below: <pre>


&lt;leg:body&gt;
    &lt;leg:info&gt;
        &lt;leg:officialname searchtype="LEGISLATION"&gt;The Hague Agreement
            concerning the international registration of industrial designs&lt;/leg:officialname&gt;
    &lt;/leg:info&gt;
    ..........
    ..........
&lt;/leg:body&gt;
                    
<b>Becomes</b>
                  
&lt;funddoc:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlawinfo:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlawinfo:levelinfo&gt;
    &lt;/primlaw:level&gt;
    ................
    ................
&lt;/funddoc:body&gt;
</pre>
									<note>If Rosetta element
											<sourcexml>leg:officialname</sourcexml> contains attribute
											<sourcexml>/leg:officialname[@ln.user-displayed="false"]</sourcexml>,
										then please refer to General Markup instruction <xref
											href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita"
											>ln.user_displayed="false"</xref> section in the
										CI.</note>
								</li>
							</ul>
						</li>
						<li><sourcexml>leg:level</sourcexml> becomes
								<targetxml>primlaw:level</targetxml> comes with
								<sourcexml>@id</sourcexml> becomes
								<targetxml>@xml:id</targetxml> and
								<targetxml>primlaw:level</targetxml> has a required attribute
								<targetxml>@leveltype</targetxml> and its values are tokenized
							as below: <ul>
								<li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
							</ul>
							<note>If the input files are having
									<sourcexml>@leveltype</sourcexml> values other than the
								tokenized list shown above, the value will be set as
									<targetxml>@leveltype="unclassified"</targetxml>, but in case
								of below mentioned scenario please follow as: <ul>
									<li><sourcexml>leg:level-vrnt[@leveltype="treaty-conv"]</sourcexml>
										will become
											<targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
									<li><sourcexml>leg:level-vrnt[@leveltype="intro"]</sourcexml>
										will become
											<targetxml>primlaw:level[@leveltype="introduction"]</targetxml>.</li>
									<li><sourcexml>leg:level-vrnt[@leveltype="conv.sect"]</sourcexml>
										will become
											<targetxml>primlaw:level[@leveltype="section"]</targetxml>.</li>
									<li><sourcexml>leg:level-vrnt[@leveltype="group"]</sourcexml>
										will become
											<targetxml>primlaw:level[@leveltype="chapter"]</targetxml>.</li>
								</ul>
							</note>
							<pre>

&lt;leg:level id="IPCPY.HACIRID.BODY"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION TREATY-CONV" leveltype="treaty-conv"&gt;
        &lt;leg:heading&gt;
            &lt;title searchtype="CONV-TITLE"&gt;&lt;refpt type="ext" id="IPCPY.HACIRID"/&gt;The Hague Agreement
                concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
                &lt;leg:level-vrnt
                    toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
                    &lt;leg:heading&gt;
                        &lt;edpnum&gt;&lt;refpt type="ext" id="IPCPY.HACIRID.ENTRY"/&gt;[150,001]&lt;/edpnum&gt;
                        &lt;title searchtype="ATTACH-TITLE"&gt;Entry into force of the 1999 Act and of the Common
                            Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                            Agreement&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    .............
                    .............
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
           
              <b>Becomes</b>

&lt;funddoc:body&gt;
    &lt;primlaw:level xml:id="IPCPY.HACIRID.BODY" leveltype="treaty"&gt;
        &lt;ref:anchor id="IPCPY.HACIRID" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/heading&gt;
            &lt;primlaw:level alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" includeintoc="true" leveltype="attachment"&gt;
                &lt;ref:anchor id="IPCPY.HACIRID.ENTRY" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;desig&gt;[150,001]&lt;/desig&gt;
                    &lt;title&gt;Entry into force of the 1999 Act and of the Common
                        Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                        Agreement&lt;/title&gt;
                &lt;/heading&gt;
                ............
                ............
            &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
&lt;/funddoc:body&gt;

                        </pre>
							<ul>
								<li><sourcexml>leg:level-vrnt</sourcexml> will be omitted and
									all its contents will be retained in conversion <note>In New
										Lexis <targetxml>primlaw:level</targetxml> element is used
										instead of Rosetta elements <sourcexml>leg:level</sourcexml>
										and <sourcexml>leg:level-vrnt</sourcexml>. So element
											<sourcexml>leg:level-vrnt</sourcexml> will be suppressed
										from conversion and attributes
											<sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will
										become <targetxml>primlaw:level/@leveltype</targetxml> with
										its value,
											<sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be
										suppressed, <sourcexml>/leg:level-vrnt/@subdoc</sourcexml>
										will become
											<targetxml>primlaw:level/@includeintoc</targetxml> with
										its value and
											<sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will
										become
											<targetxml>/primlaw:level/@alternatetoccaption</targetxml>
										with all its value.</note> See below example:
									<pre>
&lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
    &lt;leg:level-vrnt
        toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
        subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
        ............
        ............
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
<b>becomes</b>
&lt;primlaw:level xml:id="IPCPY.HACIRID.ENTRY" alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
    includeintoc="true" leveltype="unclassified"&gt;
    .............
    .............
&lt;/primlaw:level&gt;
</pre>
									All its children will be populated as below: <ul>
										<li><sourcexml>leg:heading</sourcexml> becomes
												<targetxml>heading</targetxml> with attributes
												<sourcexml>@inline</sourcexml> becomes
												<targetxml>@inline</targetxml> which has tokenized
											values and populated as: <ul>
												<li><targetxml>heading[@inline="true"]</targetxml></li>
												<li><targetxml>heading[@inline="false"]</targetxml></li>
											</ul>
											<pre>
&lt;leg:heading&gt;
    &lt;title searchtype="CONV-TITLE"&gt;&lt;refpt type="ext" id="IPCPY.HACIRID"/&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
&lt;/leg:heading&gt;
              
              <b>Becomes</b>
              
&lt;heading&gt;
    &lt;title&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
&lt;/heading&gt;
            </pre>
											<p>heading element with <sourcexml>@inline</sourcexml>
												attribute:</p>
											<pre>
&lt;leg:heading inline="true"&gt;
    &lt;desig&gt;
        &lt;designum&gt;&lt;refpt type="ext" id="CC.UNFCCC.UNFCCC.ART1.1"/&gt;1.&lt;/designum&gt;
    &lt;/desig&gt;
&lt;/leg:heading&gt;              
              <b>Becomes</b>
              
&lt;heading inline="true"&gt;
    &lt;desig value="1."&gt;1.&lt;/desig&gt;
&lt;/heading&gt;
</pre>
										</li>
										<li><sourcexml>leg:levelbody</sourcexml> and
												<sourcexml>leg:bodytext</sourcexml> comes in following
											scenarios: <ul>
												<li>If element <sourcexml>leg:bodytext</sourcexml> is
													the immediate child of
														<sourcexml>leg:levelbody</sourcexml>, then it
													becomes <targetxml>primlaw:bodytext</targetxml> and
													populated as:
													<pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;deflist&gt;
            &lt;defitem id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"&gt;
                &lt;defterm&gt;
                    &lt;refpt type="ext"
                        id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                    &lt;emph typestyle="bf"&gt;&amp;ldquo;Climate
                        system&amp;rdquo;&lt;/emph&gt;
                &lt;/defterm&gt;
                &lt;defdesc&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/defdesc&gt;
            &lt;/defitem&gt;
        &lt;/deflist&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                 <b>Becomes</b>
                  
&lt;primlaw:bodytext&gt;
    &lt;deflist&gt;
        &lt;defitem&gt;
            &lt;defterm&gt;
                &lt;ref:anchor anchortype="global" id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201C;Climate
                    system&amp;#x201D;&lt;/emph&gt;
            &lt;/defterm&gt;
            &lt;defdesc&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                        
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/defdesc&gt;
        &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/primlaw:bodytext&gt;
</pre>
												</li>
												<li>If the element <sourcexml>leg:levelbody</sourcexml>
													has the immediate child
														<sourcexml>leg:level</sourcexml> then it becomes
														<targetxml>primlaw:level</targetxml> and populated
													as:
													<pre>  
&lt;leg:levelbody&gt;
    &lt;leg:level id="IPC_IC.SGM_CONV.INTRO_4"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION INTRO" leveltype="intro"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
                        &lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                            international trade, and taking into account the need to promote effective and adequate
                            protection of intellectual property rights, and to ensure that measures and procedures to
                            enforce intellectual property rights do not themselves become barriers to legitimate
                            trade;&lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                        disciplines concerning:&lt;/text&gt;
                        ..........
                        ..........
                    &lt;/p&gt;
                    .............
                    .............
                &lt;/leg:bodytext&gt;
                .............
                .............
            &lt;/leg:levelbody&gt;
            .............
            .............
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;                
                <b>Becomes</b>
                  
&lt;primlaw:level xml:id="IPC_IC.SGM_CONV.INTRO_4" leveltype="introduction"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
            &lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                international trade, and taking into account the need to promote effective and adequate
                protection of intellectual property rights, and to ensure that measures and procedures to
                enforce intellectual property rights do not themselves become barriers to legitimate
                trade;&lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                disciplines concerning:&lt;/text&gt;
            ..........
            ..........
        &lt;/p&gt;
        .............
        .............
    &lt;/primlaw:bodytext&gt;
    .............
    .............
    
    .............
    .............
    
&lt;/primlaw:level&gt;
</pre>
												</li>
												<li> The fisrt occurence of
														<sourcexml>leg:bodytext</sourcexml> becomes
														<targetxml>primlaw:bodytext</targetxml> and after
													it, if <sourcexml>leg:bodytext</sourcexml> has other
														<sourcexml>leg:bodytext</sourcexml> or
														<sourcexml>leg:level</sourcexml> as siblings then
													wrap each of them <targetxml>primlaw:level</targetxml>
													with <targetxml>@leveltype="unclassified"</targetxml>
													<pre>
&lt;leg:levelbody&gt;
    &lt;leg:level id="IPCPY.IC.AUSFTA.ART17-1.1"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION SUBARTICLE" leveltype="subarticle"&gt;
            ........
            ........
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;International Agreements&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
    &lt;leg:level id="IPCPY.IC.AUSFTA.ART17-1.4"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION SUBARTICLE" leveltype="subarticle"&gt;
            ........
            ........
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;National Treatment&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

<b>Becomes</b>
                                                    
&lt;primlaw:level leveltype="subarticle"&gt;
        &lt;ref:anchor id="IPCPY.IC.AUSFTA.ART17-1.1" anchortype="global"&gt; &lt;/ref:anchor&gt;
        
            ........
            ........
        
    &lt;/primlaw:level&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;International Agreements&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
    &lt;primlaw:level leveltype="subarticle"&gt;
        &lt;ref:anchor id="IPCPY.IC.AUSFTA.ART17-1.4" anchortype="global"&gt; &lt;/ref:anchor&gt;
        
            ........
            ........
        
    &lt;/primlaw:level&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;National Treatment&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/primlaw:level&gt;
</pre>
												</li>
												<li>
													<sourcexml>leg:levelbody/leg:bodytext/inlineobject</sourcexml>
													becomes
														<targetxml>primlaw:bodytext/p/text/figure/ref:inlineobject</targetxml>
													<pre>

&lt;leg:bodytext&gt;
    &lt;inlineobject type="image" attachment="ln-server" filename="g205020fig2.gif"/&gt;
    ....
&lt;/leg:bodytext&gt;


<b>Becomes</b>
                                                    

&lt;primlaw:bodytext&gt;
    .....
        &lt;p&gt;
            &lt;text&gt;
                &lt;figure&gt;
                    &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-g205020fig2"/&gt;  &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
                                &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                                &lt;proc:param name="object-smi" value=""/&gt;        &lt;!-- This @value assignment is done by conversion program --&gt;                                
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;
                &lt;/figure&gt;
            &lt;/text&gt;
        &lt;/p&gt;      
        ...
&lt;/primlaw:bodytext&gt;

</pre>
												</li>
												<li><sourcexml>form</sourcexml> becomes
														<targetxml>form:form</targetxml> with required child
													as <targetxml>form:form/form:document</targetxml> with
													attribute values
														<targetxml>@annotated="false"</targetxml>,
														<targetxml>@official="true"</targetxml> and
														<targetxml>@typeofdoc="unnamed"</targetxml>
													<ul>
														<li>
															<sourcexml>form/bodytext</sourcexml> becomes
																<targetxml>form:form/form:document/form:bodytext</targetxml>
															The child element of
																<sourcexml>form/bodytext</sourcexml> includes: <ul>
																<li><sourcexml>form/bodytext/h</sourcexml>
																	becomes
																		<targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
																<li><sourcexml>form/bodytext/p</sourcexml>
																	becomes
																		<targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
																<li><sourcexml>form/bodytext/p/text</sourcexml>
																	becomes
																		<targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
															</ul>
														</li>
													</ul>
													<pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;form&gt;
            &lt;bodytext searchtype="FORM"&gt;                
                &lt;p&gt;
                    &lt;text&gt;600 17&lt;sup&gt;th&lt;/sup&gt; Street, NW&lt;/text&gt;
                &lt;/p&gt;                
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;                
                &lt;p&gt;
                    &lt;text&gt;Dear Ambassador Zoellick&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;               
                &lt;p&gt;
                    &lt;text&gt;In connection with the signing on this date of the Australia-United States Free
                        Trade Agreement (the &amp;ldquo;Agreement&amp;rdquo;), I have the honour to confirm the
                        following understanding reached by the Governments of Australia and the United
                        States during the course of negotiation of Article&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;17.1.6 (National Treatment) regarding secondary uses of phonograms.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;reproduction of the phonogram and the right of broadcasting in the
                        cinematographic film or other audiovisual work, the Party may limit the rights of
                        the performers and producers of the other&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;I have the honour to propose that this letter and your letter in reply
                        confirming that your Government shares this understanding shall constitute an
                        integral part of the Agreement.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Yours sincerely&lt;/text&gt;
                &lt;/p&gt;
                
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Mark Vaile&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Minister for Trade&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/form&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;
           
          <b>Becomes</b>
&lt;primlaw:bodytext&gt;
    &lt;form:form&gt;
        &lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
            &lt;form:bodytext&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;600 17&lt;sup&gt;th&lt;/sup&gt; Street, NW&lt;/form:text&gt;
                &lt;/form:p&gt;                
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;                
                &lt;form:p&gt;
                    &lt;form:text&gt;Dear Ambassador Zoellick&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;               
                &lt;form:p&gt;
                    &lt;form:text&gt;In connection with the signing on this date of the Australia-United States Free
                        Trade Agreement (the &amp;#x201C;Agreement&amp;#x201D;), I have the honour to confirm the
                        following understanding reached by the Governments of Australia and the United
                        States during the course of negotiation of Article&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;17.1.6 (National Treatment) regarding secondary uses of phonograms.&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;reproduction of the phonogram and the right of broadcasting in the
                        cinematographic film or other audiovisual work, the Party may limit the rights of
                        the performers and producers of the other&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;I have the honour to propose that this letter and your letter in reply
                        confirming that your Government shares this understanding shall constitute an
                        integral part of the Agreement.&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Yours sincerely&lt;/form:text&gt;
                &lt;/form:p&gt;
                
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Mark Vaile&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Minister for Trade&lt;/form:text&gt;
                &lt;/form:p&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:document&gt;
    &lt;/form:form&gt;
&lt;/primlaw:bodytext&gt;
        </pre>
												</li>
												<li>
													<sourcexml>leg:histnote</sourcexml> becomes
														<targetxml>note[@notetype="historical"]</targetxml>
													<pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;leg:histnote&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:histnote&gt;
        ...........
        ...........
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;        
          <b>Becomes</b>
&lt;primlaw:bodytext&gt;
    &lt;note notetype="historical"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;                                        
    &lt;/note&gt;
    .........
    .........
&lt;/primlaw:bodytext&gt;          
</pre>
												</li>
											</ul>
										</li>
										<li> The conversion for
												<sourcexml>leg:levelstatus</sourcexml> is based on the
											following scenarios: <ul>
												<li>
													<ol>
														<li>If the
																<sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
															then suppress the element.
															<pre>
&lt;leg:level id="IPCPY.IC.AUSFTA.SL6"&gt;
    &lt;leg:level-vrnt toc-caption="[160,076] Response" subdoc="true" searchtype="LEGISLATION FORM" leveltype="form"&gt;
        &lt;leg:levelinfo&gt;
            &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;     &lt;!-- will be suppressed --&gt;
        &lt;/leg:levelinfo&gt;
        ............
        ............
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
<b>Becomes</b>
&lt;primlaw:level xml:id="IPCPY.IC.AUSFTA.SL6" alternatetoccaption="[160,076] Response" includeintoc="true" leveltype="form"&gt;
    
        ............
        suppressed
        ............
    
&lt;/primlaw:level&gt;    
</pre>
														</li>
														<li>If the
																<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
															with text in that then becomes
																<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
																legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
															<note>Include the
																	<targetxml>@statuscode</targetxml> in element
																	<targetxml>legisinfo:status</targetxml> to
																represent repealed legislation.</note>
														</li>
														<li>If the
																<sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
															with no text in that then becomes
																<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
																legisinfo:status[@statuscode="repealed"]</targetxml>
														</li>
													</ol>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2015-11-19: <ph id="change_20151119_AS">Mapping for new XPath
							<sourcexml>leg:levelbody/leg:bodytext/inlineobject</sourcexml>.
					</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU11_International_Instruments\Body.dita  -->

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  funddoc:body   -->
		<funddoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</funddoc:body>

	</xsl:template>

	<xsl:template match="leg:body/leg:info">
		<!--  Original Target XPath:  /funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
		<primlaw:level leveltype="unclassified">
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo
					xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<!--<xsl:template match="leg:officialname">
		<!-\-  Original Target XPath:  /funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -\->
		<legisinfo:names>
			<legisinfo:officialtitle>
				<xsl:apply-templates select="@* | node()"/>
			</legisinfo:officialtitle>
		</legisinfo:names>
	</xsl:template>-->

	<xsl:template match="@searchtype"/>

	<xsl:template match="@ln.user-displayed"/><!-- JD: handled in modules/nonamespace/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.xsl -->
	
	<xsl:template match="@leveltype">
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when
					test=". = ('act', 'addendum', 'agreement', 'amendment', 'annex', 'appendix', 'article', 'attachment', 'canon', 'chapter', 'clause', 'companion', 'constitution', 'dictionary', 'division', 'endnote', 'exhibit', 'form', 'hieararchy-note', 'instrument', 'introduction', 'order', 'paragraph', 'part', 'preamble', 'procedural-guide', 'regulation', 'regulatory-code', 'rule', 'schedule', 'section', 'subarticle', 'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subregulation', 'subschedule', 'subrule', 'subsection', 'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency', 'unclassified')">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test=". = 'treaty-conv'">
					<xsl:attribute name="leveltype" select="'treaty'"/>
				</xsl:when>
				<xsl:when test=". = 'intro'">
					<xsl:attribute name="leveltype" select="'introduction'"/>
				</xsl:when>
				<xsl:when test=". = 'conv.sect'">
					<xsl:attribute name="leveltype" select="'section'"/>
				</xsl:when>
				<xsl:when test=". = 'group'">
					<xsl:attribute name="leveltype" select="'chapter'"/>
				</xsl:when>
				<!-- JD: not mentioned in CI, but present in examples and DT output -->
				<xsl:when test=".='sect'">
					<xsl:attribute name="leveltype" select="'section'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="leveltype" select="'unclassified'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>

	<!-- JD: The CI doesn't state this, but DT diff shows that the first leg:level creates a ref:anchor from the @id if there is no refpt -->
	<xsl:template match="leg:body/leg:level[not(leg:heading/descendant::refpt)]">
		<primlaw:level>
			<xsl:apply-templates select="@id"/>			
			<xsl:apply-templates select="@*"/>
			<!-- create the ref:anchor -->
			<xsl:apply-templates select="leg:level-vrnt/@*"/>
			<ref:anchor id="{lnf:substringBeforeLast(@id,'.')}" anchortype="global"/>
			<xsl:apply-templates select="leg:level-vrnt/node()"/>
		</primlaw:level>
	</xsl:template>
	
	

	<xsl:template match="leg:level">
		<primlaw:level>
			<xsl:apply-templates select="@*"/>
			<!-- Sudhanshu Edited this and adding for handling attribute of leg:level-vrnt on this template for solving W* 7043741 -->
			<xsl:apply-templates select="leg:level-vrnt/@*"/>
			<xsl:apply-templates select="node()"/>
		</primlaw:level>
	</xsl:template>

	<xsl:template match="leg:level-vrnt">
		<!--  Original Target XPath:  primlaw:level   -->
		<!-- JD: match DT output by creating ref:anchor from nested refpt (e.g., in <title>, <edpnum>, <designum>, etc.) -->
			<xsl:apply-templates select="leg:heading//refpt, node()"/>
	</xsl:template>
	

	<xsl:template match="leg:level-vrnt/@searchtype"/>
	
	<xsl:template match="leg:level-vrnt/@subdoc">
		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>

	<xsl:template match="leg:level-vrnt/@toc-caption">
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>

	<xsl:template match="leg:heading">
		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>
	</xsl:template>

	<xsl:template match="@inline">
		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:levelbody">
		<xsl:apply-templates/>
	</xsl:template>

	<!-- "The fisrt occurence of leg:bodytext becomes primlaw:bodytext and after it, if leg:bodytext has other leg:bodytext or
leg:level as siblings then wrap each of them primlaw:level with @leveltype="unclassified"" -->
	<xsl:template match="leg:bodytext[position()=1]">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>
	</xsl:template>
	
	<!-- "The fisrt occurence of leg:bodytext becomes primlaw:bodytext and after it, if leg:bodytext has other leg:bodytext or
leg:level as siblings then wrap each of them primlaw:level with @leveltype="unclassified"" -->
	<xsl:template match="leg:bodytext[not(position()=1)]">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:level leveltype="unclassified">
			<primlaw:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:bodytext>
		</primlaw:level>
	</xsl:template>

	<xsl:template match="form">
		<!--  Original Target XPath:  form:form   -->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>
	</xsl:template>

	<!-- "form becomes form:form with required child as form:form/form:document with attribute values @annotated="false", @official="true" and @typeofdoc="unnamed"" -->
	<xsl:template match="form/bodytext">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
		<!--<form:form>-->
			<form:document annotated="false" official="true" typeofdoc="unnamed">
				<form:bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</form:bodytext>
			</form:document>
		<!--</form:form>-->
	</xsl:template>

	<xsl:template match="form/bodytext/h">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
		<form:h>
			<xsl:apply-templates select="@* | node()"/>
		</form:h>
	</xsl:template>

	<xsl:template match="form/bodytext/p">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
		<form:p>
			<xsl:apply-templates select="@* | node()"/>
		</form:p>
	</xsl:template>

	<xsl:template match="form/bodytext/p/text">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -->
			<form:text>
				<xsl:apply-templates select="@* | node()"/>
			</form:text>
	</xsl:template>

	<xsl:template match="leg:histnote">
		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note notetype="historical">
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</note>
	</xsl:template>


	<xsl:template match="leg:levelstatus[@isrepealed='false']"/>

	<!-- If the leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"] with text ...-->
	<xsl:template match="leg:levelstatus[@isrepealed='true']">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -->
		<!--<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo
					xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<legisinfo:legisinfo>-->
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:if test="string-length(normalize-space(.))>1">
									<legisinfo:statustext>
										<xsl:apply-templates select="@* | node()"/>
									</legisinfo:statustext>
								</xsl:if>
							</legisinfo:status>
						</legisinfo:statusgroup>
					<!--</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>-->
	</xsl:template>


</xsl:stylesheet>
