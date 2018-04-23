<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita ci cttr leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Head for Legislative Citator Docs <lnpid>id-UK16-38608</lnpid></title>
   <body>
        <p><sourcexml>cttr:body</sourcexml> becomes <targetxml>cttr:body</targetxml></p>
        <section>
            <title>cttr:body/leg:info</title>
            <p>If <sourcexml>cttr:body</sourcexml> contains <sourcexml>leg:info</sourcexml>
                    then,<sourcexml>cttr:body/leg:info</sourcexml> becomes
                    <targetxml>cttr:head/cttr:citedstatlaw</targetxml>.</p>
            <p>
                <ul>
                    <li>If <sourcexml>leg:info/leg:officialname</sourcexml> becomes
                            <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/cttr:citations</targetxml>
                        and
                            <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></li>
                </ul>
            </p>
        </section>
        <example>
            <lines>Source XML <sourcexml>ci:cite</sourcexml> child of <sourcexml>leg:info/leg:officialname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:officialname&gt;
        &lt;emph typestyle="bf"&gt;
          &lt;emph typestyle="it"&gt;Assembly Learning Grants (European Institutions) (Wales) Regulations
            2011 (W 113),
            &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
            &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                    &lt;ci:sesslawnum num="2011_736s_Title"/&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;
                    &lt;ci:standardname normpubcode="UK_SI"/&gt;
                &lt;/ci:sesslawref&gt;
            &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;SI 2011/736&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            &lt;/emph&gt;
        &lt;/emph&gt;
      &lt;/leg:officialname&gt;
      ......
      &lt;/leg:info&gt;
      ......
&lt;cttr:body&gt;
                
            </codeblock>
            <lines>Target XML <sourcexml>ci:cite</sourcexml> child of <sourcexml>leg:info/leg:officialname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:head&gt;
        &lt;cttr:citedstatlaw&gt;
             &lt;cttr:legisinfo&gt;
                &lt;cttr:citations&gt;
                     &lt;emph typestyle="bf"&gt;
                        &lt;emph typestyle="it"&gt;Assembly Learning Grants (European Institutions) (Wales) Regulations 2011 (W 113),
                        &lt;lnci:cite status="valid"&gt;
                            &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                 &lt;ci:sesslawnum num="2011_736s_Title"/&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="UK_SI"/&gt;
                            &lt;/ci:sesslawref&gt;
                            &lt;/ci:sesslaw&gt;
                            &lt;ci:content&gt;SI 2011/736&lt;/ci:content&gt;
                        &lt;/ci:cite&gt;
                        &lt;/emph&gt;
                    &lt;/emph&gt;
                 &lt;/cttr:citations&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;
                        &lt;emph typestyle="bf"&gt;
                        &lt;emph typestyle="it"&gt;Assembly Learning Grants (European Institutions) (Wales) Regulations 2011 (W 113),
                        &lt;lnci:cite status="valid"&gt;
                            &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                 &lt;ci:sesslawnum num="2011_736s_Title"/&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="UK_SI"/&gt;
                            &lt;/ci:sesslawref&gt;
                            &lt;/ci:sesslaw&gt;
                            &lt;ci:content&gt;SI 2011/736&lt;/ci:content&gt;
                        &lt;/ci:cite&gt;
                        &lt;/emph&gt;
                    &lt;/emph&gt;
                  &lt;/legisinfo:officialtitle&gt;
               &lt;/legisinfo:names&gt;
            &lt;/legisinfo:legisinfo&gt;
         &lt;primlawinfo:primlawinfo&gt;
        &lt;/cttr:legisinfo&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;cttr:head&gt;
                
            </codeblock>
        </example>
        <section>
            <title><sourcexml>cttr:body/leg:info/popname</sourcexml> to
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname
                </targetxml></title>
            <ul>
                <li>
            <p>
                        <sourcexml>popname</sourcexml> becomes
                            <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names</targetxml></p></li>
<li><p>                        <sourcexml>popname/@ln.user-displayed</sourcexml> will be drop in target. </p>
                </li></ul>
        </section>
        <example>
            <lines>Source XML <sourcexml>popname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;popname ln.user-displayed="false"&gt;SA(ME)A 2012&lt;/popname&gt;
        ....
    &lt;/leg:info&gt;
