<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_page-wAncestor-entry-to-LexisAdvance_ref.page">
  <title><sourcexml>page</sourcexml> with an ancestor of <sourcexml>entry</sourcexml> to
      <targetxml>ref:page</targetxml>
    <lnpid>id-CCCC-10425</lnpid></title>
  <body>
    <section>
      <p>When a <sourcexml>page</sourcexml> occurs within a
          <sourcexml>table/tgroup/tbody/row/entry</sourcexml>, either as a direct child of
          <sourcexml>entry</sourcexml> or as a child of a sub-element of
          <sourcexml>entry</sourcexml> (for example <sourcexml>entry/l/li/p/text/page</sourcexml>,
          <sourcexml>entry/emph/page</sourcexml>, <sourcexml>entry/p-limited/page</sourcexml>,
          <sourcexml>entry/p-limited/ci:cite/ci:content/citefragment/emph/page</sourcexml>,
          <sourcexml>entry/l/li/page</sourcexml>) then the <sourcexml>page</sourcexml> must be moved
        outside the <sourcexml>table</sourcexml> that contains it before converting it to a
          <targetxml>ref:page</targetxml>. </p>
      <p>This is done by effectively ending the <sourcexml>table</sourcexml> just before the start
        of the <sourcexml>row</sourcexml> that contains the <sourcexml>page</sourcexml> element,
        placing the <sourcexml>page</sourcexml> element after the end of the
          <sourcexml>table</sourcexml>, and then restarting the <sourcexml>table</sourcexml> with
        the <sourcexml>page</sourcexml> element removed from the <sourcexml>row</sourcexml> that
        contained it. </p>
      <note>The above instructions apply to each and every occurance of <sourcexml>page</sourcexml>.
        Thus, if there are 3 occurances of <sourcexml>page</sourcexml> in 3 separate rows, the table
        would be ended and restarted at three separate locations.</note>
      <p>If the <sourcexml>table</sourcexml> that contains the <sourcexml>page</sourcexml> element
        has only one <sourcexml>row</sourcexml> element, the table is not ended and restarted.
        Instead, <sourcexml>page</sourcexml> element is simply moved to before the start of the
          <sourcexml>table</sourcexml>. </p>
      <p>If after removing the <sourcexml>page</sourcexml> element from the
          <sourcexml>row</sourcexml> that contained it, the <sourcexml>row</sourcexml> consists of
        only empty <sourcexml>entry</sourcexml> elements, or <sourcexml>entry</sourcexml> elements
        that contain only white-space, then this entire <sourcexml>row</sourcexml>, element along
        with the <sourcexml>page</sourcexml> element it contained is removed from the restarted
        table. </p>
      <p>When the table is restarted, the following elements and their attributes are copied to the
        restarted table in the order and position that they occured at the start of the original
        table: <sourcexml>table</sourcexml>, <sourcexml>tgroup</sourcexml>,
          <sourcexml>colspec</sourcexml>, <sourcexml>thead</sourcexml>, and
          <sourcexml>tbody</sourcexml>. </p>
      <note>Please also refer to the additional instructions for mapping <sourcexml>page</sourcexml>
        to <targetxml>ref:page</targetxml> given in the topic <xref href="Rosetta_page-LxAdv-ref.page.dita"/>.</note>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;table&gt;
  &lt;tgroup colsep="0" rowsep="0" cols="3"&gt;
    &lt;colspec colwidth="57*" colname="1"/&gt;
    &lt;colspec colwidth="282*" colname="2"/&gt;
    &lt;colspec colwidth="57*" colname="3"/&gt;
    &lt;tbody&gt;
      &lt;!-- .... --&gt;
      &lt;row&gt;
        &lt;entry align="left"&gt;7.5 &lt;/entry&gt;
        &lt;entry align="left"&gt;Section 18C of the Companies Act 1955 &lt;/entry&gt;
        &lt;entry align="left"&gt;page 718 &lt;/entry&gt;
      &lt;/row&gt;
      &lt;row&gt;
        &lt;entry align="left"&gt;7.6 &lt;/entry&gt;
        &lt;entry align="left"&gt;Ratification &lt;/entry&gt;
        &lt;entry align="left"&gt;page 727
          &lt;page reporter="nzlr" count="498" text="[1998] 2 NZLR 481 page "/&gt;
        &lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- .... --&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

	</codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;table&gt;
  &lt;tgroup colsep="0" rowsep="0" cols="3"&gt;
    &lt;colspec colwidth="57*" colname="1"/&gt;
    &lt;colspec colwidth="282*" colname="2"/&gt;
    &lt;colspec colwidth="57*" colname="3"/&gt;
    &lt;tbody&gt;
      &lt;!-- .... --&gt;
      &lt;row&gt;
        &lt;entry align="left"&gt;7.5 &lt;/entry&gt;
        &lt;entry align="left"&gt;Section 18C of the Companies Act 1955 &lt;/entry&gt;
        &lt;entry align="left"&gt;page 718 &lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
      
