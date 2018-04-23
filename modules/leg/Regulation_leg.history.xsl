<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.history">
   <title>leg:history <lnpid>id-ST04-26824</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:history</sourcexml> becomes <targetxml>primlawhist:primlawhist</targetxml>.
   
       
          <note>If <sourcexml>leg:history</sourcexml> is the child of <sourcexml>leg:bodytext</sourcexml> then 
              <targetxml>primlawhist:primlawhist</targetxml> will be sibling of <targetxml>primlaw:bodytext</targetxml>.</note>
    

           <pre>
             <b><i>Source example based on CA content</i></b>
             

&lt;leg:bodytext&gt;
    &lt;p&gt;&lt;text&gt;1 In this Regulation,&lt;/text&gt;&lt;/p&gt;
    ...
    &lt;leg:history&gt;
        &lt;leg:tableofamend&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;verbatim verbatimclass="verbatim"&gt;&lt;nl/&gt; ** Editor's Table **&lt;nl/&gt;
                        &lt;nl/&gt; Provision Changed by Effective Gazette Date&lt;nl/&gt;
                        &lt;nl/&gt; 1(b) Alta. Reg. 270/2006 s49 2006 Nov 3 2006 Nov 30&lt;nl/&gt; 1(e) Alta. Reg.
                        270/2006 s49 2006 Nov 3 2006 Nov 30&lt;nl/&gt; *****&lt;/verbatim&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:tableofamend&gt;
    &lt;/leg:history&gt;
&lt;/leg:bodytext&gt;

                 
           </pre>
           
           <pre>
             <b><i>Target Example</i></b>
             

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;1 In this Regulation,&lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/primlaw:bodytext&gt;
&lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;&lt;text&gt;&lt;verbatim verbatimclass="verbatim"&gt;&lt;proc:nl/&gt;
                            ** Editor's Table **&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt;
                            Provision    Changed by               Effective    Gazette Date&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt;
                            1(b)         Alta. Reg. 270/2006 s49  2006 Nov 3   2006 Nov 30&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt;
                            1(e)         Alta. Reg. 270/2006 s49  2006 Nov 3   2006 Nov 30&lt;proc:nl/&gt;
                            *****&lt;/verbatim&gt;&lt;/text&gt;&lt;/p&gt;
                  &lt;/bodytext&gt;
              &lt;/primlawhist:histitem&gt;                
        &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

             
           </pre>
          </li>
            <li>If <sourcexml>leg:history</sourcexml> is the child of <sourcexml>leg:prelim</sourcexml>
                    <b>then it becomes</b>
                    <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist</targetxml>
                    with optional child elements and is using converted rule below: <ul>
                        <li><sourcexml>leg:heading</sourcexml>
                            <b>becomes</b>
                            <targetxml>heading</targetxml></li>
                        <li><sourcexml>title</sourcexml>
                            <b>becomes</b>
                            <targetxml>title</targetxml></li>
                    </ul>
                    <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;&lt;title&gt;Author's Note&lt;/title&gt;&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
	&lt;leg:history&gt;
		&lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;leg:tableofamend&gt;
			&lt;table&gt;
				&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
				&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
				&lt;thead&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/thead&gt;
				&lt;tbody&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
				&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
				&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/leg:tableofamend&gt;
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;



</pre>
                    <pre>
              <b><i>Target Example</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
		&lt;heading&gt;
			&lt;title&gt;Author's Note&lt;/title&gt;
		&lt;/heading&gt;
		&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
		&lt;primlawhist:primlawhist&gt;
			&lt;heading&gt;
				&lt;title&gt;Table of Amendments&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histgrp&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
			&lt;primlawhist:histgrp grptype="tableofamend"&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;table&gt;
							&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
								&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
								&lt;thead&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/thead&gt;
								&lt;tbody&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
									&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
									&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/tbody&gt;
							&lt;/tgroup&gt;
						&lt;/table&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
		&lt;/primlawhist:primlawhist&gt;
	&lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;

