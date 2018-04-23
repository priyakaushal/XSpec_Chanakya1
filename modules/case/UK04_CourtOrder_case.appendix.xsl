<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.appendix">
  <title>case:appendix <lnpid>id-UK04-27607</lnpid></title>
  <body>
    <p>The element <sourcexml>/CASEDOC/case:body/case:content/case:appendix</sourcexml> becomes <targetxml>/courtorder:courtorder/courtorder:body/appendix/bodytext</targetxml>. Children of <sourcexml>case:appendix</sourcexml> are converted as described in the <b>"General Markup"</b> section and placed within the <targetxml>bodytext</targetxml> element, with one exception.</p>
    <p>The exception is the element <sourcexml>case:appendix/footnotegrp</sourcexml>, which becomes <targetxml>appendix/bodytext/p/text/footnotegroup</targetxml> by creating <targetxml>p</targetxml> and <targetxml>text</targetxml> elements to contain the <targetxml>footnotegroup</targetxml> since it is not allowed directly within <targetxml>bodytext</targetxml>. Then follow the instructions for converting <sourcexml>footnotegrp</sourcexml> found in the <b>"General Markup"</b> section.</p>
    <note>These footnotes <b>do not</b> have a corresponding footnote reference (<sourcexml>fnr</sourcexml>) elsewhere and the <sourcexml>footnote/@fntoken</sourcexml> is often "0". The actual "reference" is usually a <sourcexml>sup</sourcexml> somewhere in the previous paragraphs. For now it is suggested that a <targetxml>ref:anchor</targetxml> be added as per the General Markup instructions for footnotes as a placeholder/reminder in anticipation that a reference can be based on finding the corresponding <sourcexml>sup</sourcexml> elements in the text.</note>

    <section>
      <title>Source XML </title>
      <codeblock>