&lt;/cttr:body&gt;
                
            </codeblock>
            <lines>Target XML <sourcexml>popname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:head&gt;
        &lt;cttr:citedstatlaw&gt;
             &lt;cttr:legisinfo&gt;
                    ......
                &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;popname&gt;SA(ME)A 2012&lt;/popname&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
            &lt;/cttr:legisinfo&gt;
        &lt;/cttr:citedstatlaw&gt;    
&lt;/cttr:head&gt;
            
            </codeblock>
        </example>
        
        <section>
            <title><sourcexml>cttr:body/leg:info/leg:officialname</sourcexml> to
                    <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></title>
            <ul>
                <li>
            <p>
                        <sourcexml>leg:officialname</sourcexml> child of
                            <sourcexml>cttr:body/leg:info</sourcexml> becomes
                            <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
                        <ul>
                            <li>attribute <sourcexml>leg:officialname/@searchtype</sourcexml> is
                                drop in target.</li>
                            <li>attribute<sourcexml>leg:officialname/@leg-signal</sourcexml>'s value
                                becomes
                                    <targetxml>/cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml></li>
                        </ul>
                    </p>
                </li></ul>
        </section>
        <example>
            <lines>Source XML <sourcexml>cttr:body/leg:info/leg:officialname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:officialname leg-signal="in-force"&gt;
        &lt;emph typestyle="bf"&gt;
          &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
            &lt;ci:sesslaw&gt;
              &lt;ci:sesslawinfo&gt;
                &lt;ci:sesslawnum num="2012_13a_Title"/&gt;
              &lt;/ci:sesslawinfo&gt;
              &lt;ci:sesslawref&gt;
                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
              &lt;/ci:sesslawref&gt;
            &lt;/ci:sesslaw&gt;
            &lt;ci:content&gt;Supply and Appropriation (Main Estimates) Act 2012 (c 13)&lt;/ci:content&gt;
          &lt;/ci:cite&gt;
        &lt;/emph&gt;
      &lt;/leg:officialname&gt;
      ......
   &lt;/leg:info&gt;
&lt;/cttr:body&gt;
                
            </codeblock>
            <lines>Target XML <sourcexml>cttr:body/leg:info/leg:officialname</sourcexml></lines>
            <codeblock>
                
&lt;cttr:citedstatlaw&gt;
    &lt;cttr:legisinfo&gt;
        &lt;cttr:citations&gt;
            &lt;emph typestyle="bf"&gt;
                        Supply and Appropriation (Main Estimates) Act 2012
                            (c 13) &lt;lnci:cite status="valid"&gt;
                                &lt;lnci:sesslaw&gt;
                                    &lt;lnci:sesslawinfo&gt;
                                        &lt;lnci:sesslawnum num="2012_13a_Title"/&gt;
                                    &lt;/lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawref&gt;
                                        &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                    &lt;/lnci:sesslawref&gt;
                                &lt;/lnci:sesslaw&gt;
                                &lt;lnci:content&gt;Supply and Appropriation (Main Estimates) Act 2012 (c
                                    13)&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                            &lt;/emph&gt;
         &lt;/cttr:citations&gt;
        &lt;primlawinfo:primlawinfo&gt;
             &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;
                        &lt;emph typestyle="bf"&gt;
                        Supply and Appropriation (Main Estimates) Act 2012
                            (c 13) &lt;lnci:cite status="valid"&gt;
                                &lt;lnci:sesslaw&gt;
                                    &lt;lnci:sesslawinfo&gt;
                                        &lt;lnci:sesslawnum num="2012_13a_Title"/&gt;
                                    &lt;/lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawref&gt;
                                        &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                    &lt;/lnci:sesslawref&gt;
                                &lt;/lnci:sesslaw&gt;
                                &lt;lnci:content&gt;Supply and Appropriation (Main Estimates) Act 2012 (c
                                    13)&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                            &lt;/emph&gt;
                        &lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                    &lt;legisinfo:statusgroup&gt;
                        &lt;legisinfo:status&gt;
                            &lt;legisinfo:statustext&gt;in-force&lt;/legisinfo:statustext&gt;
                        &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt;
                &lt;/legisinfo:legisinfo&gt;
      &lt;/primlawinfo:primlawinfo&gt;
    &lt;/cttr:legisinfo&gt;
