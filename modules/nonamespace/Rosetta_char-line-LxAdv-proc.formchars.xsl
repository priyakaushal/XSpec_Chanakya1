<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_char-line_to_LexisAdvance_proc.formchars">
    <title><sourcexml>char-line</sourcexml> to <targetxml>proc:formchars</targetxml> <lnpid>id-CCCC-10266</lnpid></title>
    <body>
        <section>
            <p><b><sourcexml>char-line</sourcexml> becomes <targetxml>proc:formchars</targetxml> and
                    includes the attributes <targetxml>@formchar</targetxml> and
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
                    <li><sourcexml>char-line[@character="."]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="dot"]</targetxml></li>
                    <li><sourcexml>char-line[@character="_"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="rule"]</targetxml></li>
                    <li><sourcexml>char-line[@character="-"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="hypen"]</targetxml></li>
                    <li><sourcexml>char-line[@character=" "]</sourcexml> becomes
                            <targetxml>proc:formchars[@formchar="invisible"]</targetxml></li>
                    <li><sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml> becomes
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
                    <li><sourcexml>char-line[@num-char="2"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="day"]</targetxml></li>
                    <li><sourcexml>char-line[@num-char="4"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="day"]</targetxml></li>
                    <li><sourcexml>char-line[@num-char="8"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="month"]</targetxml></li>
                    <li><sourcexml>char-line[@num-char="12"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="address"]</targetxml></li>
                    <li><sourcexml>char-line[@num-char="16"]</sourcexml> becomes
                            <targetxml>proc:formchars[@formcharuse="longname"]</targetxml></li>
                </ul>
            </p>
            <note>A CR is required to add attribute @align within
                    <targetxml>proc:formchars</targetxml>.</note>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;blockquote&gt;
        &lt;char-line character="_" num-char="15" align="center"/&gt;
    &lt;/blockquote&gt;
&lt;/p&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
    &lt;blockquote&gt;
        &lt;proc:formchars formchar="rule" formcharuse="longname" align="center"/&gt;
    &lt;/blockquote&gt;
&lt;/p&gt;

		</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-02-08: <ph id="change_20130208_xxx">Corrected the last mapping of <sourcexml>char-line[@character="
                    "]</sourcexml> to <targetxml>proc:formchars[@formchar="invisible"]</targetxml>
                so that the source element properly displays as
                    <sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml>.</ph></p>
            <p>2012-09-11: <ph id="change_20120911_xxx">Removed CR number
                (LBAM2011121605552800).</ph></p>
            <p>2011-09-11: <ph id="change_20110911_xxx">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_char-line-LxAdv-proc.formchars.dita  -->
	
<!-- Vikas Rohilla : Template to match the char-line and create the proc:formchars	-->
    <xsl:template match="char-line">
        <xsl:choose>
            <xsl:when test="$streamID='AU01' and parent::case:judgmentbody">
                <p>
                    <text>
                        <proc:formchars>
                            <xsl:attribute name="formchar">
                                <xsl:choose>
                                    <xsl:when test="@character='_'">
                                        <xsl:text>rule</xsl:text>        
                                    </xsl:when>
                                    <xsl:when test="@character='.'">
                                        <xsl:text>dot</xsl:text>        
                                    </xsl:when>
                                    <xsl:when test="@character='-'">
                                        <xsl:text>hypen</xsl:text>        
                                    </xsl:when>
                                    <xsl:when test="@character=' '">
                                        <xsl:text>invisible</xsl:text>        
                                    </xsl:when>
                                    <xsl:when test="@character='&amp;nbsp;'">
                                        <xsl:text>invisible</xsl:text>        
                                    </xsl:when>
                                </xsl:choose>		        
                            </xsl:attribute>
                            <xsl:attribute name="formcharuse">
                                <xsl:choose>
                                    <xsl:when test="@num-char='2'">
                                        <xsl:text>day</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="@num-char='4'">
                                        <xsl:text>day</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="@num-char='8'">
                                        <xsl:text>month</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="@num-char='12'">
                                        <xsl:text>address</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="@num-char='16'">
                                        <xsl:text>longname</xsl:text>
                                    </xsl:when>
                                    <!-- Awantika: 2017-10-31- Added @num-char='32' to formcharuse="other" coming in AU01 -->
                                    <xsl:when test="@num-char='32'">
                                        <xsl:text>other</xsl:text>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:attribute>
                            <xsl:if test="@align[not($streamID='AU01')]">
                                <xsl:copy-of select="@align"/>
                            </xsl:if>
                        </proc:formchars>
                    </text>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <proc:formchars>
                    <xsl:attribute name="formchar">
                        <xsl:choose>
                            <xsl:when test="@character='_'">
                                <xsl:text>rule</xsl:text>        
                            </xsl:when>
                            <xsl:when test="@character='.'">
                                <xsl:text>dot</xsl:text>        
                            </xsl:when>
                            <xsl:when test="@character='-'">
                                <xsl:text>hypen</xsl:text>        
                            </xsl:when>
                            <xsl:when test="@character=' '">
                                <xsl:text>invisible</xsl:text>        
                            </xsl:when>
                            <xsl:when test="@character='&amp;nbsp;'">
                                <xsl:text>invisible</xsl:text>        
                            </xsl:when>
                        </xsl:choose>		        
                    </xsl:attribute>
                    <xsl:attribute name="formcharuse">
                        <xsl:choose>
                            <xsl:when test="@num-char='2'">
                                <xsl:text>day</xsl:text>
                            </xsl:when>
                            <xsl:when test="@num-char='4'">
                                <xsl:text>day</xsl:text>
                            </xsl:when>
                            <xsl:when test="@num-char='8'">
                                <xsl:text>month</xsl:text>
                            </xsl:when>
                            <xsl:when test="@num-char='12'">
                                <xsl:text>address</xsl:text>
                            </xsl:when>
                            <xsl:when test="@num-char='16'">
                                <xsl:text>longname</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:attribute>
                    <xsl:if test="@align">
                        <xsl:copy-of select="@align"/>
                    </xsl:if>
                </proc:formchars>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>

	

</xsl:stylesheet>