</pre>
            </li>
            <li>If input documents is having scenario <sourcexml>leg:history/p/text/</sourcexml>
                    then it becomes
                        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>
                    <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:history&gt;
    &lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
    &lt;p&gt;&lt;text&gt;The Fair Work (Transitional Provisions and Consequential Amendments) Regulations 2009 SLI No 166, were registered
	on 30 June 2009 and commenced operation on 1 July 2009 (FRLI No F2009L02566). These Regulations are yet to be amended.&lt;/text&gt;&lt;/p&gt;
    &lt;leg:tableofamend&gt;
        &lt;table&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
                &lt;thead&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/thead&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work (Transitional Provisions and Consequential Amendments) Amendment Regulations 2009 (No 1) SLI 335 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;26 November 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2009&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 1) SLI 337 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;27 November 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;Regulations 1&amp;#x2013;3, Sch 1: 28 November 2009; remainder: 1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 2) SLI 364 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 3) SLI 391 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;


              </pre>
                    <pre>

              <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
    &lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;
       &lt;primlawhist:histgrp&gt;
           &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;The Fair Work (Transitional Provisions and Consequential Amendments) Regulations
				 2009 SLI No 166, were registered on 30 June 2009 and commenced operation on 1 July 2009 
				(FRLI No F2009L02566). These Regulations are yet to be amended.&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
					&lt;table&gt;
                        &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                            &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
                            &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
                            &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
                            &lt;thead&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
                                &lt;/row&gt;
                            &lt;/thead&gt;
                            &lt;tbody&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work (Transitional Provisions and Consequential Amendments) Amendment
									Regulations 2009 (No 1) SLI 335 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;26 November 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2009&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 1) SLI 337 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;27 November 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;Regulations 1&amp;#x2013;3, Sch 1: 28 November 2009; remainder: 1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 2) SLI 364 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 3) SLI 391 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                            &lt;/tbody&gt;
                        &lt;/tgroup&gt;
                    &lt;/table&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
 </pre><note>Supress the <sourcexml>refpt</sourcexml> element in
                            <sourcexml>title/refpt</sourcexml> scenario since the ids are duplicate
                        in element <sourcexml>leg:history</sourcexml> and
                            <sourcexml>refpt</sourcexml>.</note>
                </li>
            <li>If input documents is having scenario
                        <sourcexml>leg:history/p/blockquote</sourcexml> then it becomes
                        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/
                        bodytext/p/blockquote</targetxml>
                    <note>Refer <xref href="../../common_newest/Rosetta_blockquote-legfragment-leg.level-LxAdv-primlaw.excerpt-primlaw.level.dita">legfragment</xref> for handling of blockquote/legfragment
                        scenario.</note>
                    <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:prelim&gt;
    &lt;leg:history&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;Table of Amendments&lt;/title&gt; 
		&lt;/leg:heading&gt;
		&lt;p&gt;
			&lt;blockquote&gt;
				&lt;p indent="none"&gt;
					&lt;text&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Note: These Rules are applicable....&lt;/emph&gt;&lt;/emph&gt;&lt;/text&gt;
				&lt;/p&gt;
			&lt;/blockquote&gt;
            ...
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;
</pre>
                    <pre>
              <b><i>Target Example</i></b>
                   
                   
&lt;primlaw:prelim&gt;
    &lt;primlawhist:primlawhist&gt;
        &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;blockquote&gt;
                            &lt;p indent="none"&gt;
                                &lt;text&gt;
                                    &lt;emph typestyle="bf"&gt;
                                        &lt;emph typestyle="it"&gt;Note: These Rules are applicable....&lt;/emph&gt; 
                                    &lt;/emph&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/blockquote&gt;
                        ....
                &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;    
    &lt;/primlaw:prelim&gt;
                 </pre>
                    <pre>
              <b><i>Source example based on AU content (For handling 'blockquote/legfragment')</i></b>
                    
                    
&lt;leg:history&gt;
	&lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;Criminal Code Act 1995 No 12, received assent 15 March 1995, commenced....&lt;/text&gt;&lt;/p&gt;
	&lt;p&gt;&lt;text&gt;....&lt;/text&gt;
		&lt;blockquote&gt;
			&lt;legfragment&gt;
				&lt;leg:level&gt;
					&lt;leg:level-vrnt leveltype="clause"&gt;
						&lt;leg:heading inline="true"&gt;
						&lt;title&gt;Transitional &amp;mdash; Criminal Code Act 1995&lt;/title&gt;
						&lt;/leg:heading&gt;
						....
					&lt;/leg:level-vrnt&gt;
				&lt;/leg:level&gt;
			&lt;/legfragment&gt;
		&lt;/blockquote&gt;
	&lt;/p&gt;
	....
&lt;/leg:history&gt;

                </pre>
                    <pre>
              <b><i>Target Example</i></b>
                    
              