&lt;/cttr:citedstatlaw&gt;

            </codeblock>
        </example>
        
        <section>
            <sourcexml>leg:statutename</sourcexml> to
                <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
            <note><p>If we have <sourcexml>leg:officialname</sourcexml> and
                    <sourcexml>leg:statutename</sourcexml> both in the source document then,
                    <sourcexml>leg:officalname</sourcexml> will be suppressed in target and
                    <sourcexml>leg:statutename</sourcexml> content to will map to
                <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></p></note>
        </section>
        <example>
            <lines>Source XML <sourcexml>leg:statutename</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:officialname leg-signal="no-longer-in-force" searchtype="PROV-NUM"&gt;
        &lt;emph typestyle="bf"&gt;Section 85&lt;/emph&gt;
      &lt;/leg:officialname&gt;
      &lt;leg:statutename&gt;Finance Act 2000 (c 17)
        &lt;remotelink alttext="See Enactment Overview" dpsi="0HYR" remotekey1="DOC-ID" remotekey2="2000_17a" newwindow="NO" service="DOC-ID"&gt; See
            Enactment Overview
        &lt;/remotelink&gt;
      &lt;/leg:statutename&gt;
      ....
  &lt;/leg:info&gt;
&lt;/cttr:body&gt;
                
            </codeblock>
            <lines>Target XML <sourcexml>leg:statutename</sourcexml></lines>
            <codeblock>
 
&lt;cttr:citedstatlaw&gt;
    &lt;cttr:legisinfo&gt;
        &lt;cttr:citations&gt;
                &lt;emph typestyle="bf"&gt;Section 85&lt;/emph&gt;
        &lt;/cttr:citations&gt;
         &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;Finance Act 2000 (c 17)
                         &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;See Enactment Overview&lt;/ref:content&gt;
                                &lt;ref:locator&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="0HYR-2000_17a"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                      &lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
         &lt;/primlawinfo:primlawinfo&gt;
     &lt;/cttr:legisinfo&gt;
&lt;/cttr:citedstatlaw&gt;

            </codeblock>
        </example>
        <section>
            <title><sourcexml>cttr:body/leg:info/leg:officialnum</sourcexml> to
                    <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier/[@type="officialnum"]</targetxml></title>
            <ul>
                <li>
            <p><sourcexml>leg:officialnum</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier/[@type=officialnum]</targetxml>
                <ul>
                    <li><sourcexml>cttr:body/leg:info/leg:officialnum/leg:seriesnum</sourcexml>
                        becomes
                            <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/[@type="seriesnum"]</targetxml></li>
                    <li><sourcexml>cttr:body/leg:info/leg:officialnum/leg:year</sourcexml> becomes
                            <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate/[@year]</targetxml></li>
                </ul></p>
                </li>
            </ul>
        </section>
        <example>
            <lines>Source XML <sourcexml>leg:officialnum</sourcexml>,<sourcexml>leg:seriesnum</sourcexml>,<sourcexml>leg:year</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:officialnum&gt;
        &lt;leg:year&gt;2000&lt;/leg:year&gt;
        &lt;leg:seriesnum&gt;17&lt;/leg:seriesnum&gt;
      &lt;/leg:officialnum&gt;
      .....
    &lt;leg:info&gt;
&lt;cttr:body&gt;    
                
            </codeblock>
            <lines>Target XML <sourcexml>leg:officialnum</sourcexml>,<sourcexml>leg:seriesnum</sourcexml>,<sourcexml>leg:year</sourcexml></lines>
            <codeblock>

&lt;cttr:citedstatlaw&gt;
    &lt;cttr:legisinfo&gt;
        .......
         &lt;primlawinfo:primlawinfo&gt;
                &lt;primlawinfo:identifier idtype="officialnum"&gt;
                    &lt;primlawinfo:identifier-component type="seriesnum"&gt;17&lt;/primlawinfo:identifier-component&gt;
                &lt;/primlawinfo:identifier&gt;
                &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:enactdate year="2000"/&gt;
                &lt;/primlawinfo:dates&gt;
         &lt;/primlawinfo:primlawinfo&gt;       
      &lt;/cttr:legisinfo&gt;
