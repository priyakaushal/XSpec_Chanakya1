<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_form-clause">
    <title>form and clause <lnpid>id-UK12-29825</lnpid></title>
    <body>
        <section><p><sourcexml>form[@id]</sourcexml> becomes
                <targetxml>form:form</targetxml>.</p><p>And also create child
                    <targetxml>form:info</targetxml> as follows, with the value of
                    <sourcexml>form[@id]</sourcexml> mapped to <targetxml>@normval</targetxml> -
                    </p><p><targetxml>form:info/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode[@normval]</targetxml></p><ul>
                <li><sourcexml>frm:body</sourcexml> becomes
                        <targetxml>form:document/form:bodytext</targetxml>. Generate the following
                    attributes with hard-coded values: <targetxml>form:document[@annotated="false"
                        @official="false" @typeofdoc="unnamed"]</targetxml>.<ul>
                        <li><sourcexml>frm:divs</sourcexml> (plural) and
                                <sourcexml>frm:div</sourcexml> (singular) have same conversion. Both
                            become <targetxml>form:div/form:bodytext</targetxml>. Optional
                                <sourcexml>@divtype</sourcexml> becomes
                                <targetxml>@divtype</targetxml>.</li>
                        <li><sourcexml>clause</sourcexml> becomes
                                <targetxml>form:clause/form:bodytext</targetxml>. Optional
                                <sourcexml>@clause-type</sourcexml> becomes
                                <targetxml>@clausetype</targetxml>.</li>
                    </ul></li>
                <li>If <sourcexml>toc</sourcexml> occurs as child of <sourcexml>form</sourcexml>,
                    then <sourcexml>form/toc</sourcexml> becomes
                        <targetxml>form:form/form:prelim/toc</targetxml>.</li>
            </ul>
            <p><b>Special Rule for <targetxml>form</targetxml> namespace:</b> When target parent is
                    <targetxml>form:bodytext</targetxml>, the following map to the
                    <targetxml>form</targetxml> namespace:<ul>
                    <li><sourcexml>p/text</sourcexml> becomes
                            <targetxml>form:p/form:text</targetxml></li>
                    <li><sourcexml>l/li</sourcexml> becomes
                            <targetxml>form:list/form:listitem</targetxml></li>
                    <li><sourcexml>h</sourcexml> becomes <targetxml>form:h</targetxml></li>
                    <li><sourcexml>sigblock</sourcexml> becomes
                        <targetxml>form:sigblock</targetxml>. When target is
                            <targetxml>form:sigblock</targetxml>, children map as follows:<ul>
                            <li><sourcexml>p/text</sourcexml> becomes
                                    <targetxml>form:line</targetxml></li>
                            <li><sourcexml>p/table</sourcexml> becomes
                                <targetxml>table</targetxml>, i.e. suppress <sourcexml>p</sourcexml></li>
                        </ul></li>
                </ul></p>
            <note><targetxml>form:bodytext</targetxml> is a required child of
                    <targetxml>form:div</targetxml> and <targetxml>form:clause</targetxml>. A
                heading is allowed as a direct child of <targetxml>form:div</targetxml> and
                    <targetxml>form:clause</targetxml> but anything else is child of
                    <targetxml>form:bodytext</targetxml>. This includes nesting, for example
                    <sourcexml>clause/clause</sourcexml> becomes
                    <targetxml>form:clause/form:bodytext/form:clause/form:bodytext</targetxml>.</note>
        </section>
        <pre>
        <b>EXAMPLE</b>
            
<b><i>SOURCE XML</i></b>

