<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0"
    exclude-result-prefixes="dita jrnl">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_jrnl_bodytext">
        <title>jrnl:bodytext <lnpid>id-NZ08-24013</lnpid></title>

        <body>
            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:bodytext</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body.content/bodytext</targetxml></p>

            <p>Drop <sourcexml class="+ topic/keyword xml-d/sourcexml ">@searchtype</sourcexml> attribute.</p>

            <pre xml:space="preserve" class="- topic/pre ">
  &lt;jrnl:body&gt;
      &lt;jrnl:bodytext searchtype="ARTICLE"&gt;
          &lt;level&gt;
              &lt;bodytext&gt;
                  &lt;p&gt;
                      &lt;text&gt;This article will examine the law relating to the transfer and secondment of employees from one enterprise to another.&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/bodytext&gt;
          &lt;/level&gt;
    &lt;/jrnl:bodytext&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
  &lt;nitf:body.content&gt;
      &lt;bodytext&gt;
          &lt;section&gt;
              &lt;bodytext&gt;
                  &lt;p&gt;
                      &lt;text&gt;This article will examine the law relating to the transfer and secondment of employees from one enterprise to another.&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/bodytext&gt;
          &lt;/section&gt;
      &lt;/bodytext&gt;
  &lt;/nitf:body.content&gt;  
&lt;/nitf:body&gt;
</pre>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ08_NewsLetter_and_Journals\Journal-Newsletter-Bulletins_jrnl_bodytext.dita  -->
    <!-- <xsl:message>NZ08_NewsLetter_and_Journals_Journal-Newsletter-Bulletins_jrnl_bodytext.xsl requires manual development!</xsl:message> -->

    <xsl:template match="jrnl:bodytext">
        <nitf:body.content>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </nitf:body.content>
    </xsl:template>

</xsl:stylesheet>