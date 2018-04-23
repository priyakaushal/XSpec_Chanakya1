<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtinfo">
    <title>case:courtinfo <lnpid>id-MY10-18014</lnpid></title>
    <body>
        <section> The contents of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> are split into <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml> and
                <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:judges</targetxml> as
            described below: <ul>
                <li>Create <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml> and populate it as follows: <ul class="- topic/ul ">
                        <li class="- topic/li "> The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>
                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
                            and create <targetxml class="+ topic/keyword xml-d/targetxml ">doc:legacy-metadata/meta/metaitem</targetxml> and the attributes
                            will be populated as <targetxml class="+ topic/keyword xml-d/targetxml ">@name="case:courtcode"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@value</targetxml> will be
                            the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>. <note class="- topic/note ">PLEASE NOTE
                                that the element <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> needs to be created only for
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml> occurring within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/case:courtinfo</sourcexml>. There is NO
                                NEED to create <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> for all other occurrences, eg.,
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo</sourcexml>. The element
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>
                                becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
                            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;...               
    &lt;case:courtcode&gt;MYHC&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;jurisinfo:courtinfo&gt;
   &lt;jurisinfo:alternatecourtcode alternatecourtcode="MYHC"/&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;...               
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="MYHC"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;                                         
</pre>
                        </li>
                            <li>Suppress <sourcexml>abbrvname</sourcexml> (contents are the same as <sourcexml>case:courtcode</sourcexml>).</li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo/case:courtname</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;
   &lt;case:courtname&gt;High Court&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;jurisinfo:courtinfo&gt;...            
    &lt;jurisinfo:courtname&gt;High Court&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;                
                  </pre>
                        </li>
                        <li class="- topic/li "><draft-comment>BRT: Deleted case where <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml>
                                is 'CTH'. also deleted creation of dc:coverage/location:state
                                (specific to AU jxs.</draft-comment>
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;NSW&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                         
</pre>
                        </li>
                    </ul>
                </li>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:caseinfo/courtcase:judges</targetxml> and the children are populated
                    as below : <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judge</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">person:judge/person:person/person:name.text</targetxml>
                        </li>
                    </ul>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judges&gt;
    &lt;case:judge&gt;CHONG SIEW FAI J&lt;/case:judge&gt;
&lt;/case:judges&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:judges&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;CHONG SIEW FAI J&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
&lt;/courtcase:judges&gt;
</pre>
                </li>

            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2013-11-13: <ph id="change_20131113_BRT">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\courtinfo.dita  -->
	<xsl:message>courtinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo   -->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="doc:legacy-metadata"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:headnote/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="abbrvname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		<jurisinfo:courtinfo>
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		<jurisinfo:courtinfo>
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

	<xsl:template match="case:judges"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/courtcase:judges   -->
		<cttr:caseinfo>
			<courtcase:judges>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  person:judge/person:person/person:name.text   -->
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates select="@* | node()"/>
				</person:name.text>
			</person:person>
		</person:judge>

	</xsl:template>

</xsl:stylesheet>