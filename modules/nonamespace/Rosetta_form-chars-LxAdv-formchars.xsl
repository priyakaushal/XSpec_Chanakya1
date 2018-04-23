<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_form-chars">
    <title><sourcexml>form-chars</sourcexml> to <targetxml>proc:formchars</targetxml> <lnpid>id-CCCC-10323</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><b><sourcexml>form-chars</sourcexml> becomes <targetxml>proc:formchars</targetxml>
                    and includes the attributes <targetxml>@formchar</targetxml> and
                        <targetxml>@formcharuse</targetxml>. Attributes
                        <targetxml>@formchar</targetxml> and <targetxml>@formcharuse</targetxml> are
                    required attributes in <targetxml>proc:formchars</targetxml> and the values for
                    these attributes are tokenized in the NewLexis Schema.</b>
            </p>
            <p><b>Attribute <targetxml>@formchar</targetxml> allows the tokenized values listed
                    below:</b>
                <ul>
                    <li><targetxml>proc:formchars[@formchar="dot"]</targetxml>
                    </li>
                    <li><targetxml>proc:formchars[@formchar="rule"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formchar="dbl-rule"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formchar="hypen"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formchar="invisible"]</targetxml></li>
                </ul>
                <b>Below are the values for <targetxml>proc:formchars[@formchar]</targetxml> found
                    in the source documents and the corresponding mapping in NewLexis.</b>
                <ul>
                    <li><sourcexml>form-chars[@character="."]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="dot"]</targetxml></li>
                    <li><sourcexml>form-chars[@character="_"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="rule"]</targetxml></li>
                    <li><sourcexml>form-chars[@character="underline"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="rule"]</targetxml></li>
                    <li><sourcexml>form-chars[@character="-"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="hypen"]</targetxml></li>
                    <li><sourcexml>form-chars[@character=" "]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="invisible"]</targetxml></li>
                    <li><sourcexml>form-chars[@character=""]</sourcexml> becomes
                        <targetxml>proc:formchars[@formchar="invisible"]</targetxml></li>
                    <li><sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="invisible"]</targetxml></li>
                </ul>
            </p>
            <p><b>Attribute <targetxml>@formcharuse</targetxml> values are listed below:</b>
                <ul>
                    <li><targetxml>proc:formchars[@formcharuse="date"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="day"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="month"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="year"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="num"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="money"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="address"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="name"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="longname"]</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="leaderfill"]</targetxml>
                        <targetxml>@formcharuse="leaderfill"</targetxml> means fill the available
                        space with the formchar. Basically, push the text on each side out to the
                        margins if possible.</li>
                    <li><targetxml>proc:formchars[@formcharuse="other"]</targetxml></li>
                </ul>
                <b>The following are the widths (in points) used for this element in print for each
                    possible value of <targetxml>@formcharuse</targetxml>. To determine the number
                    of characters, divide the point value by 6.</b>
                <ul>
                    <li><targetxml>proc:formchars[@formcharuse="date"] 66 -&gt;11</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="day"] 36 -&gt;6</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="month"] 48 -&gt; 8</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="year"] 36 -&gt; 6</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="num"] 36 -&gt; 6</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="money"] 42 -&gt; 7</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="address"] 72 -&gt; 12</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="name"] 66 -&gt; 11</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="longname"] 132 -&gt;
                        22</targetxml></li>
                    <li><targetxml>proc:formchars[@formcharuse="other"] 66 -&gt; 11</targetxml></li>
                </ul>
                <b>Below are the values for <targetxml>proc:formchars[@formcharuse]</targetxml>
                    found in the source documents and the corresponding mapping in NewLexis.</b>
                <ul>
                    <li><sourcexml>form-chars[@num-char="2"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="day"]</targetxml></li>
                    <li><sourcexml>form-chars[@num-char="4"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="day"]</targetxml></li>
                    <li><sourcexml>form-chars[@num-char="8"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="month"]</targetxml></li>
                    <li><sourcexml>form-chars[@num-char="12"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="address"]</targetxml></li>
                    <li><sourcexml>form-chars[@num-char="16"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="longname"]</targetxml></li>
                </ul>
                <note>If the value for <sourcexml>@num-char</sourcexml> doesn't fall in the above
                    specified list then use higher <targetxml>@formcharuse</targetxml> value in
                    target mapping. For example: If value for
                        <sourcexml>form-chars/@num-char</sourcexml> is "7" then use
                        <targetxml>"month"</targetxml> as the value for
                        <targetxml>proc:formchars/@formcharuse</targetxml>.</note>
            </p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;blockquote&gt;