&lt;/cttr:citedstatlaw&gt;

            </codeblock>
        </example>
        
        <section>
            <title><sourcexml>cttr:body/leg:info/leg:dates</sourcexml> to <targetxml>primlawinfo:primlawinfo/primlawinfo:dates</targetxml></title>
            <ul>
                <li>
            <p>
                <sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates</targetxml>
                <ul>
                    <li>
                                <sourcexml>leg:assentdate</sourcexml> becomes
                                    <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate
                                </targetxml>. <ul>
                                    <li><sourcexml>leg:assentdate/date</sourcexml> content will
                                        become
                                            <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate/date-text
                                        </targetxml>. </li>
                                    <li>
                                        <p>
                                            <sourcexml>leg:assentdate/date/[@day, @month,
                                                @year]</sourcexml> becomes
                                                <targetxml>primlawinfo:dates/primlawinfo:assentdate/[@day,
                                                @month, @year]</targetxml>
                                        </p>
                                    </li>
                                </ul>
                            </li>
                </ul>
            </p>
                </li>
            </ul>
        </section>
        <example>
            <lines>Source XML <sourcexml>leg:dates</sourcexml>,<sourcexml>leg:assentdate</sourcexml></lines>
            <codeblock>
                
&lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:dates&gt;
        &lt;leg:assentdate&gt;Budget: &lt;date day="21" month="03" year="2000"&gt;21 Mar 2000&lt;/date&gt;&lt;/leg:assentdate&gt;
      &lt;/leg:dates&gt;
    &lt;/leg:info&gt;
&lt;/cttr:body&gt;
                
            </codeblock>
            
            <lines>Target XML <sourcexml>leg:dates</sourcexml>,<sourcexml>leg:assentdate</sourcexml></lines>
            <codeblock>
                
&lt;cttr:citedstatlaw&gt;
    &lt;cttr:legisinfo&gt;
        .......
            &lt;primlawinfo:primlawinfo&gt;
                &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:assentdate day="21" month="03" year="2000"&gt;Budget: &lt;date-text&gt;21 Mar 2000&lt;/date-text&gt;&lt;/primlawinfo:assentdate&gt;
                &lt;/primlawinfo:dates&gt;
            &lt;/primlawinfo:primlawinfo&gt;
    &lt;/cttr:legisinfo&gt;
&lt;/cttr:citedstatlaw&gt;

                
            </codeblock>
        </example>
        <section>
            <title><sourcexml>cttr:body/leg:info/leg:hier</sourcexml> to <targetxml>doc:metadata/doc:docinfo/doc:hier</targetxml></title>
            <p>
                <note><sourcexml>cttr:body/leg:info/leg:hier</sourcexml> is being mapped in
                        <b>doc:metadata</b> section in target documents.</note>
                <ul>
                    <li><sourcexml>cttr:body/leg:info/leg:hier</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo/doc:hier</targetxml></li>
                    <li><sourcexml>cttr:body/leg:info/leg:hier/leg:hierlev/[@leveltype]</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo/doc:hier/doc:hierlev/[@leveltype]</targetxml></li>
                    <li><sourcexml>cttr:body/leg:info/leg:hier/leg:hierlev</sourcexml> becomes
                            <targetxml>doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading/title</targetxml></li>
                </ul>
            </p>
        </section>
        <example>
            <lines>Source XML<sourcexml>cttr:body/leg:info/leg:hier</sourcexml></lines>
            <codeblock>
                
  &lt;cttr:body&gt;
    &lt;leg:info&gt;
      &lt;leg:hier&gt;
        &lt;leg:hierlev leveltype="part" searchtype="PART-NUM"&gt;Part 6&lt;/leg:hierlev&gt;
        &lt;leg:hierlev leveltype="chapter"&gt;Chapter 7&lt;/leg:hierlev&gt;
      &lt;/leg:hier&gt;
    &lt;/leg:info&gt;
  &lt;cttr:body&gt;  

            </codeblock>
            <lines>Target XML<sourcexml>cttr:body/leg:info/leg:hier</sourcexml></lines>
            <codeblock>
                
&lt;doc:metadata&gt;
        &lt;doc:docinfo doc-content-country="GB"&gt;
            &lt;doc:hier&gt;
                &lt;doc:hierlev leveltype="part"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Part 6&lt;/title&gt;
                     &lt;/heading&gt;
                 &lt;/doc:hierlev&gt;
                &lt;doc:hierlev leveltype="chapter"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Chapter 7&lt;/title&gt;
                    &lt;/heading&gt;
                 &lt;/doc:hierlev&gt; 
            &lt;/doc:hier&gt;
       &lt;/doc:docinfo&gt;
