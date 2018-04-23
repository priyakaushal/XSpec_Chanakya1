<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="form">
    <title>form <lnpid>id-st07-31408</lnpid></title>
    <body>
        <section>
            <p>
                <ul>
                    <li><sourcexml>form</sourcexml> becomes
                        <targetxml>form:form</targetxml> with required
                        child as
                        <targetxml>form:form/form:document</targetxml>
                        with attribute values
                        <targetxml>@annotated="false"</targetxml>,
                        <targetxml>@official="true"</targetxml> and
                        <targetxml>@typeofdoc="unnamed"</targetxml>
                        <ul>
                            <li>
                                <sourcexml>form/bodytext</sourcexml> becomes
                                <targetxml>form:form/form:document/form:bodytext</targetxml>
                                The child element of
                                <sourcexml>form/bodytext</sourcexml> includes: <ul>
                                    <li><sourcexml>form/bodytext/h</sourcexml> becomes
                                        <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
                                    <li><sourcexml>form/bodytext/p</sourcexml> becomes
                                        <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
                                    <li><sourcexml>form/bodytext/p/text</sourcexml>
                                        becomes
                                        <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
                                </ul>
                            </li>
                        </ul>
                        <pre>
 
       &lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;form&gt;
            &lt;bodytext searchtype="FORM"&gt;                
                &lt;p&gt;
                    &lt;text&gt;600 17&lt;sup&gt;th&lt;/sup&gt; Street, NW&lt;/text&gt;
                &lt;/p&gt;                
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;                
                &lt;p&gt;
                    &lt;text&gt;Dear Ambassador Zoellick&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;               
                &lt;p&gt;
                    &lt;text&gt;In connection with the signing on this date of the Australia-United States Free
                        Trade Agreement (the &amp;ldquo;Agreement&amp;rdquo;), I have the honour to confirm the
                        following understanding reached by the Governments of Australia and the United
                        States during the course of negotiation of Article&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;17.1.6 (National Treatment) regarding secondary uses of phonograms.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;reproduction of the phonogram and the right of broadcasting in the
                        cinematographic film or other audiovisual work, the Party may limit the rights of
                        the performers and producers of the other&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;I have the honour to propose that this letter and your letter in reply
                        confirming that your Government shares this understanding shall constitute an
                        integral part of the Agreement.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Yours sincerely&lt;/text&gt;
                &lt;/p&gt;
                
                &lt;p&gt;
                    &lt;text&gt;&amp;#160;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Mark Vaile&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Minister for Trade&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/form&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

</pre>
                        <b>Becomes</b>
                        <pre>

       &lt;primlaw:bodytext&gt;
    &lt;form:form&gt;
        &lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
            &lt;form:bodytext&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;600 17&lt;sup&gt;th&lt;/sup&gt; Street, NW&lt;/form:text&gt;
                &lt;/form:p&gt;                
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;                
                &lt;form:p&gt;
                    &lt;form:text&gt;Dear Ambassador Zoellick&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;               
                &lt;form:p&gt;
                    &lt;form:text&gt;In connection with the signing on this date of the Australia-United States Free
                        Trade Agreement (the &amp;#x201C;Agreement&amp;#x201D;), I have the honour to confirm the
                        following understanding reached by the Governments of Australia and the United
                        States during the course of negotiation of Article&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;17.1.6 (National Treatment) regarding secondary uses of phonograms.&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;reproduction of the phonogram and the right of broadcasting in the
                        cinematographic film or other audiovisual work, the Party may limit the rights of
                        the performers and producers of the other&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;I have the honour to propose that this letter and your letter in reply
                        confirming that your Government shares this understanding shall constitute an
                        integral part of the Agreement.&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Yours sincerely&lt;/form:text&gt;
                &lt;/form:p&gt;
                
                &lt;form:p&gt;
                    &lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Mark Vaile&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:p&gt;
                    &lt;form:text&gt;Minister for Trade&lt;/form:text&gt;
                &lt;/form:p&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:document&gt;
    &lt;/form:form&gt;
&lt;/primlaw:bodytext&gt;

            </pre>
                    </li>
                </ul>
            </p>  
        </section>  
        <section>
            <title>Changes</title>
            <p>2014-05-14: <ph id="change_20131114_SSX">Created</ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\International_Instruments\form.dita  -->
	<xsl:message>International_Instruments_form.xsl requires manual development!</xsl:message> 

	<xsl:template match="form">

		<!--  Original Target XPath:  form:form   -->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext/h">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:h>
						<xsl:apply-templates select="@* | node()"/>
					</form:h>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext/p">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:p>
						<xsl:apply-templates select="@* | node()"/>
					</form:p>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext/p/text">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:p>
						<form:text>
							<xsl:apply-templates select="@* | node()"/>
						</form:text>
					</form:p>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

</xsl:stylesheet>