<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.appendix">
	    <title>case:appendix <lnpid>id-HK09-39408</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">attachments/appendix</targetxml>. <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgments&gt;
    ...
    &lt;case:appendix&gt;
        &lt;p&gt;
            &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;nl/&gt;Court Equity Division in 
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;&lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt; referred to at 655
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseinfo&gt;
                            &lt;ci:decisiondate year="2005"/&gt;
                        &lt;/ci:caseinfo&gt;
                        &lt;ci:caseref ID="cr002"&gt;
                            &lt;ci:reporter value="nswlr"/&gt;
                            &lt;ci:volume num="62"/&gt;
                            &lt;ci:page num="653"/&gt;
                        &lt;/ci:caseref&gt;
                        &lt;ci:caseref anaphref="cr002" spanref="cr002-01"&gt;
                            &lt;ci:pinpoint targettype="para" num="7"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                            &lt;ci:span spanid="cr002-01"&gt;[7]&lt;/ci:span&gt;
                        &lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:appendix&gt;
&lt;/case:judgments&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinions&gt;
    ...
    &lt;attachments&gt;
        &lt;appendix&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;proc:nl/&gt;Court Equity Division in 
                        &lt;lnci:cite type="case"&gt;
                            &lt;lnci:content&gt;
                                &lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;
                            &lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt; referred to at 655
                        &lt;lnci:cite&gt;
                            &lt;lnci:case&gt;
                                &lt;lnci:caseinfo&gt;
                                    &lt;lnci:decisiondate year="2005"/&gt;
                                &lt;/lnci:caseinfo&gt;
                                &lt;lnci:caseref ID="cr002"&gt;
                                    &lt;lnci:reporter value="nswlr"/&gt;
                                    &lt;lnci:volume num="62"/&gt;
                                    &lt;lnci:page num="653"/&gt;
                                &lt;/lnci:caseref&gt;
                                &lt;lnci:caseref anaphref="cr002"&gt;
                                    &lt;lnci:pinpoint targettype="para" num="7"/&gt;
                                &lt;/lnci:caseref&gt;
                            &lt;/lnci:case&gt;
                            &lt;lnci:content&gt;[7]&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/appendix&gt;
    &lt;/attachments&gt;
&lt;/courtcase:opinions&gt;
</pre>
                    <note class="- topic/note ">If <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml>occurs
                        within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content</sourcexml> or <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgments</sourcexml> i.e,
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:content/case:appendix</sourcexml> or <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgments/case:appendix</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:opinions/attachments/appendix</targetxml>.</note>
                    
                </li>
          </ul>
      </section>
   </body>
	</dita:topic>

    <xsl:template match="case:appendix[parent::case:content]">
        <courtcase:opinions>
            <attachments>
                <appendix>
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="heading"/>
                    <xsl:choose>
                        <xsl:when test="bodytext">
                            <xsl:apply-templates select="node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <bodytext>
                                <xsl:apply-templates select="node() except(heading)"/>
                            </bodytext>
                        </xsl:otherwise>
                    </xsl:choose>
                </appendix>
            </attachments> 
        </courtcase:opinions>   
    </xsl:template>
    
    <xsl:template match="case:appendix[not(parent::case:content)]">
            <attachments>
                <appendix>
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="heading"/>
                    <xsl:choose>
                        <xsl:when test="bodytext">
                            <xsl:apply-templates select="node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <bodytext>
                                <xsl:apply-templates select="node() except(heading)"/>
                            </bodytext>
                        </xsl:otherwise>
                    </xsl:choose>
                </appendix>
            </attachments>            
    </xsl:template>


</xsl:stylesheet>