<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-table_with_remotelinks">
  <title><sourcexml>leg:bodytext/table</sourcexml> <lnpid>id-MY08-17625</lnpid></title>
  <body>
    <p>The element <sourcexml>table</sourcexml> becomes <targetxml>navaid:list</targetxml>. The
      source attributes of <sourcexml>table</sourcexml> are dropped, and the target attribute
        <targetxml>navaid:list/@style</targetxml> is set as follows. <ul>
        <li>If <sourcexml>docinfo:doc-id</sourcexml> exactly matches the pattern
            <i>"USM.101<b>#</b>E.subject"</i> (where <b><i>#</i></b> is a digit from 1 to 4)
              <b><u>and</u></b>
          <sourcexml>table/tgroup/@cols="2"</sourcexml>, then
            <targetxml>navaid:list/@style="default"</targetxml>.</li>
        <li>Otherwise (if <sourcexml>docinfo:doc-id</sourcexml>
          <b><u>does not</u></b> exactly match the pattern <i>"USM.101<b>#</b>E.subject"</i>
          <b><u>or</u></b>
          <sourcexml>table/tgroup/@cols</sourcexml> is not "2"), then
            <targetxml>navaid:list/@style="banner"</targetxml>.</li>
      </ul></p>
    <p>The start-tags and end-tags (but not the content) of all the following elements within
        <sourcexml>table</sourcexml> are dropped (whether they are direct children, or
      grandchildren, etc.): <ul>
        <li>tgroup</li>
        <li>colspec</li>
        <li>tbody</li>
        <li>row</li>
      </ul></p>
    <p>If the direct or indirect content ("indirect" meaning contained within a child
        <sourcexml>emph</sourcexml> element) of the <b><u>first</u></b>
      <sourcexml>entry</sourcexml> of the <b><u>first</u></b>
      <sourcexml>row</sourcexml> of a table consists of the following special text phrases:<ul>
        <li>By Number</li>
        <li>By Subject</li>
        <li>By Title</li>
        <li>By Year</li>
      </ul>this indicates the <sourcexml>entry</sourcexml> is a title. In this special scenario,
        <sourcexml>entry</sourcexml> becomes <targetxml>navaid:list/title</targetxml>. Regarding the
      content being either direct or indirect: the <sourcexml>entry</sourcexml> may contain a child
        <sourcexml>emph</sourcexml> that actually contains the text, or the text may be the direct
      content of <sourcexml>entry</sourcexml>. In either case, the <sourcexml>entry</sourcexml>
      becomes <targetxml>navaid:list/title</targetxml> and the start-tag and end-tag (but not the
      content) of any child <sourcexml>emph</sourcexml> elements are dropped.</p>
    <p>Besides the scenario of an <sourcexml>entry</sourcexml> containing a title described in the
      previous paragraph, each <sourcexml>entry</sourcexml> element within
        <sourcexml>table</sourcexml> that contains non-white-space CDATA (either directly or within
      a child element) becomes <targetxml>navaid:list/index:entry</targetxml> and its child elements
      are converted as follows. <ul>
        <li>Each <sourcexml>entry/remotelink</sourcexml> becomes
            <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml> (create
          child <targetxml>index:entry/index:locator</targetxml> and then create grandchild element
            <targetxml>index:entry/index:locator/ref:lnlink</targetxml> with attribute
            <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>). The
            <targetxml>ref:lnlink</targetxml> element is populated as follows: <ul>
            <li>Element <targetxml>index:locator/ref:lnlink/ref:marker</targetxml> is created, and
              the content of the <sourcexml>remotelink</sourcexml> becomes the content of
                <targetxml>ref:lnlink/ref:marker</targetxml>. If there is a child element
                <sourcexml>remotelink/inlineobject</sourcexml>, it is converted to
                <targetxml>ref:lnlink/ref:marker/ref:inlineobject</targetxml>. Please see the topic
                <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"/>
              for details regarding the conversion of <sourcexml>inlineobject</sourcexml>.</li>
            <li>Element <targetxml>index:locator/ref:lnlink/ref:locator</targetxml> is created along
              with child <targetxml>ref:locator/ref:locator-key</targetxml> and grandchild elements
                <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml>. The attribute
                <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
            <li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml>:<ul>
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>. If
                  and only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present,
                  use <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
              </ul></li>
            <li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul>
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If
                    <sourcexml>remotelink/@docidref</sourcexml> is not present when
                    <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, then it can be
                  generated from the <sourcexml>remotelink/@refpt</sourcexml> as follows: <ul>
                    <li>If <sourcexml>remotelink/@refpt</sourcexml> exactly matches the pattern
                          <i>"USM.101<b>#</b>E"</i> or <i>"USM.101<b>#</b>E.subject"</i> (where
                          <b><i>#</i></b> is a digit from 1 to 4), then a
                        <sourcexml>remotelink/@docidref</sourcexml> value is generated by simply
                      copying the value of <sourcexml>remotelink/@refpt</sourcexml>.</li>
                    <li>Otherwise (if <sourcexml>remotelink/@refpt</sourcexml>
                      <b><u>does not</u></b> exactly match the pattern <i>"USM.101<b>#</b>E"</i> or
                          <i>"USM.101<b>#</b>E.subject"</i>), then a
                        <sourcexml>remotelink/@docidref</sourcexml> value is generated by changing
                      the dots (".") in the value of <sourcexml>remotelink/@refpt</sourcexml> to
                      underscores ("_") and then appending "1000.xml" to the end of that value.</li>
                  </ul>
                </li>
                <li>If both <sourcexml>remotelink/@docidref</sourcexml> and
                    <sourcexml>remotelink/@refpt</sourcexml> are not present when
                    <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is to be
                  considered a data error.</li>
                <li>The attribute <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is set
                  to the value of <sourcexml>remotelink/@refpt</sourcexml>. If this value begins
                  with a number, an underscore (_) is added to the front. Any colons (":") present
                  in the Rosetta source value are replaced with an underscore ("_") in the NewLexis
                  output value.</li>
              </ul>
            </li>
            <li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
                <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value of
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU
              manifest file is captured and used.</li>
          </ul>
        </li>
        <li>Each <sourcexml>entry/inlineobject</sourcexml> becomes
            <targetxml>index:entry/index:entrytext/ref:inlineobject</targetxml>. Please see the
          topic <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"/>
          for details regarding the conversion of <sourcexml>inlineobject</sourcexml>.</li>
        <li>Each <sourcexml>entry/emph</sourcexml> becomes
            <targetxml>index:entry/index:locator</targetxml> and the source attributes are
          dropped.</li>
        <li>If <sourcexml>entry</sourcexml> contains only direct CDATA (no child elements) that is
          not entirely white-space, the entry becomes
            <targetxml>index:entry/index:locator</targetxml>. Currently there is no such scenario
          where <sourcexml>entry</sourcexml> contains direct CDATA, but it is possible in future
          data.</li>
      </ul>
      <note>Currently there is no such scenario where <sourcexml>entry</sourcexml> contains mixed
        content (both direct CDATA and child elements), and if this occurs it is to be considered a
        data error.</note>
      <note>The output XPath for element <sourcexml>inlineobject</sourcexml> depends on the source
        XPath it occurs in. XPath <sourcexml>entry/inlineobject</sourcexml> becomes
          <targetxml>index:entry/index:entrytext/ref:inlineobject</targetxml>, and XPath
          <sourcexml>entry/remotelink/inlineobject</sourcexml> becomes
          <targetxml>index:entry/index:locator/ref:lnlink/ref:marker/ref:inlineobject</targetxml>.</note>
    </p>
    <p>Any <sourcexml>entry</sourcexml> element that does not contain non-white-space CDATA (either
      directly or within a child element) <b><u>and also</u></b> no
        <sourcexml>inlineobject</sourcexml> subelement (as either child, grandchild, etc.) is
      suppressed and not output to the target document. This would include all empty
        <sourcexml>entry</sourcexml> elements, as well as <sourcexml>entry</sourcexml> elements that
      do not contain an <sourcexml>inlineobject</sourcexml> subelement <b><u>and only</u></b>
      contain any of the following: <ul>
        <li>empty child elements, and/or</li>
        <li>CDATA that is entirely white-space, and/or</li>
        <li>child (or grandchild, etc.) elements that only contain CDATA that is entirely
          white-space.</li>
      </ul>
    </p>
    <section>
      <title>Source XML showing <sourcexml>table</sourcexml> where the first
          <sourcexml>entry</sourcexml> is a title</title>
      <p>Besides showing the scenario where the first <sourcexml>docinfo:doc-id</sourcexml> of the
        first <sourcexml>docinfo:doc-id</sourcexml> contains special text indicating it is a title,
        this example also demonstrates: <ul>
          <li>the common scenario where <sourcexml>docinfo:doc-id</sourcexml> doesn't exactly match
            the pattern <i>"USM.101<b>#</b>E.subject"</i>; and</li>
          <li><sourcexml>entry/emph</sourcexml> becomimg
              <targetxml>index:entry/index:locator</targetxml> (look for "Z"); </li>
          <li>an <sourcexml>entry</sourcexml> containing only CDATA becoming
              <targetxml>index:entry/index:locator</targetxml> (look for "X");</li>
          <li><sourcexml>remotelink/@docidref</sourcexml> values being generated by changing dots
            (".") in the <sourcexml>remotelink/@refpt</sourcexml> value to underscores ("_") and
            appending "1000.xml" because these <sourcexml>remotelink/@refpt</sourcexml> values do
            not match either of the patterns <i>"USM.101<b>#</b>E"</i> or
            <i>"USM.101<b>#</b>E.subject"</i>; and</li>          
          <li>suppression of <sourcexml>entry</sourcexml> elements that do not contain
            non-white-space CDATA (either directly or within a child element).</li>
        </ul></p>
      <codeblock>

&lt;docinfo partitionnum="LEG1"&gt;
  &lt;docinfo:doc-heading&gt;B&lt;/docinfo:doc-heading&gt;
  &lt;docinfo:doc-id&gt;USM_1011E_TI_B1000.xml&lt;/docinfo:doc-id&gt;
  &lt;!-- ... --&gt;
&lt;/docinfo&gt;
&lt;!-- ... --&gt;
  &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="14" colsep="0" rowsep="0"&gt;
      &lt;colspec colwidth="10*" colname="1" colnum="1" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="2" colnum="2" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="3" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="4" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="5" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="6" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="7" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="8" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="9" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="10" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="11" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="12" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="13" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="5*" colname="14" colnum="3" colsep="0" rowsep="0"/&gt;
      &lt;tbody valign="top"&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"&gt;
            &lt;emph typestyle="bf"&gt;By Title&lt;/emph&gt;
          &lt;/entry&gt;
          &lt;entry colname="2" colsep="0" rowsep="0" align="center"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.TI.A" remotekey1="REFPTID"
              service="DOC-ID"&gt;A&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;row rowsep="0"&gt;
            &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
          &lt;/row&gt;
          &lt;entry colname="3" colsep="0" rowsep="0" align="center"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.TI.B" remotekey1="REFPTID"
              service="DOC-ID"&gt;B&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;!--...--&gt;
          &lt;entry colname="10" colsep="0" rowsep="0" align="center"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.TI.V" remotekey1="REFPTID"
              service="DOC-ID"&gt;V&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colname="11" colsep="0" rowsep="0" align="center"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.TI.W" remotekey1="REFPTID"
              service="DOC-ID"&gt;W&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colname="12" colsep="0" rowsep="0" align="center"&gt;X&lt;/entry&gt;
          &lt;entry colname="13" colsep="0" rowsep="0" align="center"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.TI.Y" remotekey1="REFPTID"
              service="DOC-ID"&gt;Y&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colname="14" colsep="0" rowsep="0" align="center"&gt;
            &lt;emph typestyle="bf"&gt;Z&lt;/emph&gt;
          &lt;/entry&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;/row&gt;
      &lt;/tbody&gt;
    &lt;/tgroup&gt;
  &lt;/table&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:list style="banner"&gt;
  &lt;title&gt;By Title&lt;/title&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;A&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.TI.A"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_TI_A1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;B&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.TI.B"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_TI_B1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;!--...--&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;V&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.TI.V"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_TI_V1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;W&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.TI.W"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_TI_W1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;X&lt;/index:locator&gt;
  &lt;/index:entry&gt;     
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;Y&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.TI.Y"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_TI_Y1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;Z&lt;/index:locator&gt;
  &lt;/index:entry&gt;     
&lt;/navaid:list&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>table</sourcexml> when
          <sourcexml>docinfo:doc-id</sourcexml> exactly matches the pattern
          <i>"USM.101<b>#</b>E.subject"</i></title>
      <p>Besides showing the scenario where <sourcexml>docinfo:doc-id</sourcexml> exactly matches
        the pattern <i>"USM.101<b>#</b>E.subject"</i>, this example also demonstrates: <ul>
          <li><sourcexml>remotelink/@docidref</sourcexml> values being generated by changing dots
            (".") in the <sourcexml>remotelink/@refpt</sourcexml> value to underscores ("_") and
            appending "1000.xml" because these <sourcexml>remotelink/@refpt</sourcexml> values do
            not match either of the patterns <i>"USM.101<b>#</b>E"</i> or
              <i>"USM.101<b>#</b>E.subject"</i>; and</li>
          <li>suppression of <sourcexml>entry</sourcexml> elements that do not contain
            non-white-space CDATA (either directly or within a child element).</li>
        </ul></p>
      <codeblock>

&lt;docinfo partitionnum="LEG1"&gt;
  &lt;docinfo:doc-heading&gt;By Subject&lt;/docinfo:doc-heading&gt;
  &lt;docinfo:doc-id&gt;USM.1011E.subject&lt;/docinfo:doc-id&gt;
  &lt;!-- ... --&gt;
&lt;/docinfo&gt;
&lt;!-- ... --&gt;
  &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
      &lt;colspec colwidth="40*" colname="1" colnum="1" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="40*" colname="2" colnum="2" colsep="0" rowsep="0"/&gt;
      &lt;tbody valign="top"&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"/&gt;
          &lt;entry colname="2" colsep="0" rowsep="0" align="left"/&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.SUB.Agriculture" remotekey1="REFPTID"
              service="DOC-ID"&gt;Agriculture&lt;/remotelink&gt;
          &lt;/entry&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"/&gt;
          &lt;entry colname="2" colsep="0" rowsep="0" align="left"/&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.SUB.Animals" remotekey1="REFPTID"
              service="DOC-ID"&gt;Animals&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colname="1" colsep="0" rowsep="0" align="left"&gt;
            &lt;remotelink dpsi="0OIS" refpt="USM.1011E.SUB.Arbitration" remotekey1="REFPTID"
              service="DOC-ID"&gt;Arbitration&lt;/remotelink&gt;
          &lt;/entry&gt;
        &lt;/row&gt;
        &lt;!--...--&gt;
      &lt;/tbody&gt;
    &lt;/tgroup&gt;
  &lt;/table&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:list style="default"&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;Agriculture&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.SUB.Agriculture"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_SUB_Agriculture1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;Animals&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.SUB.Animals"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_SUB_Animals1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;Arbitration&lt;/ref:marker&gt;
    		&lt;ref:locator anchoridref="USM.1011E.SUB.Arbitration"&gt;
    			&lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM_1011E_SUB_Arbitration1000.xml"/&gt;
    			&lt;/ref:locator-key&gt;
    		&lt;/ref:locator&gt;
	    &lt;/ref:lnlink&gt;
	  &lt;/index:locator&gt;
  &lt;/index:entry&gt;        
  &lt;!--...--&gt;
&lt;/navaid:list&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>table</sourcexml> with
          <sourcexml>inlineobject</sourcexml> elements.</title>
      <p>Besides demonstrating the handling of <sourcexml>inlineobject</sourcexml> appearing as
        <sourcexml>entry/inlineobject</sourcexml> (becoming <targetxml>index:entry/index:entrytext/ref:inlineobject</targetxml>) and
        <sourcexml>entry/remotelink/inlineobject</sourcexml> (becoming <targetxml>index:entry/index:locator/ref:lnlink/ref:marker/ref:inlineobject</targetxml>), this example also demonstrates: <ul>
          <li>the common scenario where <sourcexml>docinfo:doc-id</sourcexml> doesn't exactly match
            the pattern <i>"USM.101<b>#</b>E.subject"</i>; and</li>
          <li><sourcexml>remotelink/@docidref</sourcexml> values being generated by simply copying
            the value of <sourcexml>remotelink/@refpt</sourcexml> because these
              <sourcexml>remotelink/@refpt</sourcexml> values match the pattern
              <i>"USM.101<b>#</b>E"</i>.</li>
        </ul>
      </p>
      <codeblock>

&lt;docinfo partitionnum="LEG1"&gt;
    &lt;docinfo:doc-heading&gt;Principal Acts&lt;/docinfo:doc-heading&gt;
    &lt;docinfo:doc-id&gt;USM.1011E&lt;/docinfo:doc-id&gt;
    &lt;!-- ... --&gt;
&lt;/docinfo&gt;
&lt;!-- ... --&gt;
&lt;table frame="none" pgwide="1"&gt;
  &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="8*" colname="1" colnum="1" colsep="0" rowsep="0"/&gt;
    &lt;colspec colwidth="8*" colname="2" colnum="2" colsep="0" rowsep="0"/&gt;
    &lt;colspec colwidth="8*" colname="3" colnum="3" colsep="0" rowsep="0"/&gt;
    &lt;colspec colwidth="8*" colname="4" colnum="3" colsep="0" rowsep="0"/&gt;
    &lt;colspec colwidth="8*" colname="5" colnum="3" colsep="0" rowsep="0"/&gt;
    &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt;
          &lt;remotelink dpsi="0OIS" refpt="USM.1010E" remotekey1="REFPTID"
            service="DOC-ID"&gt;
            &lt;inlineobject attachment="ln-server" filename="Pre-1967_Ordinance-(red).jpg"
              type="image"/&gt;
          &lt;/remotelink&gt;
        &lt;/entry&gt;
        &lt;entry colname="2" colsep="0" rowsep="0" align="center"&gt;
          &lt;inlineobject attachment="ln-server" filename="Principal-Acts-(cyan).jpg"
            type="image"/&gt;
        &lt;/entry&gt;
        &lt;entry colname="3" colsep="0" rowsep="0" align="center"&gt;
          &lt;remotelink dpsi="0OIS" refpt="USM.1012E" remotekey1="REFPTID"
            service="DOC-ID"&gt;
            &lt;inlineobject attachment="ln-server" filename="Bills-(red).jpg" type="image"
            /&gt;
          &lt;/remotelink&gt;
        &lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="4" colsep="0" rowsep="0" align="center"&gt;
          &lt;remotelink dpsi="0OIS" refpt="USM.1013E" remotekey1="REFPTID"
            service="DOC-ID"&gt;
            &lt;inlineobject attachment="ln-server" filename="Amendments-(red).jpg"
              type="image"/&gt;
          &lt;/remotelink&gt;
        &lt;/entry&gt;
        &lt;entry colname="5" colsep="0" rowsep="0" align="center"&gt;
          &lt;remotelink dpsi="0OIS" refpt="USM.1014E" remotekey1="REFPTID"
            service="DOC-ID"&gt;
            &lt;inlineobject attachment="ln-server"
              filename="Subsidiary-Legislations-(red).jpg" type="image"/&gt;
          &lt;/remotelink&gt;
        &lt;/entry&gt;
        &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="2" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="3" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="4" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="5" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="1" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="2" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="3" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="4" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
        &lt;entry colname="5" colsep="0" rowsep="0" align="center"&gt; &lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;navaid:list style="banner"&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-Pre-1967_Ordinance-(red)"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
              &lt;/ref:locator-key&gt;
              &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- this @value assignment is done by conversion program --&gt;
              &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:inlineobject&gt;
        &lt;/ref:marker&gt;
        &lt;ref:locator anchoridref="USM.1010E"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM.1010E"/&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:entrytext&gt;
      &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="object-key"/&gt;
            &lt;ref:key-value value="X-Y-Principal-Acts-(cyan)"/&gt;
            &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
          &lt;/ref:locator-key&gt;
          &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="object-type" value="image"/&gt;
            &lt;proc:param name="object-smi" value=""/&gt;
            &lt;!-- this @value assignment is done by conversion program --&gt;
          &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:inlineobject&gt;
    &lt;/index:entrytext&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-Bills-(red)"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
              &lt;/ref:locator-key&gt;
              &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- this @value assignment is done by conversion program --&gt;
              &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:inlineobject&gt;
        &lt;/ref:marker&gt;
        &lt;ref:locator anchoridref="USM.1012E"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM.1012E"/&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-Amendments-(red)"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
              &lt;/ref:locator-key&gt;
              &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- this @value assignment is done by conversion program --&gt;
              &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:inlineobject&gt;
        &lt;/ref:marker&gt;
        &lt;ref:locator anchoridref="USM.1013E"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM.1013E"/&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
        &lt;ref:marker&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-Subsidiary-Legislations-(red)"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
              &lt;/ref:locator-key&gt;
              &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- this @value assignment is done by conversion program --&gt;
              &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:inlineobject&gt;
        &lt;/ref:marker&gt;
        &lt;ref:locator anchoridref="USM.1014E"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OIS-USM.1014E"/&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
  &lt;/index:entry&gt;
&lt;/navaid:list&gt;

        </codeblock>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\table_with_remotelinks.dita  -->
	<xsl:message>table_with_remotelinks.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:bodytext/table">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="docinfo:doc-id">

		<!--  Original Target XPath:  navaid:list/@style="default"   -->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>default</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="table/tgroup/@cols=&#34;2&#34;">

		<!--  Original Target XPath:  navaid:list/@style="default"   -->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>default</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="table/tgroup/@cols">

		<!--  Original Target XPath:  navaid:list/@style="banner"   -->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  navaid:list/title   -->
		<navaid:list>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:  navaid:list/title   -->
		<navaid:list>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</navaid:list>

	</xsl:template>

	<xsl:template match="row">

		<!--  Original Target XPath:  navaid:list/title   -->
		<navaid:list>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry/remotelink">

		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink/@service="DOCUMENT"   -->
		<index:entry>
			<index:locator>
				<ref:lnlink>
					<xsl:attribute name="service">
						<xsl:text>DOCUMENT</xsl:text>
					</xsl:attribute>
				</ref:lnlink>
			</index:locator>
		</index:entry>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:lnlink/ref:marker   -->
		<ref:lnlink>
			<ref:marker>
				<xsl:apply-templates select="@* | node()"/>
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink/inlineobject">

		<!--  Original Target XPath:  ref:lnlink/ref:marker/ref:inlineobject   -->
		<ref:lnlink>
			<ref:marker>
				<ref:inlineobject>
					<xsl:apply-templates select="@* | node()"/>
				</ref:inlineobject>
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  index:locator/ref:lnlink/ref:locator   -->
		<index:locator>
			<ref:lnlink>
				<ref:locator>
					<xsl:apply-templates select="@* | node()"/>
				</ref:locator>
			</ref:lnlink>
		</index:locator>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey2">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotelink2">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@refpt">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@docidref">

		<!--  Original Target XPath:  ref:lnlink/ref:locator/@anchoridref   -->
		<ref:lnlink>
			<ref:locator>
				<xsl:attribute name="anchoridref">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</ref:locator>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  index:entry/index:entrytext/ref:inlineobject   -->
		<index:entry>
			<index:entrytext>
				<ref:inlineobject>
					<xsl:apply-templates select="@* | node()"/>
				</ref:inlineobject>
			</index:entrytext>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry/inlineobject">

		<!--  Original Target XPath:  index:entry/index:entrytext/ref:inlineobject   -->
		<index:entry>
			<index:entrytext>
				<ref:inlineobject>
					<xsl:apply-templates select="@* | node()"/>
				</ref:inlineobject>
			</index:entrytext>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry/emph">

		<!--  Original Target XPath:  index:entry/index:locator   -->
		<index:entry>
			<index:locator>
				<xsl:apply-templates select="@* | node()"/>
			</index:locator>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry/remotelink/inlineobject">

		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink/ref:marker/ref:inlineobject   -->
		<index:entry>
			<index:locator>
				<ref:lnlink>
					<ref:marker>
						<ref:inlineobject>
							<xsl:apply-templates select="@* | node()"/>
						</ref:inlineobject>
					</ref:marker>
				</ref:lnlink>
			</index:locator>
		</index:entry>

	</xsl:template>

</xsl:stylesheet>