&lt;p indent="none"&gt;
&lt;text&gt;&lt;form-chars character="_" num-char="7"/&gt;&lt;/text&gt;
&lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;blockquote&gt;
&lt;p indent="none"&gt;
&lt;text&gt;&lt;proc:formchars formchar="rule" formcharuse="month"/&gt;&lt;/text&gt;
&lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>

        <note>If <sourcexml>@num-char</sourcexml> value goes beyond <b>22</b> simply use
                <targetxml>@formcharuse="longname"</targetxml> except below use case:
                <sourcexml>&lt;form-chars character="dotleader" num-char="55.4" /&gt;</sourcexml>
            will become <targetxml>&lt;proc:formchars formchar="invisible" fromcharuse="leaderfill"
                /&gt;</targetxml>
        </note>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;blockquote&gt;
&lt;p indent="none"&gt;
&lt;text&gt;&lt;form-chars character="_" num-char="8"/&gt;&lt;/text&gt;
&lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;blockquote&gt;
&lt;p indent="none"&gt;
&lt;text&gt;&lt;proc:formchars formchar="rule" formcharuse="month"/&gt;&lt;/text&gt;
&lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>

        <p><sourcexml>form-chars/@character="line"</sourcexml> will become
                <targetxml>proc:formchars/@formchar="rule"</targetxml>.</p>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;form-chars character="line" num-char="6" /&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;proc:formchars formchar="rule" formcharuse="month"/&gt;

	</codeblock>
        </example>


        <p><sourcexml>form-chars/@character="blank"</sourcexml> will become
                <targetxml>proc:formchars/@formchar="invisible"</targetxml>.</p>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;form-chars character="blank" num-char="40" /&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;proc:formchars formchar="invisible" formcharuse="longname"/&gt;

	</codeblock>
        </example>


        <p>In Input if @num-char is not specified it means <b>fill available space</b>.</p>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;form-chars character="." /&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;proc:formchars formchar="dot" fromcharuse="leaderfill"/&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-02-08: <ph id="change_20130208_xxx">Corrected the last mapping of
                        <sourcexml>form-chars[@character=" "]</sourcexml> to
                        <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the
                    source element properly displays as
                        <sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml>.</ph></p>
            <p>2012-08-30: <ph id="change_20120830_xxx">Created.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="form-chars">

		<!--  Original Target XPath:  proc:formchars   -->
		<proc:formchars>		    
		    <xsl:variable name="character" select="@character"/>
		    <xsl:variable name="numChar" select="number(@num-char)"/>
		    <xsl:attribute name="formchar">
		        <xsl:choose>
		            <xsl:when test="$character = '.'">dot</xsl:when>
		            <xsl:when test="$character = '_'">rule</xsl:when>
		            <xsl:when test="$character = 'line'">rule</xsl:when>
		            <xsl:when test="$character = 'underline'">rule</xsl:when>
		            <xsl:when test="$character = '-'">hyphen</xsl:when>
		            <xsl:when test="normalize-space($character) = ''">invisible</xsl:when>
		            <xsl:when test="$character = 'blank'">invisible</xsl:when>
		            <xsl:when test="$character = '&#160;'">invisible</xsl:when>
		            <xsl:when test="$character = 'Â '">invisible</xsl:when>
		            <xsl:when test="$character = '??'">invisible</xsl:when>
		            <xsl:when test="$character = 'dotleader' and $numChar = 55.4">invisible</xsl:when>
		            <xsl:when test="$character = 'dotleader'">dot</xsl:when>
		            <xsl:when test="$character = 'fullpoint'">dot</xsl:when>		            
		            <xsl:otherwise>
		                <xsl:call-template name="outputErrorMessage">
		                    <xsl:with-param name="messageText" as="xs:string" select=" 'ERROR:  Rosetta_form-chars-LxAdv-formchars.xsl - The source value is unknown.' "/>
		                    <xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
		                    <xsl:with-param name="errorCode" as="xs:string*" select=" '502' "/>
		                    <xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
		                </xsl:call-template></xsl:otherwise>
		        </xsl:choose>
		    </xsl:attribute>
		    <xsl:attribute name="formcharuse">
		        <!-- When statements are overlapping in order to match Instructions -->
		        <xsl:choose>		            
		            <xsl:when test="string($numChar) = 'NaN'">leaderfill</xsl:when>
		            <xsl:when test="$numChar = 55.4 and $character = 'dotleader'">leaderfill</xsl:when>
		            <xsl:when test="$numChar &gt; 22">longname</xsl:when>
		            <xsl:when test="$numChar le 2">day</xsl:when>
		            <xsl:when test="$numChar le 4">day</xsl:when>
		            <xsl:when test="$numChar le 8">month</xsl:when>
		            <xsl:when test="$numChar le 12">address</xsl:when>
		            <xsl:when test="$numChar le 16">longname</xsl:when>
		            <xsl:when test="$numChar le 22">longname</xsl:when>
		            <xsl:otherwise>leaderfill</xsl:otherwise>
		        </xsl:choose>
		    </xsl:attribute>
			<xsl:apply-templates select="node()"/>
		</proc:formchars>

	</xsl:template>


</xsl:stylesheet>