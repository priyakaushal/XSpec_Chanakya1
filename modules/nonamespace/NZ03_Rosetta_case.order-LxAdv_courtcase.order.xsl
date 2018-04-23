<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.order-LxAdv_courtcase.order">
    <title>case:order <lnpid>id-NZ03-23030</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/mapping"/>
        <example>
            <codeblock>
&lt;case:order&gt;
    &lt;heading&gt;
        &lt;title&gt;Order&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;A. The appeal is allowed.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;B. The appellant&amp;apos;s conviction is set aside.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:order&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:orders&gt;
    &lt;courtcase:order&gt;
        &lt;heading&gt;
            &lt;title&gt;Order&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;A. The appeal is allowed.&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;B. The appellant&amp;apos;s conviction is set aside.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:order&gt;
&lt;/courtcase:orders&gt;
       </codeblock>
        </example>
        <section><p>If <sourcexml>l</sourcexml> and <sourcexml>blockquote</sourcexml> occur within
                    <sourcexml>case:order</sourcexml> then the corresponding elements
                    <targetxml>list</targetxml> and <targetxml>blockquote</targetxml> should occur
                inside <targetxml>bodytext/p</targetxml> under
                    <targetxml>courtcase:order</targetxml>, i.e., <ol>
                    <li>
                        <sourcexml>case:order/l</sourcexml> becomes
                            <targetxml>courtcase:order/bodytext/p/list</targetxml>
                    </li>
                    <li>
                        <sourcexml>case:order/blockquote</sourcexml> becomes
                            <targetxml>courtcase:order/bodytext/p/blockquote</targetxml>
                    </li>
                </ol>
            </p></section>
        <example>
            <codeblock>
&lt;case:order&gt;
    &lt;heading&gt;
        &lt;title&gt;Order&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;The Court is aware, however, that there are outstanding issues requiring decision by the. trustees. Subsequent to the filing of this appeal, two applications for Interlocutory Injunctions have been received and declined by this Court. Clearly an expeditious decisi as to the land&amp;apos;s administration is desirable. It is for this reason that the Court has issued memorandum and proposes to making the following orders:&lt;/text&gt;
    &lt;/p&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;1.&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;Setting aside the orders made by the Maori Land Court at Levin on 18&amp;#xA0;June 1998.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;2.&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;Granting a rehearing of the applications heard on 18&amp;#xA0;June 1998.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;3.&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;Directing that the filing fee and security for costs paid by the appellant be refunded in full.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:order&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:orders&gt;
    &lt;courtcase:order&gt;
        &lt;heading&gt;
            &lt;title&gt;Order&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;The Court is aware, however, that there are outstanding issues requiring
                    decision by the. trustees. Subsequent to the filing of this appeal, two
                    applications for Interlocutory Injunctions have been received and declined by
                    this Court. Clearly an expeditious decisi as to the land&amp;#x0027;s administration
                    is desirable. It is for this reason that the Court has issued memorandum and
                    proposes to making the following orders:&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;list&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;
                            &lt;emph typestyle="ro"&gt;1.&lt;/emph&gt;
                        &lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Setting aside the orders made by the Maori Land Court at Levin
                                    on 18 June 1998.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;
                            &lt;emph typestyle="ro"&gt;2.&lt;/emph&gt;
                        &lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Granting a rehearing of the applications heard on 18 June
                                    1998.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;
                            &lt;emph typestyle="ro"&gt;3.&lt;/emph&gt;
                        &lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Directing that the filing fee and security for costs paid by
                                    the appellant be refunded in full.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                &lt;/list&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:order&gt;
&lt;/courtcase:orders&gt;
       </codeblock>
        </example>
        <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/changes"/>-->
        <!--<section>
      <title>Changes Specific to NZ03</title>
      </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.order-LxAdv_courtcase.order.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.order-LxAdv_courtcase.order.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="case:order">
        <courtcase:orders>
            <courtcase:order>
                <xsl:choose>
                    <xsl:when test="./@subdoc">
                        <xsl:attribute name="includeintoc">
                            <xsl:value-of select="@subdoc"/>
                        </xsl:attribute>
                    </xsl:when>
                    <xsl:when test="./@toc-caption">
                        <xsl:attribute name="alternatetoccaption">
                            <xsl:value-of select="@toc-caption"/>
                        </xsl:attribute>
                    </xsl:when>    
                </xsl:choose>
                <xsl:apply-templates select="heading"/>
                <bodytext>
                    <xsl:apply-templates select="@* | node() except heading"/>
                </bodytext>
            </courtcase:order>
        </courtcase:orders>
    </xsl:template>

</xsl:stylesheet>