&lt;doc:metadata&gt;

            </codeblock>
        </example>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK16_LegislativeCitator\Citator_Head.dita  -->
	<xsl:message>UK16_LegislativeCitator_Citator_Head.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:body   -->
		<cttr:body>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:body>

	</xsl:template>

	<xsl:template match="leg:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:head/cttr:citedstatlaw   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:head/cttr:citedstatlaw   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="leg:info/leg:officialname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/cttr:citations   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<cttr:citations>
						<xsl:apply-templates select="@* | node()"/>
					</cttr:citations>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<legisinfo:names>
					<popname>
						<xsl:apply-templates select="@* | node()"/>
					</popname>
				</legisinfo:names>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/popname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<legisinfo:names>
					<popname>
						<xsl:apply-templates select="@* | node()"/>
					</popname>
				</legisinfo:names>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="popname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:names>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:names>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="popname/@ln.user-displayed"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:names>
								<legisinfo:officialtitle>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:officialtitle>
							</legisinfo:names>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:names>
								<legisinfo:officialtitle>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:officialtitle>
							</legisinfo:names>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="leg:officialname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:names>
								<legisinfo:officialtitle>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:officialtitle>
							</legisinfo:names>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="leg:officialname/@searchtype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:statusgroup>
								<legisinfo:status>
									<legisinfo:statustext>
										<xsl:apply-templates select="@* | node()"/>
									</legisinfo:statustext>
								</legisinfo:status>
							</legisinfo:statusgroup>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="leg:officialname/@leg-signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:head/cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		<cttr:head>
			<cttr:citedstatlaw>
				<cttr:legisinfo>
					<primlawinfo:primlawinfo>
						<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
							<legisinfo:statusgroup>
								<legisinfo:status>
									<legisinfo:statustext>
										<xsl:apply-templates select="@* | node()"/>
									</legisinfo:statustext>
								</legisinfo:status>
							</legisinfo:statusgroup>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</cttr:legisinfo>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="leg:statutename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<legisinfo:legisinfo>
					<legisinfo:names>
						<legisinfo:officialtitle>
							<xsl:apply-templates select="@* | node()"/>
						</legisinfo:officialtitle>
					</legisinfo:names>
				</legisinfo:legisinfo>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:officalname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<legisinfo:legisinfo>
					<legisinfo:names>
						<legisinfo:officialtitle>
							<xsl:apply-templates select="@* | node()"/>
						</legisinfo:officialtitle>
					</legisinfo:names>
				</legisinfo:legisinfo>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier/[@type="officialnum"]   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<!--  Could not determine target element or attribute name:  <[@type="officialnum"]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@type="officialnum"]>  -->
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:officialnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier/[@type=officialnum]   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<!--  Could not determine target element or attribute name:  <[@type=officialnum]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@type=officialnum]>  -->
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialnum/leg:seriesnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/[@type="seriesnum"]   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<primlawinfo:identifier-component>
					<!--  Could not determine target element or attribute name:  <[@type="seriesnum"]>  -->						<xsl:apply-templates select="@* | node()"/>
					<!--  Could not determine target element or attribute name:  </[@type="seriesnum"]>  -->
				</primlawinfo:identifier-component>
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialnum/leg:year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate/[@year]   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:enactdate>
					<!--  Could not determine target element or attribute name:  <[@year]>  -->						<xsl:apply-templates select="@* | node()"/>
					<!--  Could not determine target element or attribute name:  </[@year]>  -->
				</primlawinfo:enactdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:seriesnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:assentdate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:assentdate>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:assentdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:assentdate/date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate/date-text   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:assentdate>
					<date-text>
						<xsl:apply-templates select="@* | node()"/>
					</date-text>
				</primlawinfo:assentdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:assentdate/date/[@day, @month,&#xA;                                                @year]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:dates/primlawinfo:assentdate/[@day,@month,@year]   -->
		<primlawinfo:dates>
			<primlawinfo:assentdate>
				<!--  Could not determine target element or attribute name:  <[@day,@month,@year]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@day,@month,@year]>  -->
			</primlawinfo:assentdate>
		</primlawinfo:dates>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:hier"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<xsl:apply-templates select="@* | node()"/>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:hier/leg:hierlev/[@leveltype]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier/doc:hierlev/[@leveltype]   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<doc:hierlev>
						<!--  Could not determine target element or attribute name:  <[@leveltype]>  -->							<xsl:apply-templates select="@* | node()"/>
						<!--  Could not determine target element or attribute name:  </[@leveltype]>  -->
					</doc:hierlev>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:hier/leg:hierlev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading/title   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<doc:hierlev>
						<heading>
							<title>
								<xsl:apply-templates select="@* | node()"/>
							</title>
						</heading>
					</doc:hierlev>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>