&lt;ref:page num="498" page-scheme="nzlr" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
      
&lt;table&gt;
  &lt;tgroup colsep="0" rowsep="0" cols="3"&gt;
    &lt;colspec colwidth="57*" colname="1"/&gt;
    &lt;colspec colwidth="282*" colname="2"/&gt;
    &lt;colspec colwidth="57*" colname="3"/&gt;
    &lt;tbody&gt;
      &lt;row&gt;
        &lt;entry align="left"&gt;7.6 &lt;/entry&gt;
        &lt;entry align="left"&gt;Ratification &lt;/entry&gt;
        &lt;entry align="left"&gt;
          &lt;link refpt="po.s7.p6"&gt;page 727 &lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- .... --&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

	</codeblock>
    </example>

    <example>
      <title>Source XML showing table with single row</title>
      <codeblock>

&lt;table frame="all"&gt;
  &lt;tgroup cols="1" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="100*" colname="col1"/&gt;
    &lt;tbody&gt;&lt;row&gt;&lt;entry&gt;Use an appropriate fact finder form to ensure consistency in taking a client&amp;apos;s instructions:
      &lt;l&gt;
        &lt;!-- ... --&gt;
        &lt;li&gt;
          &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
          &lt;p&gt;&lt;text&gt;Note associations carefully. Be careful to establish the preferred identity of those women who use &amp;#x2018;Ms&amp;#x2019; as well as married women who work under their maiden name. The formal identity of the client may be an individual person or a corporation or some other &lt;page reporter="PBEP" text="Page " count="41"/&gt;entity. Generally, if an individual person or company is operating under a business name, it is the person or corporation who is the client and not the business.&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
        &lt;!-- ... --&gt;
      &lt;/l&gt;
    &lt;/entry&gt;
    &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

	</codeblock>
    </example>

    <example>
      <title>Target XML showing table with single row</title>
      <codeblock>

&lt;ref:page num="41" page-scheme="PBEP" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
&lt;table frame="all"&gt;
  &lt;tgroup cols="1" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="100*" colname="col1" colsep="0" rowsep="0"/&gt;
    &lt;tbody&gt;
      &lt;row&gt;&lt;entry&gt;Use an appropriate fact finder form to ensure consistency in taking a client&amp;apos;s instructions:
        &lt;list&gt;
          &lt;!-- ... --&gt;
          &lt;listitem&gt;
            &lt;label&gt;&amp;#x2022;&lt;/label&gt;
            &lt;bodytext&gt;
              &lt;p&gt;&lt;text&gt;Note associations carefully. Be careful to establish the preferred identity of those women who use &amp;#x2018;Ms&amp;#x2019; as well as married women who work under their maiden name. The formal identity of the client may be an individual person or a corporation or some other entity. Generally, if an individual person or company is operating under a business name, it is the person or corporation who is the client and not the business.&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/listitem&gt;
          &lt;!-- ... --&gt;
        &lt;/list&gt;
      &lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

	</codeblock>
    </example>

    <example>
      <title>Source XML showing table with mulitple <sourcexml>page</sourcexml> elements</title>
      <codeblock>