&lt;case:appendix&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="it"&gt;Schedule 1&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Crown Court Rules 1982, &lt;ci:cite searchtype="LEG-REF" status="valid"
              &gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="1982_1109s_Title"
            /&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_SI"
            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
      1982/1109&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Costs in Criminal Cases (General) Regulations 1986, &lt;ci:cite searchtype="LEG-REF"
        status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="1986_1335s_Title"
            /&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_SI"
            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
      1986/1335&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Crown Prosecution Service (Witnesses' etc Allowances) Regulations 1988, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="1988_1862s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          1988/1862&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Legal Aid in Criminal and Care Proceedings (Costs) Regulations 1989, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="1989_343s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          1989/343&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Legal Aid in Criminal and Care Proceedings (General) Regulations 1989, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="1989_344s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          1989/344&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Criminal Defence Service (Funding) Order 2001, &lt;ci:cite searchtype="LEG-REF"
        status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="2001_855s_Title"
            /&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_SI"
            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
      2001/855&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Criminal Defence Service (Recovery of Defence Costs Orders) Regulations 2001,
        &lt;ci:cite searchtype="LEG-REF" status="valid"
              &gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="2001_856s_Title"
            /&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_SI"
            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
      2001/856&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Criminal Defence Service (Choice in Very High Cost Cases) Regulations 2001, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="2001_1169s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          2001/1169&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Criminal Defence Service (General) (No 2) Regulations 2001, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="2001_1437s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          2001/1437&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Crown Court (Confiscation, Restraint and Receivership) Rules 2003, &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="2003_421s_Title"/&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_SI"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;SI
          2003/421&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="it"&gt;Schedule 2&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Costs from central funds and relevant statutory authorities&lt;/text&gt;
  &lt;/p&gt;
  &lt;page text="[2004] 2 All ER 1070 at " count="1093" reporter="ALLER"/&gt;
  &lt;page text="[2004] 2 All ER 1070 at " count="1095" reporter="ALLER"/&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="it"&gt;Schedule 3&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;FORM 'A'&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Form of Notice of Appeal&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Appeal Pursuant to the Costs in Criminal Cases (General) Regulations 1986/ The Legal
      Aid in Criminal and Care Proceedings (Costs) Regulations 1989/ The Crown Court Rules,
      1982, the Criminal Defence Service (Funding) Order 2001&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Crown Court/ Divisional&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Court/ Court of Appeal Criminal Division&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Regina v ....................................................&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Appeal of ...................................................&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Case No ...................................&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;To: A Costs Judge and to the appropriate authority of the
      .................................................................&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Crown Court/ Divisional Court/ Court of Appeal Criminal Division.&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;The Appellant ......................................appeals to a Costs Judge against
      the redetermination of the costs in the above matter.&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;The following are the items in respect of which the Applicant appeals:&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Grounds of Objection (To Be Set Out in Full)&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;We confirm that a copy of this notice has been served upon the appropriate
      authority.&lt;/text&gt;
  &lt;/p&gt;
  &lt;page text="[2004] 2 All ER 1070 at " count="1097" reporter="ALLER"/&gt;
  &lt;p&gt;
    &lt;text&gt;The Appellant should attach to this Notice of Appeal his/her Grounds of Objection
      and in so doing provide the Costs Judge with a detailed response to the written reasons
      provided by the Determining Officer.&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Do you wish to attend the hearing of your Appeal: Yes/ No&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Dated the day of &lt;/text&gt;
  &lt;/p&gt;
  &lt;page text="[2004] 2 All ER 1070 at " count="1098" reporter="ALLER"/&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="it"&gt;Schedule 4&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;FORM OF CERTIFIATE&lt;/text&gt;
  &lt;/p&gt;
  &lt;table colsep="0" rowsep="0" frame="none"&gt;
    &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
      &lt;colspec colname="C1" colnum="1" colwidth="0.0104167in" colsep="0" rowsep="0"/&gt;
      &lt;colspec colname="C2" colnum="2" colwidth="0.39375in" colsep="0" rowsep="0"/&gt;
      &lt;colspec colname="C3" colnum="3" colwidth="5.50625in" colsep="0" rowsep="0"/&gt;
      &lt;colspec colname="C4" colnum="4" colwidth="0.0104167in" colsep="0" rowsep="0"/&gt;
      &lt;tbody&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"&gt;To:&lt;/entry&gt;
          &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"&gt; The Chief
            Clerk&lt;/entry&gt;
          &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"&gt; Crown
            Court&lt;/entry&gt;
          &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
        &lt;/row&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
        &lt;/row&gt;
      &lt;/tbody&gt;
    &lt;/tgroup&gt;
  &lt;/table&gt;
  &lt;p&gt;
    &lt;text&gt;Address:&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Date:&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="bf"&gt;Regina v A&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;With reference to the pending determination of the [prosecutor's] [defendant's]
      costs and disbursements herein which are payable by the [defendant] [the prosecutor]
      [public funds], we the undersigned (solicitors to) (the auditors of) the [prosecutor]
      [defendant] hereby certify that he on the basis of his last completed VAT return would
      (not be entitled to recover) (be entitled to recover only..........percent of the) Value
      Added Tax on such costs and disbursements, as input tax pursuant to &lt;ci:cite
        searchtype="LEG-REF" status="valid"&gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum
              num="1994_23a"/&gt;&lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="section" num="25"
              /&gt;&lt;/ci:hierpinpoint&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
              normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;Section
          25&lt;/ci:content&gt;&lt;/ci:cite&gt; of the Value Added Tax Act 1994.&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Signed&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;(Solicitors to) (Auditors of) (Defendant) (Prosecutor)&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;Registered number&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;End of Volume 2.&lt;/text&gt;
  &lt;/p&gt;
&lt;/case:appendix&gt;

      </codeblock>
    </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;appendix&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="it"&gt;Schedule 1&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Crown Court Rules 1982, &lt;lnci:cite status="valid"
                &gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="1982_1109s_Title"
              /&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_SI"
              /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
        1982/1109&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Costs in Criminal Cases (General) Regulations 1986, &lt;lnci:cite
          status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="1986_1335s_Title"
              /&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_SI"
              /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
        1986/1335&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Crown Prosecution Service (Witnesses' etc Allowances) Regulations 1988, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="1988_1862s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            1988/1862&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Legal Aid in Criminal and Care Proceedings (Costs) Regulations 1989, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="1989_343s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            1989/343&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Legal Aid in Criminal and Care Proceedings (General) Regulations 1989, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="1989_344s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            1989/344&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Criminal Defence Service (Funding) Order 2001, &lt;lnci:cite
          status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="2001_855s_Title"
              /&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_SI"
              /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
        2001/855&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Criminal Defence Service (Recovery of Defence Costs Orders) Regulations 2001,
          &lt;lnci:cite status="valid"
                &gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="2001_856s_Title"
              /&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_SI"
              /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
        2001/856&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Criminal Defence Service (Choice in Very High Cost Cases) Regulations 2001, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="2001_1169s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            2001/1169&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Criminal Defence Service (General) (No 2) Regulations 2001, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="2001_1437s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            2001/1437&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Crown Court (Confiscation, Restraint and Receivership) Rules 2003, &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="2003_421s_Title"/&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_SI"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;SI
            2003/421&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="it"&gt;Schedule 2&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Costs from central funds and relevant statutory authorities&lt;/text&gt;
    &lt;/p&gt;
    &lt;ref:page num="1093" page-scheme="ALLER" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;ref:page num="1095" page-scheme="ALLER" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="it"&gt;Schedule 3&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;FORM 'A'&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Form of Notice of Appeal&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Appeal Pursuant to the Costs in Criminal Cases (General) Regulations 1986/ The Legal
        Aid in Criminal and Care Proceedings (Costs) Regulations 1989/ The Crown Court Rules,
        1982, the Criminal Defence Service (Funding) Order 2001&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Crown Court/ Divisional&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Court/ Court of Appeal Criminal Division&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Regina v ....................................................&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Appeal of ...................................................&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Case No ...................................&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;To: A Costs Judge and to the appropriate authority of the
        .................................................................&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Crown Court/ Divisional Court/ Court of Appeal Criminal Division.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;The Appellant ......................................appeals to a Costs Judge against
        the redetermination of the costs in the above matter.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;The following are the items in respect of which the Applicant appeals:&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Grounds of Objection (To Be Set Out in Full)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;We confirm that a copy of this notice has been served upon the appropriate
        authority.&lt;/text&gt;
    &lt;/p&gt;
    &lt;ref:page num="1097" page-scheme="ALLER" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;p&gt;
      &lt;text&gt;The Appellant should attach to this Notice of Appeal his/her Grounds of Objection
        and in so doing provide the Costs Judge with a detailed response to the written reasons
        provided by the Determining Officer.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Do you wish to attend the hearing of your Appeal: Yes/ No&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Dated the day of &lt;/text&gt;
    &lt;/p&gt;
    &lt;ref:page num="1098" page-scheme="ALLER" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="it"&gt;Schedule 4&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;FORM OF CERTIFIATE&lt;/text&gt;
    &lt;/p&gt;
    &lt;table colsep="0" rowsep="0" frame="none"&gt;
      &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
        &lt;colspec colname="C1" colnum="1" colwidth="0.0104167in" colsep="0" rowsep="0"/&gt;
        &lt;colspec colname="C2" colnum="2" colwidth="0.39375in" colsep="0" rowsep="0"/&gt;
        &lt;colspec colname="C3" colnum="3" colwidth="5.50625in" colsep="0" rowsep="0"/&gt;
        &lt;colspec colname="C4" colnum="4" colwidth="0.0104167in" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
          &lt;row rowsep="0"&gt;
            &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;/row&gt;
          &lt;row rowsep="0"&gt;
            &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"&gt;To:&lt;/entry&gt;
            &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"&gt; The Chief
              Clerk&lt;/entry&gt;
            &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;/row&gt;
          &lt;row rowsep="0"&gt;
            &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"&gt; Crown
              Court&lt;/entry&gt;
            &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;/row&gt;
          &lt;row rowsep="0"&gt;
            &lt;entry namest="C1" nameend="C1" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C2" nameend="C2" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C3" nameend="C3" morerows="0" colsep="0" rowsep="0"/&gt;
            &lt;entry namest="C4" nameend="C4" morerows="0" colsep="0" rowsep="0"/&gt;
          &lt;/row&gt;
        &lt;/tbody&gt;
      &lt;/tgroup&gt;
    &lt;/table&gt;
    &lt;p&gt;
      &lt;text&gt;Address:&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Date:&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;emph typestyle="bf"&gt;Regina v A&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;With reference to the pending determination of the [prosecutor's] [defendant's]
        costs and disbursements herein which are payable by the [defendant] [the prosecutor]
        [public funds], we the undersigned (solicitors to) (the auditors of) the [prosecutor]
        [defendant] hereby certify that he on the basis of his last completed VAT return would
        (not be entitled to recover) (be entitled to recover only..........percent of the) Value
        Added Tax on such costs and disbursements, as input tax pursuant to &lt;lnci:cite status="valid"&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum
                num="1994_23a"/&gt;&lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="section" num="25"
                /&gt;&lt;/lnci:hierpinpoint&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;Section
            25&lt;/lnci:content&gt;&lt;/lnci:cite&gt; of the Value Added Tax Act 1994.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Signed&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;(Solicitors to) (Auditors of) (Defendant) (Prosecutor)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Registered number&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;End of Volume 2.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/appendix&gt;

        </codeblock>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.appendix.dita  -->
	<!--<xsl:message>UK04_CourtOrder_case.appendix.xsl requires manual development!</xsl:message> -->

	<xsl:template match="/CASEDOC/case:body/case:content/case:appendix">

		<xsl:choose>
		  <xsl:when test="child::footnotegrp">
		    <appendix>
		      <bodytext>
		        <p>
		          <text>
		        <xsl:apply-templates select="@* | node()"/>
		          </text>
		        </p>
		      </bodytext>
		    </appendix>
		  </xsl:when>
		  <xsl:otherwise>
		    <appendix>
		      <bodytext>
		       
		            <xsl:apply-templates select="@* | node()"/>
		      </bodytext>
		    </appendix>
		  </xsl:otherwise>
		</xsl:choose>
	 
	</xsl:template>

</xsl:stylesheet>