&lt;primlawhist:primlawhist&gt;
	&lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;
		&lt;primlawhist:histgrp&gt;
			&lt;primlawhist:histitem&gt;
				&lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;Criminal Code Act 1995 No 12, received assent 15 March 1995, commenced....&lt;/text&gt;&lt;/p&gt;
			        &lt;p&gt;
        			&lt;text&gt;...&lt;/text&gt;&lt;/p&gt;
          			&lt;primlaw:excerpt&gt;
             			&lt;primlaw:level leveltype="clause"&gt;
                			&lt;heading inline="true"&gt;
                				&lt;title&gt;ransitional &amp;mdash; Criminal Code Act 1995&lt;/title&gt;
                			&lt;/heading&gt;           
             				....
             			&lt;/primlaw:level&gt;
             		&lt;/primlaw:excerpt&gt;
             		....
             	&lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;
          
    </pre>
                </li>
            
            <li>If input documents is having scenario <sourcexml>leg:history/p/glp:note</sourcexml>
                    <b>becomes</b>
                    <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>.
                        <note>If there is only <sourcexml>glp:note</sourcexml> as a child of
                            <sourcexml>p</sourcexml> then omit <sourcexml>p</sourcexml> from
                        conversion and generate <targetxml>note</targetxml> but if there is any
                        child of <sourcexml>p</sourcexml> other than <sourcexml>glp:note</sourcexml>
                        then <targetxml>note</targetxml> will becomes sibling of
                            <targetxml>p</targetxml> in output.</note>
                    <pre>
              <b><i>Source example based on AU content</i></b>
                   
&lt;leg:history&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt; 
	&lt;/leg:heading&gt;
	&lt;p&gt;
		&lt;glp:note&gt;
			&lt;h&gt;Editor’s Note:&lt;/h&gt; 
			&lt;p&gt;&lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;&lt;/p&gt;
		&lt;/glp:note&gt;
	&lt;/p&gt;
	...
&lt;/leg:history&gt;

                                   </pre>
                    <pre>
              <b><i>Target Example</i></b>
                   
                   
&lt;primlawhist:primlawhist&gt;
	&lt;heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlawhist:histgrp&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;note&gt;
					&lt;h&gt;Editor’s Note:&lt;/h&gt; 
						&lt;p&gt;&lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;&lt;/p&gt;
				&lt;/note&gt;
			&lt;/bodytext&gt;
			....
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

              </pre>
            </li>
        	<li>If input documents is having scenario <sourcexml>leg:endmatter/leg:history</sourcexml>
					<b>Becomes</b>
					<targetxml>primlaw:level[@leveltype="endnote"]/primlawhist:primlawhist</targetxml>
					with optional child elements <sourcexml>leg:history/leg:heading</sourcexml>
					<b>becomes</b>
					<targetxml>primlawhist:primlawhist/heading</targetxml> with attributes
						<sourcexml>leg:history[@id]</sourcexml>
					<b>becomes</b>
					<targetxml>primlawhist:primlawhist[@xml:id]</targetxml> populated as: <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:endmatter&gt;
	&lt;leg:history id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST" type="ext"/&gt;
			&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:history&gt;
&lt;/leg:endmatter&gt;



</pre>
					<pre>

              <b><i>Target Example</i></b>


&lt;primlaw:level leveltype="endnote"&gt;
	&lt;primlawhist:primlawhist xml:id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;heading&gt;
			&lt;title&gt;Legislative History&lt;/title&gt;
		&lt;/heading&gt;
		....
	&lt;/primlawhist:primlawhist&gt;
&lt;/primlaw:level&gt;

            </pre>
					<note>Refer "<xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common_rosetta_refpt.dita</xref>" file for handling of
							<sourcexml>refpt</sourcexml> element.</note>
				</li>
            <li>The conversion of <sourcexml>leg:history/leg:tableofamend</sourcexml> is based on
					the following scenarios: <ul>
						<li>
							<sourcexml>leg:tableofamend/heading</sourcexml>
							<b>Becomes</b>
							<targetxml>primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading</targetxml>,
							this is for capturing the heading information.</li>
						<li><sourcexml>leg:tableofamend/table</sourcexml>
							<b>Becomes</b>
							<targetxml>primlaw:primlawhist/primlaw:histgrp/primlaw:histitem/bodytext/table.</targetxml>
							<note>Add the attribute value
									<sourcexml>@grptype="tableofamend"</sourcexml> to
									<targetxml>primlawhist:histgrp</targetxml>.</note>
						</li>
					</ul>
					<p>Below examples show the handling of
						<sourcexml>leg:tableofamend</sourcexml>:</p>
					<pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:tableofamend&gt;
	&lt;leg:heading&gt;
	&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
	&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
	&lt;table frame="all"&gt;
		&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
			&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
			&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
			&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
			&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
			&lt;thead&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
					Law&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
					&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;
					&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;
					&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/thead&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES)
					LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
					&lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		&lt;/tgroup&gt;
	&lt;/table&gt;
&lt;/leg:tableofamend&gt;


