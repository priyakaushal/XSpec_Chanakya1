<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"    
version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_nl-to-LexisAdvance_proc.nl" ditaarch:DITAArchVersion="1.2" domains="" class="- topic/topic "><title class="- topic/title "><sourcexml>nl</sourcexml> to <targetxml>proc:nl</targetxml>
    <lnpid>id-CCCC-10404</lnpid></title><body class="- topic/body "><section class="- topic/section ">
      <p class="- topic/p "><sourcexml>nl</sourcexml> becomes <targetxml>proc:nl</targetxml></p>
      <note class="- topic/note "><sourcexml>nl</sourcexml> comes with <sourcexml>@n</sourcexml> then
          <sourcexml>@n</sourcexml> will be suppressed in NL conversion.</note>
      <note class="- topic/note ">MLV: NSW Law reports - preserve spacing and linebreaks for licensing.</note>
    </section><example class="- topic/example ">
      <title class="- topic/title ">Source XML</title>
      <codeblock>
&lt;tbody&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification
            day.&lt;nl/&gt;(4/11/2008)&lt;/entry&gt;
    &lt;/row&gt;
&lt;/tbody&gt;
    	</codeblock>
    </example><example class="- topic/example ">
      <title class="- topic/title ">Target XML</title>
      <codeblock>
&lt;tbody&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification
            day.&lt;proc:nl/&gt;(4/11/2008)&lt;/entry&gt;
    &lt;/row&gt;
&lt;/tbody&gt;

    	</codeblock>
    </example><example class="- topic/example ">
      <title class="- topic/title ">Source XML</title>
      <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;nl n="2"/&gt;
    &lt;/text&gt;
&lt;/p&gt;
      </codeblock>
    </example><example class="- topic/example ">
      <title class="- topic/title ">Target XML</title>
      <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;proc:nl/&gt;
    &lt;/text&gt;
&lt;/p&gt;
</codeblock>
    </example><section class="- topic/section ">
      <title class="- topic/title ">Changes</title>
      <p class="- topic/p ">2013-03-14: <ph id="change_20130314_ab" class="- topic/ph ">Add instruction and example
            <sourcexml>nl/@n</sourcexml>.</ph></p>
    </section>
    </body>	</dita:topic>



    <!-- Awantika:2017-11-30- CI has differnt rule for CA02CC,DC and DS."Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character. Webstar# 6994049" -->
        <xsl:template match="nl">
            <xsl:choose>
                <!-- Awantika: Commenting this for CA02CC.Webstar  6994049. CI doesn't say to create proc:nl
                "Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character."
                -->
                <xsl:when test="$streamID='CA02CC' and parent::case:casename">                  
                            
                                <xsl:apply-templates/>
                            
                </xsl:when>
                <xsl:when test="$streamID='AU21'">
                    <xsl:choose>
                        <xsl:when test="parent::text/parent::p/parent::source_dict:subtopic/@id[starts-with(.,'BOOK:')]"/>
                        <xsl:otherwise>
                            <xsl:element name="proc:nl">
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:element name="proc:nl">
                        <xsl:apply-templates/>
                    </xsl:element>        
                </xsl:otherwise>
            </xsl:choose>
            
        </xsl:template>

        <xsl:template match="nl/@n">
          <!-- suppress -->
        </xsl:template>
      
</xsl:stylesheet>