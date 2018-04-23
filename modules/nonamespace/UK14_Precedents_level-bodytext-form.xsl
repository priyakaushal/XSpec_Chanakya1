<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK14_Precedents_level-bodytext-form">
		<title>level, bodytext, and form <lnpid>id-UK14-30216</lnpid></title>
		<body> 
			<section><p>
				<sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> and attribute
				<sourcexml>level/@leveltype</sourcexml> will become
				<targetxml>seclaw:level/@leveltype</targetxml>. </p>
				<p>Child <sourcexml>bodytext</sourcexml> becomes <targetxml>seclaw:bodytext</targetxml>.</p></section>
			
			<note>If source document comes with these scenarios : <ol id="ol_hwg_wpy_g1b">
				<li><sourcexml>level/bodytext/form</sourcexml> means
					<b>i.e.</b><sourcexml>level[@leveltype="precedent|form"]/bodytext/form</sourcexml>
					becomes <targetxml>form:form</targetxml>.</li>
				<li><sourcexml>level/level/bodytext/form</sourcexml> means <b>i.e.</b>
					<sourcexml>level[@leveltype]/level[@leveltype="precedent|form"]/bodytext/form</sourcexml>
					becomes <targetxml>seclaw:level/seclaw:bodytext/form:form</targetxml>
				</li>
			</ol><ul id="ul_t1q_4ny_g1b">
				<li>Regarding <sourcexml>@leveltype</sourcexml>, see below: "Rules about
					level[@leveltype]".</li>
				<li>Optional attribute <sourcexml>form[@id]</sourcexml> may be present. The attribute is
					suppressed for target.</li>
			</ul><p>And also create <targetxml>form:info/classify:classification</targetxml> as follows
				(hardcoded value):
				<targetxml>form:info/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode[@normval="precedent"]</targetxml>
			</p>
				
				
				<b>Rules about
					level[@leveltype]</b><p><sourcexml>level[@leveltype="precedent"]</sourcexml> or
						<sourcexml>level[@leveltype="form"]</sourcexml> are expected and the conversion to
						<targetxml>form:form</targetxml> is applied, as described above.</p><p>Treat other
							occurrences as follows:</p><ul>
								<li><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> is data error. The
									element and all its children should be suppressed.</li>
								<li><sourcexml>level</sourcexml> without <sourcexml>@leveltype</sourcexml> is not expected.
									Report any occurrences.</li>
							</ul></note>
			<pre>
        <b>EXAMPLE 1: Conversion to <targetxml>form:form</targetxml></b>
            
<b><i>Source XML</i></b>

&lt;COMMENTARYDOC&gt;
  &lt;comm:body&gt;
    &lt;level leveltype="precedent"&gt;  &lt;!-- or &lt;level leveltype="form"&gt; --&gt;
      &lt;bodytext&gt;
        &lt;form id="precedent"&gt;  &lt;!-- attribute is optional and is suppressed for target --&gt;
          ...
        &lt;/form&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:seclaw&gt;
  &lt;seclaw:body&gt;
    &lt;form:form&gt;
      &lt;form:info&gt;
        &lt;classify:classification&gt;
          &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
              &lt;classify:classcode normval="precedent"/&gt;
            &lt;/classify:classitem-identifier&gt;
          &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
      &lt;/form:info&gt;
      ...
    &lt;/form:form&gt;
  &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

        </pre>
			<pre>
      <b>EXAMPLE 2: <sourcexml>level[@leveltype]/level[@leveltype="precedent|form"]/bodytext/form</sourcexml>  becomes <targetxml>seclaw:level/seclaw:bodytext/form:form</targetxml></b>
            
<b><i>Source XML</i></b>
&lt;comm:body>
    &lt;level leveltype="section">
        &lt;heading>
            &lt;title>Standard Provisions, 2nd Edition&lt;/title>
        &lt;/heading>
        &lt;bodytext>
            &lt;p>
                &lt;text>The Standard Provisions were originally drafted by James Kessler QC and issued by the Society of Trust and Estate Practitioners in 1992. The 2nd edition was published on 31 October 2012.&lt;/text>
            &lt;/p>
        &lt;/bodytext>
        &lt;level leveltype="precedent">
            &lt;bodytext>
                &lt;form id="precedent">
                    .....
                &lt;/form>
            &lt;/bodytext>
        &lt;/level>
    &lt;/level>
