<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita source_cttr cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_cttr.use-group_cttr.use">
  <title>cttr:use-group/cttr:use <lnpid>id-UK11DA-29416</lnpid></title>
  <body>
    <section><p>Conversion depends on whether ancestor is "consideredcases" or
      "consideredleg".</p></section>
    <section><ul>
        <li>If ancestor is
            <sourcexml>cttr:annotations[@annotationtype="consideredcases"]/cttr:annot</sourcexml>
          then - -<ul>
            <li><sourcexml>cttr:use-group</sourcexml> becomes <targetxml>cttr:usagegroup</targetxml>.<ul>
                <li><sourcexml>cttr:use[@signal]</sourcexml> becomes
                    <targetxml>cttr:usage[@usagetype]</targetxml>. If <sourcexml>@signal</sourcexml>
                  does not exist, or <sourcexml>@signal="citation"</sourcexml>, set
                    <targetxml>@usagetype="unspecified"</targetxml>.</li>
              </ul></li>
          </ul></li>
        <li>If ancestor is
            <sourcexml>cttr:annotations[@annotationtype="consideredleg"]/cttr:annot</sourcexml> then
          - -<ul>
            <li><sourcexml>cttr:use-group</sourcexml> itself does not convert, i.e., suppress the
              tag but map the child.<ul>
                <li><sourcexml>cttr:use</sourcexml> becomes
                    <targetxml>cttr:legisinfo/legisinfo:status/legisinfo:statustext</targetxml>.
                  (There is no <sourcexml>@signal</sourcexml> within "consideredleg").</li>
              </ul></li>
          </ul></li>
      </ul>
    </section>

    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
...
  &lt;cttr:annotations annotationtype="consideredcases"&gt;
    &lt;heading&gt;
        &lt;title&gt;Cases considered in this article&lt;/title&gt;
    &lt;/heading&gt;
    &lt;cttr:annot&gt;
      &lt;cttr:use-group&gt;
          &lt;cttr:use signal="positive"&gt;Positive&lt;/cttr:use&gt;
      &lt;/cttr:use-group&gt;
    &lt;/cttr:annot&gt;
  &lt;/cttr:annotations&gt;
  &lt;cttr:annotations annotationtype="consideredleg"&gt;
    &lt;heading&gt;
        &lt;title&gt;Legislation considered in this article&lt;/title&gt;
    &lt;/heading&gt;
    &lt;cttr:annot leg-signal="in-force-commenced-amend"&gt;
      &lt;cttr:use-group&gt;
          &lt;cttr:use&gt;In force with commencement&lt;/cttr:use&gt;
      &lt;/cttr:use-group&gt;
    &lt;/cttr:annot&gt;
  &lt;/cttr:annotations&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;cttr:refs&gt;
    &lt;cttr:refsection reftype="considered-cases"&gt;
      &lt;heading&gt;
          &lt;title&gt;Cases considered in this article&lt;/title&gt;
      &lt;/heading&gt;
      &lt;cttr:refitem&gt;
          &lt;cttr:consideredcase treatment="unspecified"&gt;
          ...
            &lt;cttr:usagegroup&gt;
                &lt;cttr:usage usagetype="positive"&gt;
                    &lt;text&gt;Positive&lt;/text&gt;
                &lt;/cttr:usage&gt;
            &lt;/cttr:usagegroup&gt;
          &lt;/cttr:consideredcase&gt;
      &lt;cttr:refitem&gt;
    &lt;/cttr:refsection&gt;
    &lt;cttr:refsection reftype="considered-legislation"&gt;
      &lt;heading&gt;
          &lt;title&gt;Legislation considered in this article&lt;/title&gt;
      &lt;/heading&gt;
      &lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
          ...
            &lt;cttr:legisinfo&gt;
              &lt;legisinfo:status statuscode="in-force-commenced-amend"&gt;
                 &lt;legisinfo:statustext&gt;In force with commencement&lt;/legisinfo:statustext&gt;
              &lt;/legisinfo:status&gt;
            &lt;/cttr:legisinfo&gt;
          &lt;/cttr:consideredlegis&gt;
      &lt;cttr:refitem&gt;
    &lt;/cttr:refsection&gt;
  &lt;cttr:refs&gt;
&lt;/abstract:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2013-07-31: <ph id="change_20130731_jm">Added mapping to
            <targetxml>legisinfo:statustext</targetxml> when topic is considered-legislation</ph>.
        Previously there was one rule mapping <sourcexml>cttr:use-group/cttr:use</sourcexml> to
          <targetxml>cttr:usagegroup/cttr:usage</targetxml>. That rule is unchanged but now applies
        only to "consideredcases". The new mapping is specifically for "consideredleg".</p>
      <p>2013-05-09: <ph id="change_20130509_jm">Added rule for
            <sourcexml>cttr:use/@signal</sourcexml> when attribute absent or value is
          "citation"</ph>.</p>
      <p>2013-04-08: <ph id="change_20130408_jm"><sourcexml>cttr:use-group</sourcexml> - Removed
          reference to pending CR. <targetxml>cttr:usagegroup</targetxml> now allowed as child of
            <targetxml>cttr:consideredlegis</targetxml></ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_cttr.use-group_cttr.use.dita  -->
<!--	<xsl:message>UK11_DA_cttr.use-group_cttr.use.xsl requires manual development!</xsl:message> -->


	<xsl:template match="source_cttr:use-group">
		<cttr:usagegroup>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:usagegroup>
	</xsl:template>
  
  <xsl:template match="source_cttr:use-group[parent::source_cttr:annot/parent::source_cttr:annotations/@annotationtype='consideredleg']">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

	<xsl:template match="source_cttr:use[@signal][normalize-space(.)='']">
		<cttr:usage>
		  <xsl:apply-templates select="@*"/>
		  <text></text>
		</cttr:usage>
	</xsl:template>
  
  <xsl:template match="source_cttr:use[@signal][not(normalize-space(.)='')]">
    <cttr:usage>
      <xsl:apply-templates select="@*"/>
      <xsl:choose>
        <xsl:when test="text">
          <xsl:apply-templates select="node()"/>
        </xsl:when>
        <xsl:otherwise>
          <text>
            <xsl:apply-templates select="node()"/>
          </text>
        </xsl:otherwise>
      </xsl:choose>
    </cttr:usage>
  </xsl:template>
  
  <xsl:template match="source_cttr:use">   
      <xsl:element name="legisinfo:status">
        <xsl:attribute name="statuscode">
          <xsl:apply-templates select="parent::source_cttr:use-group/parent::source_cttr:annot/@leg-signal"/>
        </xsl:attribute>
        <xsl:element name="legisinfo:statustext">
          <xsl:apply-templates select="node()"/>
        </xsl:element>
      </xsl:element>    
  </xsl:template>

  <xsl:template match="source_cttr:use/@signal">
		<xsl:attribute name="usagetype">
		  <xsl:choose>
		    <xsl:when test=".=('cautionary','negative','neutral','positive')">
		      <xsl:value-of select="."/>    
		    </xsl:when>
		    <xsl:otherwise>
		      <xsl:text>unspecified</xsl:text>
		    </xsl:otherwise>
		  </xsl:choose>
		  
		</xsl:attribute>

	</xsl:template>
 



</xsl:stylesheet>