&lt;form id="precedent"&gt;
    &lt;heading&gt;
        &lt;title&gt;Consultancy Agreement&lt;/title&gt;
    &lt;/heading&gt;
    &lt;toc&gt;
        &lt;heading&gt;
            &lt;title&gt;Listing of Provisions&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-entry&gt; &lt;!-- etc --&gt; &lt;/toc-entry&gt;
    &lt;/toc&gt;
    &lt;frm:body&gt;
      &lt;frm:divs&gt;
        &lt;frm:div divtype="body"&gt;
          &lt;p&gt;
              &lt;text&gt;Operative provisions:&lt;/text&gt;
          &lt;/p&gt;
          &lt;clause&gt;
              &lt;heading&gt;
                  &lt;desig value="1"&gt;&lt;designum&gt;1&lt;/designum&gt;&lt;/desig&gt;
              &lt;/heading&gt;
              &lt;p&gt;
                  &lt;text&gt;Services: The Client engages the Consultant...&lt;/text&gt;
              &lt;/p&gt;
          &lt;/clause&gt;
          &lt;clause&gt;
              &lt;heading&gt;
                  &lt;desig value="2"&gt;&lt;designum&gt;2&lt;/designum&gt;&lt;/desig&gt;
              &lt;/heading&gt;
              &lt;p&gt;
                  &lt;text&gt;Consultant’s obligations&lt;/text&gt;
              &lt;/p&gt;
              &lt;clause&gt;
                  &lt;heading&gt;
                      &lt;desig value="2.1"&gt;&lt;designum&gt;2.1&lt;/designum&gt;&lt;/desig&gt;
                  &lt;/heading&gt;
                  &lt;p&gt;
                      &lt;text&gt;During the period of this Agreement,...&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/clause&gt;
              &lt;clause&gt;
                  &lt;heading&gt;
                      &lt;desig value="2.2"&gt;&lt;designum&gt;2.2&lt;/designum&gt;&lt;/desig&gt;
                  &lt;/heading&gt;
                  &lt;p&gt;
                      &lt;text&gt;Whilst the Consultant’s method ...&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/clause&gt;
          &lt;/clause&gt;
          &lt;sigblock&gt;
              &lt;p&gt;
                  &lt;text&gt;Signature .&lt;/text&gt;
              &lt;/p&gt;
              &lt;p&gt;
                  &lt;text&gt;Date .&lt;/text&gt;
              &lt;/p&gt;
          &lt;/sigblock&gt;
        &lt;/frm:div&gt;
      &lt;/frm:divs&gt;
    &lt;/frm:body&gt;
&lt;/form&gt;

 
<b><i>TARGET XML</i></b>

&lt;form:form&gt;
  &lt;heading&gt;
      &lt;title&gt;Consultancy Agreement&lt;/title&gt;
  &lt;/heading&gt;
  &lt;form:info&gt;
      &lt;classify:classification&gt;
          &lt;classify:classitem&gt;
              &lt;classify:classitem-identifier&gt;
                  &lt;classify:classcode normval="precedent"/&gt;
              &lt;/classify:classitem-identifier&gt;
          &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt;
  &lt;/form:info&gt;
  &lt;form:prelim&gt;
      &lt;toc&gt;
          &lt;heading&gt;
              &lt;title&gt;Listing of Provisions&lt;/title&gt;
          &lt;/heading&gt;
          &lt;toc-entry&gt; &lt;!-- etc --&gt; &lt;/toc-entry&gt;
      &lt;/toc&gt;
  &lt;/form:prelim&gt;
  &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
     &lt;form:bodytext&gt;
        &lt;form:div&gt;
           &lt;form:bodytext&gt;
              &lt;form:div divtype="body"&gt;
                 &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                       &lt;form:text&gt;Operative provisions:&lt;/form:text&gt;
                    &lt;/form:p&gt;
                    &lt;form:clause&gt;
                       &lt;heading&gt;
                          &lt;desig value="1"&gt;1&lt;/desig&gt;
                       &lt;/heading&gt;
                       &lt;form:bodytext&gt;
                          &lt;form:p&gt;
                             &lt;form:text&gt;Services: The Client engages the Consultant...&lt;/form:text&gt;
                          &lt;/form:p&gt;
                       &lt;/form:bodytext&gt;
                    &lt;/form:clause&gt;
                    &lt;form:clause&gt;
                       &lt;heading&gt;
                          &lt;desig value="2"&gt;2&lt;/desig&gt;
                       &lt;/heading&gt;
                       &lt;form:bodytext&gt;
                          &lt;form:p&gt;
                             &lt;form:text&gt;Consultant’s obligations&lt;/form:text&gt;
                          &lt;/form:p&gt;
                          &lt;form:clause&gt;
                             &lt;heading&gt;
                                &lt;desig value="2.1"&gt;2.1&lt;/desig&gt;
                             &lt;/heading&gt;
                             &lt;form:bodytext&gt;
                                &lt;form:p&gt;
                                   &lt;form:text&gt;During the period of this Agreement,...&lt;/form:text&gt;
                                &lt;/form:p&gt;
                             &lt;/form:bodytext&gt;
                          &lt;/form:clause&gt;
                          &lt;form:clause&gt;
                             &lt;heading&gt;
                                &lt;desig value="2.2"&gt;2.2&lt;/desig&gt;
                             &lt;/heading&gt;
                             &lt;form:bodytext&gt;
                                &lt;form:p&gt;
                                   &lt;form:text&gt;Whilst the Consultant’s method ...&lt;/form:text&gt;
                                &lt;/form:p&gt;
                             &lt;/form:bodytext&gt;
                          &lt;/form:clause&gt;
                       &lt;/form:bodytext&gt;
                    &lt;/form:clause&gt;
                    &lt;form:sigblock&gt;
                       &lt;form:line&gt;Signature .&lt;/form:line&gt;
                       &lt;form:line&gt;Date .&lt;/form:line&gt;
                    &lt;/form:sigblock&gt;
                 &lt;/form:bodytext&gt;
              &lt;/form:div&gt;
           &lt;/form:bodytext&gt;
        &lt;/form:div&gt;
     &lt;/form:bodytext&gt;
  &lt;/form:document&gt;