</pre>
					<pre>

              <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
	&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_AMENDTOME" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
			&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
			&lt;table frame="all"&gt;
				&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
					&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
					&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
					&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
					&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
							Law&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
							&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement 
							Dates&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully 
							Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY
							(REGULATORY SERVICES) LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
							&lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

								</pre>
					<pre>
              <b><i>Source example based on AU content</i></b>


&lt;leg:history id="ACT_REG_1991-10_LEGHIST"&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST" type="ext"/&gt;
				&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004. Details
		of events affecting the subordinate law before 2004 may be found in the 
		&lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_NOTES" dpsi="05CC" docidref="ABCD_9876"&gt;
		Notes&lt;/remotelink&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_REPEALED" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by &lt;remotelink
		service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876" refpt="ACT_REG_2007-36_PROV94"&gt;OCCUPATIONAL
		HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/remotelink&gt;.&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_MADE" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;table frame="all"&gt;
		  &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
			&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
			&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
			&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
			&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
			&lt;thead&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending Law&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/thead&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="left"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
					refpt="ACT_ACT_2007-37"&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES) LEGISLATION
					AMENDMENT ACT 2007&lt;/remotelink&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="left"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
					refpt="ACT_ACT_2007-37_SCH2PT2.5"&gt;Schedule 2 Part 2.5&lt;/remotelink&gt;&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		  &lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

</pre>
					<pre>   
              <b><i>Target Example</i></b>

&lt;primlawhist:primlawhist xml:id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;heading&gt;
			&lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004. Details of events
		affecting the subordinate law before 2004 may be found in the 
		&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;Notes&lt;/ref:content&gt;
		&lt;ref:locator anchoridref="ACT_REG_1991-10_NOTES"&gt;
			&lt;ref:locator-key&gt;
				&lt;ref:key-name name="DOC-ID"/&gt;
				&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
			&lt;/ref:locator-key&gt;
		&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_REPEALED" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by 
		&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/ref:content&gt;
		&lt;ref:locator anchoridref="ACT_REG_2007-36_PROV94"&gt;
			&lt;ref:locator-key&gt;
				&lt;ref:key-name name="DOC-ID"/&gt;
				&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
			&lt;/ref:locator-key&gt;
		&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt;.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_MADE" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;heading&gt;
			&lt;title&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
			&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
			  &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
			  &lt;table frame="all"&gt;
				&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
					&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
					&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
					&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
					&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
							Law&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
							&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement 
							Dates&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully 
							Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="left"&gt;
							&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
							&lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES) LEGISLATION AMENDMENT ACT 2007&lt;/ref:content&gt;
							&lt;ref:locator anchoridref="ACT_ACT_2007-37"&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
							&lt;/ref:crossreference&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="left"&gt;
							&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
							&lt;ref:content&gt;Schedule 2 Part 2.5&lt;/ref:content&gt;
							&lt;ref:locator anchoridref="ACT_ACT_2007-37_SCH2PT2.5"&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
							&lt;/ref:crossreference&gt;&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		  &lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

</pre>
				</li>
        </ul>
      </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>      
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.history.dita  -->
	<xsl:message>Regulation_leg.history.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:history">

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:prelim">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist   -->
		<primlaw:level>
			<primlaw:prelim>
				<primlawhist:primlawhist>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:primlawhist>
			</primlaw:prelim>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:history/p/text/">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</blockquote>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="title/refpt">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</blockquote>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/blockquote">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</blockquote>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/glp:note">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<note>
							<xsl:apply-templates select="@* | node()"/>
						</note>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:endmatter/leg:history">

		<!--  Original Target XPath:  primlaw:level[@leveltype="endnote"]/primlawhist:primlawhist   -->
		<primlaw:level>
			<primlawhist:primlawhist>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:primlawhist>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:history/leg:heading">

		<!--  Original Target XPath:  primlawhist:primlawhist/heading   -->
		<primlawhist:primlawhist>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history[@id]">

		<!--  Original Target XPath:  primlawhist:primlawhist[@xml:id]   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/leg:tableofamend">

		<!--  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading   -->
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<heading>
					<xsl:apply-templates select="@* | node()"/>
				</heading>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="leg:tableofamend/heading">

		<!--  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading   -->
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<heading>
					<xsl:apply-templates select="@* | node()"/>
				</heading>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="leg:tableofamend/table">

		<!--  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp/primlaw:histitem/bodytext/table.   -->
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<primlaw:histitem>
					<bodytext>
						<table.>
							<xsl:apply-templates select="@* | node()"/>
						</table.>
					</bodytext>
				</primlaw:histitem>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="@grptype=&#34;tableofamend&#34;">

		<!--  Original Target XPath:  primlawhist:histgrp   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="leg:tableofamend">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>