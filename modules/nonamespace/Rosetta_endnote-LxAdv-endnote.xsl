<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="dita docinfo glp leg xs admindoc">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_endnote">
    <title><sourcexml>endnote</sourcexml> to  <targetxml>endnote</targetxml> <lnpid>id-CCCC-10317</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i><b>Handling of Footnote references and Endnotes</b></title>
            <p> Whenever <sourcexml>refpt</sourcexml> and <sourcexml>remotelink</sourcexml> occurs
                as adjacent siblings, this indicates they are footnote refernces and are linked to
                endnotes within the document or outside the document. <ol>
                    <li> Check for the <sourcexml>remotelink/@refpt</sourcexml> value, if it is
                        "*_FN#", then create a <targetxml>footnote-ref</targetxml>. If it is
                        "*_FN#-R" then create the <targetxml>footnote</targetxml> as child of
                            <targetxml>endnotes</targetxml>. </li>
                    <li> The <sourcexml>l</sourcexml> around endnotes is converted to
                            <targetxml>endnotes</targetxml> the <sourcexml>li</sourcexml> around a
                        endnote is removed when <sourcexml>refpt</sourcexml> and
                            <sourcexml>remotelink</sourcexml> is converted to
                            <targetxml>footnote/@role="endnote"</targetxml>. </li>
                </ol>
                <note>endnote references can be found at any place in the same document or in
                    another document.</note>
                <note>We are only converting <sourcexml>refpt</sourcexml> and
                        <sourcexml>remotelink</sourcexml> to
                        <targetxml>footnote/@role="endnote"</targetxml> within
                        <targetxml>primlaw:level/@leveltype="endnote"</targetxml> when they occurs
                    as adjacent siblings.</note>
                <note>footnote-ref/@reftype will be set to "global" if refpt/@id="ext".</note>
            </p>
            <p> The attribute value's for <sourcexml>refpt/@id</sourcexml> and
                    <sourcexml>remotelink/@refpt</sourcexml> are duplicated within the source
                document i.e., <ol>
                    <li>
                        <sourcexml>refpt/@id</sourcexml> (footnote refernce) and
                            <sourcexml>remotelink/@refpt</sourcexml> (endnote) will be same. and </li>
                    <li>
                        <sourcexml>remotelink/@refpt</sourcexml> (footnote refernces) and
                            <sourcexml>refpt/@id</sourcexml> (endnote) will be same. </li>
                </ol>
                <note>The endnote and associated endnote references may be in different
                    documents.</note>
            </p>
            <p>
                <b>Footnote-ref:</b> Every occurance of <sourcexml>refpt</sourcexml> and
                    <sourcexml>remotelink</sourcexml> will become
                    <targetxml>footnote-ref</targetxml> in output. Populate
                    <targetxml>footnote-ref</targetxml> as follows: <ul>
                    <li><targetxml>footnote-ref/@role</targetxml> will always be set to
                            <targetxml>"endnote"</targetxml>.</li>
                        <li><sourcexml>remotelink/@refpt</sourcexml> becomes
                            <targetxml>footnote-ref/@anchoridref</targetxml>.</li>
                    <li><sourcexml>refpt/@id</sourcexml> becomes
                            <targetxml>footnote-ref/ref:anchor/@id</targetxml>.</li>
                    <li><sourcexml>remotelink/sup</sourcexml> becomes
                            <targetxml>footnote-ref/label</targetxml>.</li>
                    <li><sourcexml>remotelink</sourcexml> attributes are converted as follows: <p>
                            Create <targetxml>footnote:ref/ref:locator/ref:locator-key</targetxml>
                            with attributes and children as follows: <ul>
                                <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                                        <li><targetxml>ref:key-name/@name</targetxml> will have the
                                            value "DOC-ID".</li>
                                        <li><targetxml>key-value/@value</targetxml> will be the
                                            value of <sourcexml>@dpsi</sourcexml> followed by hyphen
                                            and concatenated with <sourcexml>@refpt</sourcexml> or
                                                <sourcexml>@remotekey2</sourcexml>, which ever is
                                            present (if both are present, use
                                                <sourcexml>@remotekey2</sourcexml>).</li>
                                    </ul></li>
                                <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                        <li><targetxml>ref:key-name/@name</targetxml> will have the
                                            value "DOC-ID".</li>
                                        <li><targetxml>ref:key-value/@value</targetxml> will be the
                                            value of <sourcexml>@dpsi</sourcexml> followed by hyphen
                                            and concatenated with
                                            <sourcexml>@docidref</sourcexml>.</li>
                                        <li>Create <targetxml>ref:locator/@anchoridref</targetxml>
                                            with value from <sourcexml>@refpt</sourcexml> or
                                                <sourcexml>@remotekey2</sourcexml>, which ever is
                                            present (if both are present, use
                                                <sourcexml>@refpt</sourcexml>).</li>
                                    </ul></li>
                            </ul>
                        </p>
                    </li>
                </ul>
            </p>
            <p>
                <b>Endnote:</b> Every occurance of <sourcexml>refpt</sourcexml> and
                    <sourcexml>remotelink</sourcexml> will become <targetxml>footnote</targetxml> as
                a child of <targetxml>endnotes</targetxml> which is the container element for all
                the converted endnotes. Populate each <targetxml>footnote</targetxml> created within
                    <targetxml>endnotes</targetxml> as follows: <ul>
                    <li><targetxml>footnote/@role</targetxml> will always be set to "endnote".</li>
                    <li><sourcexml>refpt/@id</sourcexml> becomes
                            <targetxml>footnote/ref:anchor/@id</targetxml>.</li>
                    <li><sourcexml>remotelink/sup</sourcexml> becomes
                            <targetxml>footnote/label</targetxml>.</li>
                    <li><sourcexml>remotelink/sub</sourcexml> becomes
                            <targetxml>footnote/label</targetxml>.</li>
                    <li><sourcexml>remotelink</sourcexml> attributes are converted as follows: <p>
                            Create
                                <targetxml>footnote/ref:returnreference/ref:locator/ref:locator-key</targetxml>
                            with attributes and children as follows: <ul>
                                <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                                        <li><targetxml>ref:key-name/@name</targetxml> will have the
                                            value "DOC-ID".</li>
                                        <li><targetxml>key-value/@value</targetxml> will be the
                                            value of <sourcexml>@dpsi</sourcexml> followed by hyphen
                                            and concatenated with <sourcexml>@refpt</sourcexml> or
                                                <sourcexml>@remotekey2</sourcexml>, which ever is
                                            present (if both are present, use
                                                <sourcexml>@remotekey2</sourcexml>).</li>
                                    </ul></li>
                                <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                        <li><targetxml>ref:key-name/@name</targetxml> will have the
                                            value "DOC-ID".</li>
                                        <li><targetxml>ref:key-value/@value</targetxml> will be the
                                            value of <sourcexml>@dpsi</sourcexml> followed by hyphen
                                            and concatenated with
                                            <sourcexml>@docidref</sourcexml>.</li>
                                        <li>Create <targetxml>ref:locator/@anchoridref</targetxml>
                                            with value from <sourcexml>@refpt</sourcexml> or
                                                <sourcexml>@remotekey2</sourcexml>, which ever is
                                            present (if both are present, use
                                                <sourcexml>@refpt</sourcexml>).</li>
                                    </ul></li>
                            </ul>
                        </p>
                        <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value
                            from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value
                            from the LBU manifest file.</note>
                        <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a
                            number must have an underscore added at start. Also apply other identifier data type format as
                            used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                            (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
                            Handling Pattern Restrictions", if that section exists in this CI.</note>
                    </li>
                </ul>
                <note>All elements between the <sourcexml>l</sourcexml> and the nearest ancestor
                        <sourcexml>leg:level</sourcexml> are not converted as usual. For example,
                        <sourcexml>leg:endmatter/leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/l/li</sourcexml>
                    becomes <targetxml>primlaw:level/endnotes/footnote</targetxml> with appropriate
                    attributes. </note>
                <note>For the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml>, all elements between <sourcexml>l</sourcexml> and the nearest 
                    ancestor <sourcexml>glp:note</sourcexml> are not converted as usual and the target <targetxml>endnote</targetxml> will be sibling of 
                    <targetxml>primlaw:bodytext</targetxml>. The target Xpath will be <targetxml>primlaw:level/endnotes/footnote</targetxml>. Refer below source XML 3 and target XML 3.</note>
            </p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>

&lt;!--Rosetta AU source markup for a reference to an endnote VIC_ACT_6231.xml--&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;Pt 3 Div. 1 Subdiv. (12) (Heading and ss 390–396)
        &lt;/entry&gt;
        &lt;entry colname="c2" align="left"&gt;repealed. 
            &lt;emph typestyle="bf"&gt;&lt;sup&gt;,&lt;/sup&gt;&lt;/emph&gt;
            
&lt;!-- Footnote-refernce-start --&gt;
            &lt;refpt id="VIC_ACT_6231_FN32-R" type="ext"/&gt;
            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0062" docidref="ABCD_5641" refpt="VIC_ACT_6231_FN32"&gt;
                &lt;sup&gt;32&lt;/sup&gt;
            &lt;/remotelink&gt;
&lt;!-- Footnote-reference-end --&gt;

            &lt;emph typestyle="bf"&gt;&lt;sup&gt;,&lt;/sup&gt;&lt;/emph&gt;
        &lt;/entry&gt;
    &lt;/row&gt;
...
&lt;leg:endmatter&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
&lt;!--Endnote-start --&gt;
                    &lt;l&gt;
                        &lt;li&gt;
                            &lt;lilabel&gt;
                                &lt;refpt id="VIC_ACT_6231_FN32" type="ext"/&gt;
                                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0062" docidref="ABCD_5641" refpt="VIC_ACT_6231_FN32-R"&gt;&lt;sup&gt;32&lt;/sup&gt;&lt;/remotelink&gt;
                            &lt;/lilabel&gt;
                            &lt;p&gt;
                                &lt;text align="left"&gt;...&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/li&gt;
                    &lt;!-- ... --&gt;
                    &lt;/l&gt;
&lt;!--Endnote-end --&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:endmatter&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>

&lt;!--
footnote-ref/@role will always be set to "endnote"
remotelink/@refpt becomes footnote-ref/@anchoridref
refpt/@id becomes footnote-ref/ref:anchor/@id
remotelink/sub becomes footnote-ref/label
--&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;Pt 3 Div. 1 Subdiv. (12) (Heading and ss 390–396)
        &lt;/entry&gt;
        &lt;entry colname="c2" align="left"&gt;repealed. 
            &lt;emph typestyle="bf"&gt;&lt;sup&gt;,&lt;/sup&gt;&lt;/emph&gt;
            
         &lt;!--   Footnote-reference-start --&gt; 
            
            &lt;footnote-ref role="endnote" anchoridref="VIC_ACT_6231_FN32"&gt;               	
               	&lt;ref:anchor id="_0062-VIC_ACT_6231_FN32-R" anchortype="global"/&gt;
                &lt;ref:locator anchoridref="VIC_ACT_6231_FN32"&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; 
                    &lt;ref:key-value value="0062-ABCD_5641"/&gt;
                &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;

               	&lt;label&gt;32&lt;/label&gt;
           &lt;/footnote-ref&gt;

           &lt;!-- Footnote-reference-end --&gt;
            
            &lt;emph typestyle="bf"&gt;&lt;sup&gt;,&lt;/sup&gt;&lt;/emph&gt;
        &lt;/entry&gt;
    &lt;/row&gt;

&lt;!--
...
endnotes/footnote/@role will always set to "endnote"
refpt/@id becomes footnote/ref:anchor/@id
remotelink/sub becomes footnote/label
--&gt;
&lt;!-- Endnote-start--&gt;
&lt;primlaw:level leveltype="endnote"&gt;
    &lt;endnotes&gt;
        &lt;footnote role="endnote"&gt;
            &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="VIC_ACT_6231_FN32-R"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0062-ABCD_5641"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:returnreference&gt;
            &lt;ref:anchor id="0062-VIC_ACT_6231_FN32" anchortype="global"/&gt;
            &lt;label&gt;32&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text align="left"&gt;...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/footnote&gt;
        &lt;!-- rest of footnote@role='endnote' --&gt;
    &lt;/endnotes&gt;
&lt;/primlaw:level&gt;
&lt;!--Endnote-end --&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML 2</title>
            <codeblock>

&lt;!--Rosetta AU source markup for a reference to an endnote VIC_ACT_9595.xml--&gt;
    &lt;!-- Footnote-refernce-start --&gt;
&lt;title align="left" searchtype="SECT-TITLE"&gt;
    &lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Constitution of Board&lt;/emph&gt;&lt;/emph&gt;&lt;refpt id="VIC_ACT_9595_FN1-R" type="ext"/&gt;&lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_9595_FN1"&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/remotelink&gt;&amp;#x00A0;
    &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
        &lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
        &lt;/marker&gt;
        &lt;api-params&gt;
            &lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="COUNCIL OF ADULT EDUCATION ACT 1981 w/s LEG-REF(6)"/&gt;&lt;/api-params&gt;
    &lt;/lnlink&gt;
&lt;/title&gt;
&lt;!-- Footnote-reference-end --&gt;

&lt;!-- ... --&gt;

&lt;leg:level id="VIC_ACT_9595_NOTESPROV4"&gt;
    &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION" subdoc="true" toc-caption="4. List of Annotations"&gt;
        &lt;leg:heading&gt;
            &lt;!-- ... --&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
          &lt;leg:bodytext&gt;
             &lt;table&gt;
                &lt;tgroup cols="2"&gt;
                 &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
                 &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                 &lt;tbody&gt;
                &lt;row&gt;
                &lt;entry colname="c1"&gt;S. 2 def. of &amp;quot;adult, community and further education&amp;quot;&lt;/entry&gt;
                &lt;entry colname="c2"&gt;inserted by No. 91/1991 s. 44(a).&lt;/entry&gt;
               &lt;!--... --&gt; 
            &lt;/tbody&gt;
        &lt;/tgroup&gt;
    &lt;/table&gt;
               &lt;!--Endnote-start --&gt;
    &lt;l&gt;
        &lt;li&gt;&lt;lilabel&gt;&lt;refpt id="VIC_ACT_9595_FN1" type="ext"/&gt;&lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_9595_FN1-R"&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/remotelink&gt;&lt;/lilabel&gt;
            &lt;p&gt;&lt;text align="left"&gt;S. 6: Section&amp;#x00A0;50 of the &lt;emph typestyle="bf"&gt;Adult, Community and Further Education Act 1991&lt;/emph&gt;, No. 91/1991, provides as follows:&lt;/text&gt;&lt;/p&gt;
            &lt;p&gt;&lt;text align="left"&gt;&lt;emph typestyle="bf"&gt;'50. &lt;emph typestyle="it"&gt;Transitional provisions for the Council of Adult Education&lt;/emph&gt;&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
        &lt;/li&gt;
        &lt;!-- ... --&gt;
    &lt;/l&gt;
            &lt;!--Endnote-end --&gt;   
           &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 2</title>
            <codeblock>

&lt;!--
footnote-ref/@role will always be set to "endnote"
remotelink/@refpt becomes footnote-ref/@anchoridref
refpt/@id becomes footnote-ref/ref:anchor/@id
remotelink/sub becomes footnote-ref/label
--&gt;
   &lt;!--   Footnote-reference-start --&gt; 
            
            &lt;title align="left"&gt;
    &lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Constitution of Board&lt;/emph&gt;&lt;/emph&gt;
    &lt;footnote-ref role="endnote" anchoridref="VIC_ACT_9595_FN1"&gt;               	
        &lt;ref:anchor id="VIC_ACT_9595_FN1-R" anchortype="global"/&gt;
        &lt;ref:locator anchoridref="VIC_ACT_9595_FN1"&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt; 
                &lt;ref:key-value value="0062-ABCD_1234"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;        
        &lt;label&gt;1&lt;/label&gt;
    &lt;/footnote-ref&gt;&amp;#x00A0;    
&lt;/title&gt;

     &lt;!-- Footnote-reference-end --&gt;           
           
&lt;!--
...
endnotes/footnote/@role will always set to "endnote"
refpt/@id becomes footnote/ref:anchor/@id
remotelink/sub becomes footnote/label
--&gt;
&lt;primlaw:level xml:id="VIC_ACT_9595_NOTESPROV4" leveltype="clause" includeintoc="true" alternatetoccaption="4. List of Annotations"&gt;    
        &lt;heading&gt;
            &lt;!-- ... --&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;table&gt;
                &lt;tgroup cols="2"&gt;
                    &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
                    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                    &lt;tbody&gt;
                        &lt;row&gt;&lt;entry colname="c1"&gt;S. 2 def. of &amp;quot;adult, community and further education&amp;quot;&lt;/entry&gt;&lt;entry colname="c2"&gt;inserted by No. 91/1991 s. 44(a).&lt;/entry&gt;
                            &lt;!--... --&gt; 
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;!-- Endnote-start--&gt;
    &lt;endnotes&gt;
        &lt;footnote role="endnote"&gt;
            &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="VIC_ACT_9595_FN1-R"/&gt;	
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; 
                    &lt;ref:key-value value="0062-ABCD_1234"/&gt;
                &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:returnreference&gt;
            &lt;ref:anchor id="0062-VIC_ACT_9595_FN1" anchortype="global"/&gt;
            &lt;label&gt;1&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text align="left"&gt;S. 6: Section&amp;#x00A0;50 of the &lt;emph typestyle="bf"&gt;Adult, Community and Further Education Act 1991&lt;/emph&gt;, No. 91/1991, provides as follows:&lt;/text&gt;&lt;/p&gt;
                &lt;p&gt;&lt;text align="left"&gt;&lt;emph typestyle="bf"&gt;'50. &lt;emph typestyle="it"&gt;Transitional provisions for the Council of Adult Education&lt;/emph&gt;&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/footnote&gt;
        &lt;!--rest of footnote@role=”endnote” --&gt;
    &lt;/endnotes&gt;
    &lt;!--Endnote-end --&gt;
&lt;/primlaw:level&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML 3</title>
            <codeblock>

&lt;!--Rosetta AU source markup for a reference to an endnote AUS-0065-20130614133539_VIC_REG_2012-14210020.xml--&gt;
   &lt;leg:level id="VIC_REG_2012-142_PROV4"&gt;
    - &lt;leg:level-vrnt searchtype="LEGISLATION" subdoc="true" leveltype="reg" toc-caption="4 Principal Rules"&gt;
        - &lt;leg:heading&gt;
            - &lt;desig searchtype="REG-NUM"&gt;
                - &lt;designum&gt;
                    &lt;refpt id="VIC_REG_2012-142_PROV4" type="ext" /&gt; 
                    &lt;emph typestyle="bf"&gt;4&lt;/emph&gt; 
                &lt;/designum&gt;
            &lt;/desig&gt;
            - &lt;title align="left" searchtype="REG-TITLE"&gt;
                &lt;emph typestyle="bf"&gt;Principal Rules&lt;/emph&gt; 
            &lt;/title&gt;
        &lt;/leg:heading&gt;
        - &lt;leg:levelbody&gt;
            - &lt;leg:bodytext&gt;
                - &lt;p&gt;
                    - &lt;text align="left"&gt;
                        In these Rules, the Supreme Court (General Civil Procedure) Rules 2005
                        
                        &lt;!-- Footnote-refernce-start --&gt;
                        &lt;refpt id="VIC_REG_2012-142_FN1-R" type="ext" /&gt; 
                        - &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="VIC_REG_2012-142_FN1" docidref="VIC_REG_2012-142_BODY"&gt;
                            &lt;sup&gt;1&lt;/sup&gt; 
                        &lt;/remotelink&gt;
                        
                        &lt;!-- Footnote-refernce-end --&gt;
                        are called the Principal Rules. 
                    &lt;/text&gt;
                &lt;/p&gt;
                - &lt;glp:note&gt;
                    &lt;!--Endnote-start --&gt;
                    - &lt;l&gt;
                        - &lt;li&gt;
                            - &lt;lilabel&gt;
                                &lt;refpt id="VIC_REG_2012-142_FN1" type="ext" /&gt; 
                                - &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="VIC_REG_2012-142_FN1-R" docidref="VIC_REG_2012-142_BODY"&gt;
                                    &lt;sup&gt;1&lt;/sup&gt; 
                                &lt;/remotelink&gt;
                            &lt;/lilabel&gt;
                            - &lt;p&gt;
                                &lt;text align="left"&gt;Rule 4: S.R. No. 148/2005. Reprint No. 4 as at 17 September 2012. Reprinted to S.R. No. 97/2012 and subsequently amended by S.R. Nos 39/2012 and 121/2012.&lt;/text&gt; 
                            &lt;/p&gt;
                        &lt;/li&gt;
                    &lt;/l&gt;
                    &lt;!--Endnote-end --&gt;
                &lt;/glp:note&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 3</title>
            <codeblock>

&lt;!--
footnote-ref/@role will always be set to "endnote"
remotelink/@refpt becomes footnote-ref/@anchoridref
refpt/@id becomes footnote-ref/ref:anchor/@id
remotelink/sub becomes footnote-ref/label
--&gt;
   &lt;primlaw:level includeintoc="true" alternatetoccaption="4 Principal Rules"
    leveltype="regulation"&gt;
    &lt;ref:anchor id="VIC_REG_2012-142_PROV4" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;
            &lt;emph typestyle="bf"&gt;4&lt;/emph&gt;
        &lt;/desig&gt;
        &lt;title align="left"&gt;
            &lt;emph typestyle="bf"&gt;Principal Rules&lt;/emph&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p align="left"&gt;
            &lt;text&gt;In these Rules, the Supreme Court (General Civil Procedure) Rules
                2005
                &lt;!-- Footnote-refernce-start --&gt;
                &lt;footnote-ref anchoridref="VIC_REG_2012-142_FN1" role="endnote"&gt;
                    &lt;ref:anchor id="VIC_REG_2012-142_FN1-R"/&gt;
                    &lt;ref:locator anchoridref="VIC_REG_2012-142_FN1"&gt;
                        &lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0065-VIC_REG_2012-142_BODY"
                            /&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                    &lt;label&gt;1&lt;/label&gt;
                &lt;/footnote-ref&gt;
                 &lt;!-- Footnote-refernce-end --&gt;
                are called the Principal Rules.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
    &lt;!-- Endnote-start--&gt;
    &lt;endnotes&gt;
        &lt;footnote role="endnote"&gt;
            &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="VIC_REG_2012142_FN1R"/&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0065-VIC_REG_2012142_BODY"/&gt;
                &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:returnreference&gt;
            &lt;ref:anchor id="0065-VIC_REG_2012142_FN1" anchortype="global"/&gt;
            &lt;label&gt;1&lt;/label&gt; 
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text align="left"&gt;Rule 4: S.R. No. 148/2005. Reprint No. 4 as at 17 September 2012. Reprinted to S.R. No. 97/2012 and subsequently amended by S.R. Nos 39/2012 and 121/2012.&lt;/text&gt; 
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/footnote&gt; 
    &lt;/endnotes&gt;
    &lt;!-- Endnote-end--&gt;
&lt;/primlaw:level&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
                <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
                Handling Pattern Restrictions".</ph>
            </p>
             <p>2012-02-15: Created. </p>
            <p>2012-09-05: Added to note for <targetxml>ref:locator/@anchoridref</targetxml> that begins with a number... Also apply other identifier data type format as
                used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                (e.g. change colon to underscore).</p>
            <p>2012-10-03: Added another example for endnote handling.</p>
            <p>2013-10-07: <ph id="change_20131007_VV">Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</ph></p>
            <p>2013-12-18: <ph id="change_20131218_brt">Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</ph></p>
            
        </section>
        
        
        
    </body>
	</dita:topic>
	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_endnote-LxAdv-endnote.dita  -->

<!-- JL 20171109: white-space proofed the test, with fallback to traditional remotelink processing.
    Also tightened up the criteria for refpt and remotelink matching to include the @refpt FN string,
    so the processing for refpt or remotelink will resort to default handling if all the criteria are not met.
    This fixes a few production webstars 
    -->
    <xsl:template match="refpt[
        following-sibling::node()[1][self::remotelink[matches(@refpt , '^.*FN(\d+)\-R$') or matches(@refpt , '^.*FN(\d+)$')]]
        or 
        preceding-sibling::node()[1][self::remotelink[matches(@refpt , '^.*FN(\d+)\-R$') or matches(@refpt , '^.*FN(\d+)$')]]
        or 
        preceding-sibling::node()[1][self::text()[matches(. , '^\s+$')]
        [preceding-sibling::node()[1][self::remotelink[matches(@refpt , '^.*FN(\d+)\-R$') or matches(@refpt , '^.*FN(\d+)$')]]]]
        or 
        following-sibling::node()[1][self::text()[matches(. , '^\s+$')]
        [following-sibling::node()[1][self::remotelink[matches(@refpt , '^.*FN(\d+)\-R$') or matches(@refpt , '^.*FN(\d+)$')]]]]        
        ]" priority="30"> 
                    <!-- do nothing -->        
                </xsl:template>
                <!-- note: this logic will need to be merged with "remotelink" 
                
                JL made it node rather than element because there can be intervening text, and we don't want to do
                this with intervening text.-->
    
    <xsl:template  match="remotelink[matches(@refpt , '^.*FN(\d+)\-R$') or matches(@refpt , '^.*FN(\d+)$')]
        [preceding-sibling::node()[1][self::refpt]
        or
        following-sibling::node()[1][self::refpt]
        or
        preceding-sibling::node()[1][self::text()[matches(. , '^\s+$')][preceding-sibling::node()[1][self::refpt]]]
        or
        following-sibling::node()[1][self::text()[matches(. , '^\s+$')][following-sibling::node()[1][self::refpt]]]
       ]" priority="30"> 
                   <xsl:choose>
                       <xsl:when test="matches(@refpt , '^.*FN(\d+)\-R$')">
                           <xsl:apply-templates select="." mode="endnote"/>                           
                       </xsl:when>
                       <xsl:when test="matches(@refpt , '^.*FN(\d+)$')">
                           <xsl:apply-templates select="." mode="footnoteref"/>                           
                       </xsl:when>
                       <xsl:otherwise>
                           <!-- this should now never happen -->
                           <xsl:call-template name="outputErrorMessage">
                               <xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@refpt does not meet criteria for endnote or footnoteref' "/>
                               <xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
                               <xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
                               <xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
                           </xsl:call-template>
                       </xsl:otherwise>
                   </xsl:choose>                    
                </xsl:template>
                
                
                <xsl:template match="remotelink" mode="footnoteref">
                    <footnote-ref xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                        <xsl:attribute name="role" select="'endnote'"/>
                        <xsl:attribute name="anchoridref">
                            <xsl:for-each select="@refpt">
                                <xsl:call-template name="normalizeIdString"/>
                            </xsl:for-each>                                 
                        </xsl:attribute>
                        <xsl:for-each select="preceding-sibling::node()[1][self::refpt] | following-sibling::node()[1][self::refpt]">
                            <xsl:call-template name="refpt-generic"/>
                        </xsl:for-each>
                        <xsl:call-template name="locator"/>
                        <xsl:apply-templates select="sup" mode="footnoteref"/>
                    </footnote-ref>
                </xsl:template>
    
    
    <xsl:template name="locator">
        <ref:locator>
            <xsl:for-each select=" if (@refpt) then @refpt else @remotekey2">
                <xsl:attribute name="anchoridref">
                    <xsl:call-template name="normalizeIdString"/>
                </xsl:attribute>
            </xsl:for-each>
            <ref:locator-key>
                <ref:key-name name="DOC-ID"/>
                <ref:key-value>
                    <xsl:attribute name="value">
                        <xsl:choose>
                            <xsl:when test="@dpsi">
                                <xsl:value-of select="@dpsi"/>
                            </xsl:when>
                            <xsl:when test="//docinfo:dpsi/@id-string">
								<xsl:value-of select="//docinfo:dpsi/@id-string"/>
							</xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$dpsi"/>                            
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>-</xsl:text>                                            
                        <xsl:choose>
                            <xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID' ">
                                <xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>                                                    
                            </xsl:when>
                            <xsl:when test=" @remotekey1 = 'REFPTID' or @remotekey1 = 'REFPT' ">                                                    
                                <xsl:choose>
                                    <xsl:when test="@docidref">
                                        <xsl:value-of select="@docidref"/>
                                    </xsl:when>
                                    <xsl:when test="@status=('unval','invalid')"><!-- no @docidref however status is unvalidated or invalid so don't throw error  --></xsl:when>
                                    <xsl:otherwise>
                                        <!-- This should be an error message -->
                                        <xsl:text>XXXX</xsl:text>
                                        <xsl:call-template name="outputErrorMessage">
                                            <xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@docidref is missing and link cannot be correctly completed' "/>
                                            <xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
                                            <xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
                                            <xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>                                            
                    </xsl:attribute>
                </ref:key-value>
            </ref:locator-key>
        </ref:locator>                         
    </xsl:template>
    
    <xsl:template match="remotelink" mode="endnote">
        <footnote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="role" select="'endnote'"/>
            <!-- Paul: moved the refanchor creation (foreach) before the ref:returnreference.
            The court rules schema (and statutory) requires this occur first.  -->
            <xsl:for-each select="preceding-sibling::refpt | following-sibling::refpt">
                <xsl:call-template name="refpt-generic"/>
            </xsl:for-each>
            <ref:returnreference>
                <xsl:call-template name="locator"/>
            </ref:returnreference>
            <xsl:apply-templates select="sup | sub" mode="footnoteref"/>
            <xsl:if test="parent::lilabel[following-sibling::node()]">
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="parent::lilabel/following-sibling::node()"/>                    
                </bodytext>
            </xsl:if>            
        </footnote>
    </xsl:template>
    
    <xsl:template match="sup | sub" mode="footnoteref">
        <label xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates/>
        </label>
    </xsl:template>
    
    <xsl:template match="l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)]" priority="30">
        <endnotes xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="li" mode="endnote"/>
        </endnotes>
    </xsl:template>
    
    <xsl:template match="li" mode="endnote">
        <xsl:apply-templates select="lilabel" mode="endnote"/>
    </xsl:template>
    
    <xsl:template match="lilabel" mode="endnote">
        <xsl:apply-templates select="remotelink" mode="endnote"/>
    </xsl:template>
    
   <!-- endnotes become a bump-up within primlaw:level (within and outside of glp:note) as well as leg:comntry
   Since I coded this for a dictionary stream, it hasn't been tested yet.  Someone with a 
   legislation stream should test it and sign off here. JL 
   
   JD: 2017-08-10: works for legislation stream NZ06; see notes in /modules/glp/Rosetta_glp.note-LxAdv-note.xsl
   -->
    
    <xsl:template match="leg:bodytext" priority="30">
        <!-- this will handle annotations interspersed with primlaw:bodytext elements in document order -->
        <xsl:for-each-group select="*" group-adjacent="if (self::leg:comntry or self::l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)] 
            or self::glp:note[l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)]]
            ) then 0 else 1">
            <xsl:choose>
                <xsl:when test="current-grouping-key()=0">
                    <xsl:for-each select="current-group()">
                        <xsl:choose>
                            <xsl:when test="self::glp:note">
                                <xsl:apply-templates select="*"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="."/>
                            </xsl:otherwise>
                        </xsl:choose>                        
                    </xsl:for-each>
                </xsl:when>                
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$streamID='AU19LA' or ($streamID=('NZ12') and not(ancestor::legfragment))">
                            <admindoc:bodytext xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1">
                                <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </admindoc:bodytext>
                        </xsl:when>
                        <xsl:when test="$streamID='AU18' and not(ancestor::legfragment)">
                            <xsl:choose>
                                <xsl:when test="parent::leg:bodytext[preceding-sibling::leg:level]">
                                    <xsl:element name="admindoc:level">
                                        <xsl:attribute name="leveltype">
                                            <xsl:text>unclassified</xsl:text>
                                        </xsl:attribute>
                                        <admindoc:bodytext xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1">
                                            <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                            <xsl:for-each select="current-group()">
                                                <xsl:apply-templates select="."/>
                                            </xsl:for-each>
                                        </admindoc:bodytext>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:otherwise>
                                            <admindoc:bodytext xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1">
                                                <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                                <xsl:for-each select="current-group()">
                                                    <xsl:apply-templates select="."/>
                                                </xsl:for-each>
                                            </admindoc:bodytext>
                                </xsl:otherwise>
                            </xsl:choose>                            
                        </xsl:when>
                        <xsl:otherwise>
                            <primlaw:bodytext>
                                <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </primlaw:bodytext>
                        </xsl:otherwise>
                    </xsl:choose>                    
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each-group>
    </xsl:template>
    
    <!-- This template is being suppressed as no requirement in the output. -->
    <xsl:template match="leg:bodytext/@searchtype[$streamID='UK06']"/>
    
</xsl:stylesheet>