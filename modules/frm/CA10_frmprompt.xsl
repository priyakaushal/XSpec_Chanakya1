<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_frmprompt">
    <title>frm:prompt <lnpid>id-CA10-14624</lnpid></title>
    <body>
        <section>
            <p><sourcexml>frm:prompt</sourcexml> becomes <targetxml>form:prompt</targetxml>.</p>
            <p>Exception:  Treat <sourcexml>h/frm:prompt</sourcexml> as a pass-through element.  The child nodes of <sourcexml>h/frm:prompt</sourcexml> are processed as children of the parent <targetxml>h</targetxml>.</p>
            <note>
                <p>These instructions do not currently address how to map <sourcexml>frm:prompt/@prompttype</sourcexml> to <targetxml>form:prompt/@prompttype</targetxml> because the output is more strictly controlled than the input.  Additional work will be necceary if/when this scenario is encountered.</p>
            </note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;1. Date of reporting period: &lt;frm:prompt&gt;____________&lt;/frm:prompt&gt; to
    &lt;frm:prompt&gt;____________&lt;/frm:prompt&gt;&lt;/text&gt;
&lt;/p&gt;

	        </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;1. Date of reporting period: &lt;form:prompt&gt;____________&lt;/form:prompt&gt; to
    &lt;form:prompt&gt;____________&lt;/form:prompt&gt;&lt;/text&gt;
&lt;/p&gt;

	        </codeblock>
        </example>
        <example>
            <title>Source XML</title>
            <codeblock>
                
          &lt;h&gt;IN THE COURT OF QUEEN&amp;#x2019;S BENCH OF ALBERTA&lt;nl/&gt;JUDICIAL DISTRICT OF &lt;frm:prompt&gt;______________&lt;/frm:prompt&gt;&lt;/h&gt;

            </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
                
          &lt;h&gt;IN THE COURT OF QUEEN&amp;#x2019;S BENCH OF ALBERTA&lt;proc:nl/&gt;JUDICIAL DISTRICT OF ______________&lt;/h&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-04-20: <ph id="change_20160420_frmprompt_1">Added instructions for treating <sourcexml>h/frm:prompt</sourcexml> as a pass-through element.</ph></p>
            <p>2016-03-23: <ph id="change_20160323_frmprompt_1">Added instructions for mapping <sourcexml>frm:prompt</sourcexml> to <targetxml>form:prompt</targetxml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_frmprompt.dita  -->
	<!--<xsl:message>CA10_frmprompt.xsl requires manual development!</xsl:message> -->

	<xsl:template match="frm:prompt">

		<xsl:choose>
		    <xsl:when test="parent::h">
		        <xsl:apply-templates select="@* | node()"/>
		    </xsl:when>
		    <xsl:otherwise>
		        <form:prompt>
		            <xsl:apply-templates select="@* | node()"/>
		        </form:prompt>
		    </xsl:otherwise>
		</xsl:choose>
	   
	</xsl:template>



</xsl:stylesheet>