&lt;/comm:body>
<b><i>Target XML</i></b>

&lt;seclaw:body>
    &lt;seclaw:level leveltype="section">
        &lt;heading>
            &lt;title>Standard Provisions, 2nd Edition&lt;/title>
        &lt;/heading>
        &lt;seclaw:bodytext>
            &lt;p>
                &lt;text>The Standard Provisions were originally drafted by James Kessler QC and issued by the Society of Trust and Estate Practitioners in 1992. The 2nd edition was published on 31 October 2012.&lt;/text>
            &lt;/p>
            &lt;form:form>
                &lt;form:info>
                    &lt;classify:classification>
                        &lt;classify:classitem>
                            &lt;classify:classitem-identifier>
                                &lt;classify:classcode normval="precedent"/>
                            &lt;/classify:classitem-identifier>
                        &lt;/classify:classitem>
                    &lt;/classify:classification>
                &lt;/form:info>
                ...
            &lt;/form:form>
       &lt;/seclaw:bodytext>
    &lt;/seclaw:level>
&lt;/seclaw:body>

                </pre>
			
			<pre>
        <b>EXAMPLE 3: <sourcexml>level[@leveltype="related-content-pod"]</sourcexml> suppressed</b>
            
<b><i>Source XML</i></b>&lt;COMMENTARYDOC>
  &lt;comm:body>
    &lt;level leveltype="related-content-pod">
      &lt;bodytext>
        &lt;references>
          &lt;heading>
            &lt;title>...&lt;/title>
          &lt;/heading>
          &lt;p>
             &lt;text>...&lt;/text>
          &lt;/p>
        &lt;/references>
      &lt;/bodytext>
    &lt;/level>
  &lt;/comm:body>
&lt;/COMMENTARYDOC>
				
				
<b><i>Target XML</i></b>
				
