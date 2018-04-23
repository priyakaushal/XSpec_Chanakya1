<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_heading">
    <title>case:body/heading <lnpid>id-AU07-19214</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/heading</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/heading</targetxml> The source attribute : <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/heading @searchtype="PRACTICE-NOTE"</sourcexml> is dropped. The children are
                    described below: <ul class="- topic/ul ">
                        <li class="- topic/li "> The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/heading/edpnum</sourcexml>
              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/heading/desig</targetxml>. The child
                <sourcexml>case:body/heading/edpnum/refpt</sourcexml> becomes
                <targetxml>courtorder:head/ref:anchor</targetxml>, attribute
                <sourcexml>refpt/@id</sourcexml> becomes <targetxml>ref:anchor/@id</targetxml>,
              attribute <sourcexml>refpt/@type="ext"</sourcexml> becomes
                <targetxml>ref:anchor/@anchortype="global"</targetxml>. <note>For more details,
                please refer to the General Markup section topic about
                <sourcexml>edpnum</sourcexml>, and refer to the respective child element topics in
                the General Markup section for handling of child elements.</note>
              <pre xml:space="preserve" class="- topic/pre ">
&lt;CASEDOC&gt;&lt;case:body&gt;
    &lt;heading searchtype="PRACTICE-NOTE"&gt;
        &lt;edpnum&gt;
            &lt;refpt type="ext" id="UCPN.DC.PRACD.D130306"/&gt;[30,000]
        &lt;/edpnum&gt;
    &lt;/heading&gt;
&lt;/case:body&gt;&lt;/CASEDOC&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;
    &lt;ref:anchor id="UCPN.DC.PRACD.D130306" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;desig&gt;[30,000]&lt;/desig&gt;...
        &lt;/heading&gt; 
&lt;/courtorder:head&gt;
                
</pre>
            </li>
                      <li class="- topic/li ">The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/heading/desig/designum</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">desig</targetxml>. The child
                <sourcexml>case:body/heading/desig/designum/refpt</sourcexml> becomes
                <targetxml>courtorder:head/ref:anchor</targetxml>, attribute
                <sourcexml>refpt/@id</sourcexml> becomes <targetxml>ref:anchor/@id</targetxml>,
              attribute <sourcexml>refpt/@type="ext"</sourcexml> becomes
                <targetxml>ref:anchor/@anchortype="global"</targetxml>
              <note class="- topic/note ">Please refer to 'footnotegrp and footnote' in the General
                Markup section for handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">fnr</sourcexml> and the respective child element topics in the General Markup
                section for handling of child elements.</note>
              <pre xml:space="preserve" class="- topic/pre ">
&lt;CASEDOC&gt;&lt;case:body&gt;
    &lt;heading searchtype="PRACTICE-NOTE"&gt;
        &lt;desig&gt;
            &lt;designum&gt;Practice Direction 3/06&lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
&lt;/case:body&gt;
&lt;/CASEDOC&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:courtorder&gt;&lt;courtorder:head&gt;
    &lt;heading&gt;
        &lt;desig&gt;Practice Direction 3/06
        &lt;/desig&gt;
    &lt;/heading&gt; 
&lt;/courtorder:head&gt;
&lt;/courtorder:courtorder&gt;                
</pre>
            </li>
                    </ul>
                    <note>Conversion should not create consecutive <targetxml>heading</targetxml> elements. When 2 or more consecutive sibling source
                        elements map to <targetxml>heading</targetxml>, data should be merged to a single <targetxml>heading</targetxml> element
                        unless this would hamper content ordering.</note>
                </li>
            </ul>
        </section>
        <section>
            <p>If <sourcexml>case:body/heading</sourcexml> is immediately followed by <sourcexml>case:body/case:headnote</sourcexml> and the following
                situation exists: <ul>
                    <li><sourcexml>case:body/heading</sourcexml> contains <sourcexml>title</sourcexml></li>
                    <li><sourcexml>case:body/case:headnote</sourcexml> contains <sourcexml>case:info/case:casename</sourcexml></li>
                </ul>then <sourcexml>case:body/heading/title</sourcexml> should become <targetxml>h</targetxml>.</p>
        </section>
        <example>
            <title>Scenario when <sourcexml>case:body/heading/title</sourcexml> maps to <targetxml>h</targetxml></title>
            <codeblock>

&lt;case:body&gt;
    &lt;heading searchtype="PRACTICE-NOTE"&gt;
        &lt;title&gt;COMMON LAW DIVISION&lt;/title&gt;
        &lt;edpnum&gt;&lt;refpt type="ext" id="UCPN.PN.SCCL.PN1"/&gt;[SC CL 1]&lt;/edpnum&gt;
        &lt;desig&gt;
            &lt;designum&gt;Practice Note SC CL 1&lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
            &lt;case:casename searchtype="PRACTICE-NOTE"&gt;Supreme Court Common Law Division &amp;#x2014; General&lt;/case:casename&gt;
        &lt;/case:info&gt;
    &lt;/case:headnote&gt;
&lt;/case:body&gt;

            </codeblock>
            <b>Becomes</b>
            <codeblock>

&lt;courtorder:head&gt;
    &lt;h&gt;COMMON LAW DIVISION&lt;/h&gt;
    &lt;ref:anchor id="UCPN.PN.SCCL.PN1" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;altdesig&gt;[SC CL 1]&lt;/altdesig&gt;
        &lt;desig&gt;Practice Note SC CL 1&lt;/desig&gt;
        &lt;title&gt;Supreme Court Common Law Division &amp;#x2014; General&lt;/title&gt;
    &lt;/heading&gt;
&lt;/courtorder:head&gt;

            </codeblock>
        </example>
      <section>
        <title>Changes</title>
        <p>2014-04-04: <ph id="change_20140404_JCG">Clarified the instructions for <sourcexml>heading/edpnum</sourcexml> and <sourcexml>heading/desig</sourcexml>, particularly with respect to descendant elmenent <sourcexml>refpt</sourcexml>. No new instructions specified.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.body_heading.dita  -->

 
</xsl:stylesheet>