&lt;/form:form&gt;


        </pre>
        <section>
            <title>Changes</title>
            <p>2016-06-14: <ph id="change_20160614_jm">Rule expanded for target
                <targetxml>form:sigblock</targetxml>. Maps children
                <sourcexml>p/table</sourcexml> to <targetxml>table</targetxml>. New
                target xpath.</ph></p>
            <p>2016-01-06: <ph id="change_20160106_jm">Rule expanded for target
                        <targetxml>form:sigblock</targetxml>. Maps children
                        <sourcexml>p/text</sourcexml> to <targetxml>form:line</targetxml>. New
                    target xpath. RFA 2642.</ph></p>
            <p>2015-12-23: <ph id="change_20151223_jm">Rules expanded to cover additional forms
                    markup, including for divisions, h-tags, lists, and signature blocks. New target
                    xpaths. RFA 2626.</ph></p>
            <p>2015-05-14: <ph id="change_20150514_jm">New rule. New target xpath. Handles
                        <sourcexml>toc</sourcexml> as child of <sourcexml>form</sourcexml>. Responds
                    to new markup in recent UK12 data delivery. R4.5 Content Issue 2314.</ph></p>
            <p>2015-02-10: <ph id="change_20150210_jm">New section. New target xpaths. Includes
                    mappings to the <targetxml>form</targetxml> namespace. Responds to new markup in
                    recent UK12 data delivery. Known to occur in dpsi 02FN and 0429. R4.5 Content
                    Issues 2160 and 2161.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_form-clause.dita  -->
<!--	<xsl:message>UK12_Treatise_form-clause.xsl requires manual development!</xsl:message> -->

	<xsl:template match="form[@id]">
	    <form:formgrp>
		<form:form>
		    <xsl:apply-templates select="heading"/>
		    <form:info>
		        <classify:classification>
		            <classify:classitem>
		                <classify:classitem-identifier>
		                    <classify:classcode>
		                        <xsl:attribute name="normval">
		                            <xsl:value-of select="@id"/>
		                        </xsl:attribute>
		                    </classify:classcode>
		                </classify:classitem-identifier>
		            </classify:classitem>
		        </classify:classification>
		    </form:info>
			<xsl:apply-templates select="node() except heading"/>
		</form:form>
	    </form:formgrp>
	</xsl:template>

	<xsl:template match="frm:body">
		<form:document>
		    <xsl:attribute name="annotated" select="'false'"/>
		    <xsl:attribute name="official" select="'false'"/>
		    <xsl:attribute name="typeofdoc" select="'unnamed'"/>
			<form:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</form:bodytext>
		</form:document>
	</xsl:template>

    <xsl:template match="frm:divs|frm:div">
        <form:div>
            <xsl:apply-templates select="@*"/>
            <form:bodytext>
                <xsl:apply-templates select="node()"/>
            </form:bodytext>
        </form:div>
    </xsl:template>
    
    <xsl:template match="frm:div/hrule">
        <xsl:element name="hrule"/>
    </xsl:template>
    
    <xsl:template match="@divtype">		
        <xsl:attribute name="divtype">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

	<xsl:template match="clause">	
		<form:clause>
		    <xsl:apply-templates select="@*|heading"/>
			<form:bodytext>
				<xsl:apply-templates select="node() except heading"/>
			</form:bodytext>
		</form:clause>
	</xsl:template>

	<xsl:template match="@clause-type">
		<xsl:attribute name="clausetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

    <xsl:template match="frm:prompt">
        <form:prompt>
            <xsl:apply-templates select="@*|node()"/>
        </form:prompt>
    </xsl:template>


</xsl:stylesheet>