(No conversion)

		   </pre>
    <section>
      <title>Changes</title>
      <p>2017-06-19: <ph id="change_20170619_RS">Updated the instructions and example 2 of
            <sourcexml>level[@leveltype]/level[@leveltype="precedent|form"]/bodytext/form</sourcexml>.
          Webstar <b>#6804011</b>
        </ph></p>
      <p>2016-12-21: <ph id="change_20161221_jm">Expanded rule for
            <sourcexml>level[@leveltype]</sourcexml>, previously mapped only when value
            <sourcexml>"precedent"</sourcexml>, now also when value <sourcexml>"form"</sourcexml>.
          Added rule to suppress optional attribute <sourcexml>form[@id]</sourcexml>. The changes
          reflect markup in precedents derived from UK12-Commentary sources which have been added to
          the UK14-Precedents stream. No change to target xpaths.</ph></p>
    </section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_level-bodytext-form.dita  -->
	<!--<xsl:message>UK14_Precedents_level-bodytext-form.xsl requires manual development!</xsl:message> -->

	<!--	<xsl:template match="level">

		<!-\-  Original Target XPath:  form:form   -\->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>-->

	<!--	<xsl:template match="bodytext">

		<!-\-  Original Target XPath:  form:form   -\->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>-->

	<!--	<xsl:template match="level/bodytext/form">

		<!-\-  Original Target XPath:  form:form   -\->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>-->
  
  <xsl:template match="level[@leveltype='section' or @leveltype='part' or @leveltype='chapter' or @leveltype='subsection' or @leveltype='supplement' or (@leveltype='appendix')]" priority="2">
    <seclaw:level>
      <xsl:attribute name="leveltype">
        <xsl:value-of select="@leveltype"/>
      </xsl:attribute>
      <xsl:apply-templates select="@* | node() except descendant::form[parent::bodytext[parent::level[@leveltype='precedent' or @leveltype='form' and (preceding-sibling::*[1][self::level])]]]"/>
    </seclaw:level>
  </xsl:template>
  

  <xsl:template match="level[(@leveltype='section') or (@leveltype='subsection') or (@leveltype='chapter') or (@leveltype='part') or (@leveltype='supplement') or (@leveltype='appendix')]/bodytext" priority="2">
		<!--  Original Target XPath:  form:form   -->
	  <seclaw:bodytext>
		<xsl:apply-templates select="@* | node()"/>
	  </seclaw:bodytext>
	</xsl:template>
  
  <xsl:template match="note[@notetype='advice']">
    <note>
      <xsl:apply-templates select="@*"/>
      <bodytext>
      <xsl:apply-templates select="node()"/>
      </bodytext>
    </note>
  </xsl:template>
  
      
      <xsl:template match="level[@leveltype='precedent'][preceding-sibling::bodytext]" priority="5">
        <!-- WPK if the bodytext of the context level already occured, then a form:form cannot be created without a level.  
          (it must occur within a bodytext and a second bodytext is not valid)
          so an unclassified level is created in order to place the form:form within a bodytext -->
        <seclaw:level leveltype="unclassified">
          <seclaw:bodytext>
              <xsl:apply-templates select="node()"/>
          </seclaw:bodytext>
        </seclaw:level>
      </xsl:template>
      
      
      
  <xsl:template match="level[not(@leveltype='section') and not(@leveltype='subsection') and not(@leveltype='chapter') and  not(@leveltype='supplement') and not(@leveltype='part') and not(@leveltype='appendix')]" priority="2">
    <!--  Original Target XPath:  form:form   -->
    <xsl:apply-templates select="@* | node() except descendant::form[parent::bodytext[parent::level[(@leveltype='precedent' or @leveltype='form') and (preceding-sibling::*[1][self::level])]]]"/>
  </xsl:template>
  
  <xsl:template match="bodytext[parent::level[not(@leveltype='section') and not(@leveltype='subsection') and not(@leveltype='chapter') and  not(@leveltype='supplement') and not(@leveltype='part') and not(@leveltype='appendix')]]" priority="2">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

  <xsl:template match="form[parent::bodytext[parent::level[(@leveltype='precedent' or @leveltype='form') 
    and (not(preceding-sibling::*[1][self::level[@leveltype='precedent' or @leveltype='form']])) 
    and parent::level[@leveltype!='precedent']]]]">
	      <seclaw:bodytext>
	        <form:form>
	          <xsl:apply-templates select="node()"/>
	        </form:form>
	        <xsl:apply-templates select="following::form[parent::bodytext[parent::level[@leveltype='precedent' or @leveltype='form' and (preceding-sibling::*[1][self::level])]]]"/>
	      </seclaw:bodytext>
	</xsl:template>
  
  <xsl:template match="form[parent::bodytext[parent::level[@leveltype='precedent' or @leveltype='form' and (preceding-sibling::*[1][self::level])]]]" priority="2">
      <form:form>
        <xsl:apply-templates select="node()"/>
      </form:form>
  </xsl:template>
  
  <xsl:template match="form[parent::bodytext[parent::level[(@leveltype='precedent' or @leveltype='form') and parent::comm:body]]]">
    <form:form>
      <xsl:apply-templates select="node()"/>
    </form:form>
  </xsl:template>
  
	
	<xsl:template match="level/@leveltype">

	</xsl:template>
<!--
	<xsl:template match="level/@leveltype">

		<xsl:attribute name="leveltype">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>-->
<!--
	<xsl:template match="form[@id]">

		<!-\-  Original Target XPath:  form:info/classify:classification   -\->
		<form:info>
			<classify:classification
				xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</form:info>

	</xsl:template>-->
	
	<xsl:template match="level[@leveltype = 'related-content-pod']"/> 
  
  <xsl:template match="p[parent::level][preceding-sibling::*[1][self::heading]]" priority="100"/>
  
  <xsl:template match="pnum[@inline='true']" priority="100"/>
  
  <xsl:template match="credit" priority="100"/>

</xsl:stylesheet>