&lt;table frame="all" colsep="1" rowsep="0" pgwide="1"&gt;
  &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="col1" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col2" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col3" colwidth="70*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col4" colwidth="12*" colsep="0" rowsep="0" /&gt;
    &lt;tbody valign="top"&gt;
      &lt;!-- ...1... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	3.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The commitment agreements		 				&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;689&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;
          &lt;page count="639" reporter="acsr" text="21 ACSR 635 at " subdoc="true" /&gt;
        &lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	4.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The conversation between Mr Arthurson and 		Mr Cowley&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;690&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	5.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The meeting of 14 November 1994 			&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;690&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...2... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;G.&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt; The question of parties&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;739&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;
          &lt;page count="640" reporter="acsr" text="21 ACSR 635 at " subdoc="true" /&gt;
        &lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	1.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The test &lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;739&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	2.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	Non-joinder of the players and coaches&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;741&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...3... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	1.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	Incorporation and control by the League	&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;756&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;
          &lt;page count="643" reporter="acsr" text="21 ACSR 635 at " subdoc="true" /&gt;
        &lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	2.	&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;Decision-making processes&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;759&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	3.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt; 	Assets and the joint venture&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;760&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...4... --&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

        </codeblock>
    </example>

    <example>
      <title>Target XML showing table with mulitple <sourcexml>page</sourcexml> elements</title>
      <codeblock>

&lt;table frame="all" colsep="1" rowsep="0" pgwide="1"&gt;
  &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="col1" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col2" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col3" colwidth="70*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col4" colwidth="12*" colsep="0" rowsep="0" /&gt;
    &lt;tbody valign="top"&gt;
      &lt;!-- ...1... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	3.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The commitment agreements		 				&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;689&lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
&lt;page count="639" reporter="acsr" text="21 ACSR 635 at " subdoc="true"/&gt;
&lt;table frame="all" colsep="1" rowsep="0" pgwide="1"&gt;
  &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="col1" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col2" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col3" colwidth="70*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col4" colwidth="12*" colsep="0" rowsep="0" /&gt;
    &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	4.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The conversation between Mr Arthurson and 		Mr Cowley&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;690&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	5.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The meeting of 14 November 1994 			&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;690&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...2... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;G.&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt; The question of parties&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;739&lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
&lt;page count="640" reporter="acsr" text="21 ACSR 635 at " subdoc="true"/&gt;
&lt;table frame="all" colsep="1" rowsep="0" pgwide="1"&gt;
  &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="col1" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col2" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col3" colwidth="70*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col4" colwidth="12*" colsep="0" rowsep="0" /&gt;
    &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	1.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	The test &lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;739&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	2.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	Non-joinder of the players and coaches&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;741&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...3... --&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	1.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;	Incorporation and control by the League	&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;756&lt;/entry&gt;
      &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
