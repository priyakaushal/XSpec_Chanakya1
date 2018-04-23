<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqarticles_cttr.annot">
  <title>cttr:annotations @annotationtype="subseqarticles"/cttr:annot <lnpid>id-AU02-18429</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations @annotationtype="subseqarticles"/cttr:annot</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection @reftype="citing-publications"/cttr:refitem</targetxml>
          <note class="- topic/note "> The value of the attribute /cttr:annotations @annotationtype="subseqarticles" maps to the attribute
            /cttr:refsection @reftype="citing-publications". </note> The attributes of cttr:annot : <sourcexml class="+ topic/keyword xml-d/sourcexml ">@id</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingpub @xml:id</targetxml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">@signal</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingpub @treatment</targetxml> and the child elements are described below : <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;cttr:annot id="1038876" signal="citation"&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="citing-publications"&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingpub pubtype="journal-article" xml:id="_1038876" treatment="citation"&gt;
    &lt;/cttr:citingpub&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                
</pre>
          <note class="- topic/note ">All xml:id that begin with a number must have an underscore added at start, as shown in the above NL
            example.</note> The children of cttr:annot are described below: <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:casename</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingpub/title</targetxml>
            </li>
            <li class="- topic/li ">
              <ul class="- topic/ul ">
                <li class="- topic/li "> The content of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations/case:citetext/ci:cite/ci:content/citefragment</sourcexml> is maintained in <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:content</targetxml>. </li>
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations/case:citetext/ci:cite/ci:lawrev</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:lawrev</targetxml>. <ul class="- topic/ul ">
                    <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:cite/ci:lawrev/ci:lawrevref</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite/lnci:lawrev/lnci:lawrevref</targetxml>. <ul class="- topic/ul ">
                        <li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:cite/ci:lawrev/ci:lawrevref/ci:lawrevlocator</sourcexml> becomes
                            <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite/lnci:lawrev/lnci:lawrevref/lnci:lawrevlocator</targetxml>.
                            <ul class="- topic/ul ">
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:publicationname @normpubcode="CPNN"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:publicationname @normpubcode="CPNN"</targetxml>. </li>
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:volume @num="1"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:volume @num="1"</targetxml>. </li>
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:page @num="85"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:page @num="85"</targetxml>. </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">
&lt;ci:content&gt;&lt;citefragment searchtype="BOOK-CITE-REF"&gt;
  &lt;ci:span spanid="cr000386-001"&gt;(2005) 21(3) TPLB 37&lt;/ci:span&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:citations&gt;&lt;lnci:cite type="journal-article"&gt;&lt;lnci:content&gt;(2005) 21(3) TPLB 37&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;&lt;/cttr:citations&gt;
                
</pre>
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citetext/ci:cite @searchtype="BOOK-REF"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citingpub/cttr:citations/lnci:cite @type="journal-article"</targetxml>
              <note class="- topic/note "> In some scenarios, the attribute <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite
                  @type</targetxml> should be set to “book” instead of “journal-article” whenever the text "ISBN" is in the content of the remotelink
                element. Please note that the tags <sourcexml class="+ topic/keyword xml-d/sourcexml ">citefragment</sourcexml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">remotelink</sourcexml> are omitted but the content is maintained in <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:content</targetxml>. An example is shown below: </note>
              <pre xml:space="preserve" class="- topic/pre ">
&lt;ci:cite searchtype="BOOK-REF"&gt;
  &lt;ci:content&gt;
    &lt;citefragment searchtype="BOOK-CITE-REF"&gt;
      &lt;remotelink href="www.lexisnexis.com/au/legal/api/version1/sr?csi=361978&amp;amp;sr=REF-CASE((1980) 144 CLR 1) OR REF-CASE((1980) 41 LGRA 262) OR REF-CASE((1980) 29 ALR 577) OR REF-CASE((1980) 54 ALJR 345) OR REF-CASE((1980) 80 ATC 4386) OR REF-CASE((1981) 12 ATR 231) OR REF-CASE(BC8000075)"
      hrefclass="http" newwindow="NO"&gt;ISBN: 9780409324396&lt;/remotelink&gt;
    &lt;/citefragment&gt;
  &lt;/ci:content&gt;
&lt;/ci:cite&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:citations&gt;
  &lt;lnci:cite type="book"&gt;
    &lt;lnci:content&gt;ISBN: 9780409324396&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
   
</pre>
            </li>
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml>, the child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> and the attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use @signal</sourcexml> are suppressed (both tag and content). <note class="- topic/note ">Please note that cttr:use-group, the
                child element cttr:use and the attribute cttr:use @signal are intentionally suppressed only for cttr:annotations
                @annotationtype="subseqarticles”.</note>
            </li>
            <li class="- topic/li ">
              <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                <targetxml>ref:crossreference</targetxml> that comes with the required child element
                <targetxml>ref:content</targetxml> and with the attribute <targetxml>ref:crossreference
              @crossreferencetype="citatorAlert"</targetxml>. <ul>
                <li>
                  <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with attributes and children as follows: <ul>
                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                          <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and
                            concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are
                            present, use <sourcexml>@remotekey2</sourcexml>).</li>
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
                  <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                    capture value from the LBU manifest file.</note>
                  <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at the start. Also
                    apply other identifier data type formatting as used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>,
                    e.g. change colon to underscore.</note>
                </li>
                <li>
                  <p> The child element <sourcexml>inlineobject</sourcexml> is converted as follows - <ul>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Citation information only - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Citation information available - Click for CaseBase
                        entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Positive treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="positive"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Neutral treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="neutral"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Negative treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="negative"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Cautionary treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="cautionary"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>

                    </ul>
                    <note>
                      <sourcexml>inlineobject[@alttext="Click for CaseBase entry"]</sourcexml> becomes
                        <targetxml>ref:crossreference/ref:content</targetxml>. Do not populate <targetxml>@referencedresourcesentiment</targetxml> in
                      this scenario. </note>
                    <note> The content of <sourcexml>inlineobject</sourcexml> is captured in <targetxml>ref:crossreference</targetxml> and its
                      children as decribed in the above instructions. For the handling of icon, the LBU will need to identify icon images
                      definitively. Please refer to inlineobect in the general markup section for more details on handling the icon/images. </note>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0019" docidref="ABCD_1234" refpt="401055" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Citation information only - Click for CaseBase entry" attachment="web-server" filename="5.gif" type="image"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:citingpub&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
      &lt;ref:content&gt;Citation information only&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_401055"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0019-ABCD_1234"/&gt;
          &lt;/ref:locator-key&gt;         
      &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
&lt;/cttr:citingpub&gt;&lt;/cttr:refitem&gt;                
</pre>
                  </p>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2012-08-23: <ph id="change_20120823">Modified example to use an underscore instead of the two digit country code for <targetxml>xml:id</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\subseqarticles_cttr.annot.dita  -->
	<!--*************DOCUMENTATION ONLY, COVERED IN OTHER MODULES ***************** -->

</xsl:stylesheet>