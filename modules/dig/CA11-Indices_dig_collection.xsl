<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_dig_collection.dita">
  <title>dig:collection <lnpid>id-CA11-14809</lnpid></title>

  <body>
     
      <note><p><sourcexml>dig:collection</sourcexml> is a container element that does not need to be carried forward in the conversion. However, all
          content must be converted such that the order of elements is maintained whenever possible. Please see the
          Maintain the Order of Elements Whenever Possible section for more information.</p></note>
      
      <p>The Conversion of child elements of <sourcexml>dig:collection</sourcexml> is based on the following scenarios:</p>
      
      <p>For the followings scenarios conversion need to suppress <sourcexml>dig:info</sourcexml>.</p>
      <section>
          <title>Scenario 1</title>
          <p><sourcexml>dig:collection/dig:info/publication</sourcexml> becomes <targetxml>/doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
          
          <pre>&lt;dig:body&gt;
    &lt;dig:info&gt;
        &lt;publication&gt; Index to Canadian Literature on Intellectual Property (2003)&lt;/publication&gt;
    &lt;/dig:info&gt;
&lt;/dig:body&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;Index to Canadian Literature on Intellectual Property
            (2003)&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;              
          </pre>
          
          <note><b>Conversion need to create the above target in <targetxml>doc:metadata</targetxml>.</b></note>
      </section>
      <section>
          <title>Scenario 2</title>
          <p><sourcexml>dig:collection/dig:info/dig:subject</sourcexml> becomes <targetxml>biblio:head/title</targetxml>.</p>
          <pre xml:space="preserve" class="- topic/pre ">
&lt;dig:collection&gt;
    &lt;dig:info&gt;
        &lt;dig:subject&gt; Patents - Abuse of exclusive rights&lt;/dig:subject&gt;
    &lt;/dig:info&gt;
&lt;/dig:collection&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:head&gt;
    &lt;title&gt;Patents - Abuse of exclusive rights&lt;/title&gt;
&lt;/biblio:head&gt;
         </pre>
          <note><b>Conversion need to create the above target in <targetxml>biblio:head</targetxml>.</b></note>
      </section>
</body>
	</dita:topic>


<xsl:template match="dig:collection">
    <xsl:apply-templates select="@*|node() except dig:info"/>
</xsl:template>
	
	<xsl:template match="dig:info/publication">
		<pubinfo:publicationname>
			<xsl:apply-templates select="@*|node()"/>
			</pubinfo:publicationname>
	</xsl:template>
	
	<xsl:template match="dig:subject">
		<title>
			<xsl:apply-templates select="@*|node()"/>
		</title>
	</xsl:template>
	

</xsl:stylesheet>