&lt;page count="643" reporter="acsr" text="21 ACSR 635 at " subdoc="true"/&gt;
&lt;table frame="all" colsep="1" rowsep="0" pgwide="1"&gt;
  &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="col1" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col2" colwidth="7*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col3" colwidth="70*" colsep="0" rowsep="0" /&gt;
    &lt;colspec colname="col4" colwidth="12*" colsep="0" rowsep="0" /&gt;
    &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	2.	&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt;Decision-making processes&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;759&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row rowsep="0"&gt;
        &lt;entry colname="col1" colsep="0" rowsep="0"&gt;&lt;/entry&gt;
        &lt;entry colname="col2" colsep="0" rowsep="0"&gt;	3.&lt;/entry&gt;
        &lt;entry colname="col3" colsep="0" rowsep="0"&gt; 	Assets and the joint venture&lt;/entry&gt;
        &lt;entry colname="col4" colsep="0" rowsep="0"&gt;760&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ...4... --&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;

        </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2011-12-15: Created.</p>
      <p>2012-01-05: Defined handling for page/@count if comma occurs in the value.</p>
      <p>2012-01-05: Defined handling for page/@reporter if space occurs in the value.</p>
      <p>2012-02-07: Added a note for dropping <sourcexml>page/@text</sourcexml>.</p>
      <p>2012-02-15: Added mapping for <sourcexml>@subdoc</sourcexml>.</p>
      <p>2012-03-02: Corrected the value of <targetxml>@page-scheme-type</targetxml> from
        reporterabbreviation to reporter-abbreviation.</p>
      <p>2012-04-16: Defined handling for /CASEDOC/case:body/case:headnote/page between two
        decisionsummary as sibling.</p>
      <p>2012-05-09: Added instructions for handling <sourcexml>li/page</sourcexml>. </p>
      <p>2012-08-23: Moved instruction for <sourcexml>page</sourcexml> occurring between
        decisionsummary elements to separate module
        LNInternational\common\Rosetta_page_with_preceding-following-siblings_case.decisionsummary.dita. </p>
      <p>2015-04-24: <ph id="change_20150424_JCG">Added a note and an example ("Source XML showing
          table with multiple page elements") to explicitly specify and demonstrate handling the
          scenario where there are multiple <sourcexml>page</sourcexml> elements in the same
            <sourcexml>table</sourcexml>. (Webstar #5771989 &amp; #5945128)</ph></p>
      <p>2015-05-05: <ph id="change_20150505_JCG">Change to consolidate instructions, actual
          instructions have not changed. Removed redundant instructions pertaining to commas,
          periods, and spaces within <sourcexml>page/@count</sourcexml>, as well as instructions
          regarding the XPath <sourcexml>li/page</sourcexml>. Added note to refer to to topic
            "<sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>
          <lnpid>id-CCCC-10426</lnpid>" that contains the general instructions for
            <sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>, including the
          instructions removed from this topic.</ph></p>
    </section>
  </body>
	</dita:topic>
 

        <!-- BRT: In base.xsl.  Added process table with page elements (break table in row before each row//page, create ref:page, create another table starting from row//page. 
          This template also relies on another template - match="page[not(ancestor::entry)]" to get the correct output. -->
        <xsl:template
          match="table[descendant::entry/descendant::page]" priority="10">
          <!-- BRT create a separate table before the start of a row that contains entry/descendant::page -->
          <xsl:for-each-group select=".//row" group-starting-with="row[entry/descendant::page]">
            <!-- BRT: If there is a ref:page in the current-group(), create the ref:page first -->
            <xsl:if test="current-group()//page">
              <!-- BRT: could make a separate template with mode for ref:page -->
              <xsl:element name="ref:page">
                <xsl:attribute name="num">
                  <xsl:value-of select="translate(current-group()//page/@count,',','')"/>
                </xsl:attribute>
                <xsl:if test="current-group()//page/@reporter">
                  <xsl:attribute name="page-scheme">
                    <xsl:value-of select="translate(current-group()//page/@reporter,' ','_')"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="current-group()//page/@subdoc">
                  <xsl:attribute name="includeintoc">
                    <xsl:value-of select="current-group()//page/@subdoc"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="page-scheme-type">
                  <xsl:text>reporter-abbreviation</xsl:text>
                </xsl:attribute>
              </xsl:element>
            </xsl:if>
            <!-- BRT create separate table for each group -->
            <xsl:element name="table">
              <!-- BRT: Convert table, tgroup, and colspec  -->
              <xsl:copy-of select="ancestor::table/@*"/>
              <xsl:element name="tgroup">
                <xsl:copy-of select="ancestor::table[1]/tgroup/@*"/>
                <xsl:for-each select="ancestor::table[1]//colspec">
                  <xsl:element name="colspec">
                    <xsl:copy-of select="@*"/>
                    <xsl:apply-templates/>
                  </xsl:element>
                </xsl:for-each>
                <xsl:for-each select="ancestor::table[1]//thead">
                  <xsl:element name="thead">
                    <xsl:copy-of select="@*"/>
                    <xsl:apply-templates/>
                  </xsl:element>
                </xsl:for-each>
                <xsl:element name="tbody">
                  <xsl:copy-of select="ancestor::table[1]//tbody/@*"/>
                  <!-- apply all the rows of the current group to the current table -->
                  <xsl:apply-templates select="current-group()"/>
                </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:for-each-group>
        </xsl:template>
      
</xsl:stylesheet>