<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita dig docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_dig_level.dita">
  <title>dig:level <lnpid>id-CA11-14810</lnpid></title>

  <body>
      <note><p><sourcexml>dig:level</sourcexml> is a container element that does not need to be carried forward in the conversion. However, all
          content must be converted such that the order of elements is maintained whenever possible. Please see the
          Maintain the Order of Elements Whenever Possible section for more information.</p></note>

    <p><sourcexml>dig:info</sourcexml> elements and its child elements conversion based on the DPSI
            value.</p>
      <section>
          <title>Scenario 1: When source documents contains <sourcexml>docinfo:metaitem name="QLDB"
                    value="icip"</sourcexml> or
                    <sourcexml>&lt;docinfo:subtype&gt;icip&lt;/docinfo:subtype&gt;</sourcexml> then conversion should follow below below instruction:</title>
        <p>When <sourcexml>dig:info</sourcexml> is having multuple records in below mentioned sequence then conversion need to create seperate <targetxml>biblio:entry</targetxml> for each record and follow the below mentioned mapping for each elements.</p>
        <p><b>Sequence of elements:</b></p>
        <ul>
            <li><sourcexml>contrib</sourcexml>, it will occur once in a single record.</li>
            <li><sourcexml>publication-original</sourcexml>, it will occur once in a single record.</li>
            <li><sourcexml>subjectmatter-cite</sourcexml>, it can occur multiple times in a single record.</li>
            <li><sourcexml>dig:type</sourcexml>, it will occur once in a single record.</li>
        </ul>
          
          <note><p>Conversion should not create seperate <targetxml>biblio:entry</targetxml> for consecutive <sourcexml>subjectmatter-cite</sourcexml> elements.</p></note>
        
        <p>When <sourcexml>bodytext/glp:note</sourcexml> is a sibling of
                    <sourcexml>dig:info</sourcexml> then conversion needs to wrap them in previous
                    <targetxml>biblio:entry</targetxml>. Please follow the below example for more
                clarification.</p>
        
        <pre>&lt;dig:info&gt;
    &lt;contrib contribtype="author" searchtype="AUTHOR"&gt; Bourque, Serge&lt;/contrib&gt;
    &lt;publication-original searchtype="BOOK-TITLE"&gt; "Droit de la concurrence et
        propriété intellectuelle"&lt;/publication-original&gt;
    &lt;subjectmatter-cite&gt; (Mai 2000), 12(3) Cahiers Prop. Intel.
        909&lt;/subjectmatter-cite&gt;
    &lt;contrib contribtype="author" searchtype="AUTHOR"&gt; Bromstein, Reuben
        M.&lt;/contrib&gt;
    &lt;publication-original searchtype="BOOK-TITLE"&gt; "Competition Act and
        Industrial Property, The"&lt;/publication-original&gt;
    &lt;subjectmatter-cite&gt; (May 1972), vol. 30, series 7 P.T.I.C. Bull.
        152&lt;/subjectmatter-cite&gt;
    &lt;dig:type&gt; Article&lt;/dig:type&gt;
    &lt;contrib contribtype="author" searchtype="AUTHOR"&gt; Fox, Harold G.&lt;/contrib&gt;
    &lt;publication-original searchtype="BOOK-TITLE"&gt; "Law of Patents: 1948-1958,
        The"&lt;/publication-original&gt;
    &lt;subjectmatter-cite&gt; (1958), 29 C.P.R. (Sec. I) 49&lt;/subjectmatter-cite&gt;
    &lt;dig:type&gt; Article&lt;/dig:type&gt;
&lt;/dig:info&gt;
&lt;bodytext&gt;
    &lt;glp:note notetype="other"&gt;
        &lt;p&gt;
            &lt;text&gt; Discusses cases relating to compulsory licences in non-food
                and medicine field; inspection ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/bodytext&gt;
        
<b class="+ topic/ph hi-d/b ">Becomes</b>
        
&lt;biblio:entry&gt;
    &lt;byline&gt;
        &lt;person:contributor contributor-type="author"&gt;Bourque, Serge&lt;/person:contributor&gt;
    &lt;/byline&gt;
    &lt;biblio:entrytitle&gt;"Droit de la concurrence et propriété intellectuelle"&lt;/biblio:entrytitle&gt;
    &lt;biblio:relevantinfo&gt;
        &lt;ref:relatedrefs referencetype="CITE"&gt;
            &lt;ref:referenceitem&gt;
                &lt;textitem&gt; (Mai 2000), 12(3) Cahiers Prop. Intel. 909&lt;/textitem&gt;
            &lt;/ref:referenceitem&gt;
        &lt;/ref:relatedrefs&gt;
    &lt;/biblio:relevantinfo&gt;
&lt;/biblio:entry&gt;
&lt;biblio:entry&gt;
    &lt;byline&gt;
        &lt;person:contributor contributor-type="author"&gt; Bromstein, Reuben M.&lt;/person:contributor&gt;
    &lt;/byline&gt;
    &lt;biblio:entrytitle&gt;"Competition Act and Industrial Property, The"&lt;/biblio:entrytitle&gt;
    &lt;biblio:relevantinfo&gt;
        &lt;ref:relatedrefs referencetype="CITE"&gt;
            &lt;ref:referenceitem&gt;
                &lt;textitem&gt; (May 1972), vol. 30, series 7 P.T.I.C. Bull. 152&lt;/textitem&gt;
            &lt;/ref:referenceitem&gt;
        &lt;/ref:relatedrefs&gt;
        &lt;classify:classification classscheme="digest.type"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname namescheme="CA.index.docType"&gt;Article&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/biblio:relevantinfo&gt;
&lt;/biblio:entry&gt;
&lt;biblio:entry&gt;
    &lt;byline&gt;
        &lt;person:contributor contributor-type="author"&gt; Fox, Harold G.&lt;/person:contributor&gt;
    &lt;/byline&gt;
    &lt;biblio:entrytitle&gt; "Law of Patents: 1948-1958, The"&lt;/biblio:entrytitle&gt;
    &lt;biblio:relevantinfo&gt;
        &lt;ref:relatedrefs referencetype="CITE"&gt;
            &lt;ref:referenceitem&gt;
                &lt;textitem&gt; (1958), 29 C.P.R. (Sec. I) 49&lt;/textitem&gt;
            &lt;/ref:referenceitem&gt;
        &lt;/ref:relatedrefs&gt;
        &lt;classify:classification classscheme="digest.type"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname namescheme="CA.index.docType"&gt;Article&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/biblio:relevantinfo&gt;
    &lt;abstract&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; Discusses cases relating to compulsory licences in non-food and medicine field;
                    inspection ...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/abstract&gt;
&lt;/biblio:entry&gt;
</pre>
        
      </section>
      <section>
          <title>Scenario 2: When source documents contains <sourcexml>docinfo:metaitem name="QLDB"
                    value="iclj"</sourcexml> or <sourcexml>docinfo:metaitem name="QLDB"
                    value="iclb"</sourcexml> or <sourcexml>docinfo:metaitem name="QLDB"
                    value="clsi"</sourcexml> or <sourcexml>docinfo:metaitem name="QLDB"
                    value="rdna"</sourcexml>
                <sourcexml>&lt;docinfo:subtype&gt;iclj&lt;/docinfo:subtype&gt;</sourcexml> or
                    <sourcexml>&lt;docinfo:subtype&gt;iclb&lt;/docinfo:subtype&gt;</sourcexml> or
                    <sourcexml>&lt;docinfo:subtype&gt;clsi&lt;/docinfo:subtype&gt;</sourcexml> or
                    <sourcexml>&lt;docinfo:subtype&gt;rdna&lt;/docinfo:subtype&gt;</sourcexml> then
                conversion should follow below below instruction:</title>
          
          <p><sourcexml>dig:info</sourcexml> becomes <targetxml>biblio:entry</targetxml>.</p>
          
          <pre>
&lt;dig:info&gt;
    ...
    &lt;publication-original searchtype="BOOK-TITLE"&gt;Science &amp;amp; Technology:  Mitochondrial DNA - The Defence DNA? (part One) &lt;/publication-original&gt;
    &lt;contrib contribtype="author" searchtype="AUTHOR"&gt;Joseph F. Kenkel &lt;/contrib&gt;
    &lt;subjectmatter-cite&gt;(2000) 21 For The Defence: Criminal Lawyers'                Association Newsletter 39 &lt;/subjectmatter-cite&gt;
&lt;/dig:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:entry&gt;
    &lt;biblio:entrytitle&gt;Science &amp;amp; Technology: Mitochondrial DNA - The Defence DNA? (part One) &lt;/biblio:entrytitle&gt;
    &lt;byline&gt;
        &lt;person:contributor contributor-type="author"&gt;Joseph F. Kenkel &lt;/person:contributor&gt;
    &lt;/byline&gt;
    &lt;biblio:relevantinfo&gt;
        &lt;ref:relatedrefs referencetype="CITE"&gt;
            &lt;ref:referenceitem&gt;
                &lt;textitem&gt;(2000) 21 For The Defence: Criminal Lawyers' Association Newsletter 39
                &lt;/textitem&gt;
            &lt;/ref:referenceitem&gt;
        &lt;/ref:relatedrefs&gt;
    &lt;/biblio:relevantinfo&gt;
&lt;/biblio:entry&gt;
</pre>          
          
      </section>
     <section>
         <title>contrib</title>
         <p><sourcexml>dig:level/dig:item/dig:info/contrib</sourcexml> becomes <targetxml>biblio:body/biblio:entry/byline/person:contributor</targetxml>.</p>
         
         <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml> becomes
             <targetxml class="+ topic/keyword xml-d/targetxml ">@contributor-type</targetxml></p>
         
         <p>If <sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml> is not present
             in the source data then conversion need to create <targetxml class="+ topic/keyword xml-d/targetxml ">@contributor-type="undetermined"</targetxml> in
             <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml></p>
         
         <pre>&lt;dig:body&gt;
    &lt;dig:level&gt;
        &lt;dig:item&gt;
            &lt;dig:info&gt;
                &lt;contrib contribtype="author" searchtype="AUTHOR"&gt; Board of Trade Departmental
                    Committee on the British Patent System (1944)&lt;/contrib&gt;
            &lt;/dig:info&gt;
        &lt;/dig:item&gt;
    &lt;/dig:level&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;Board of Trade Departmental Committee on
                the British Patent System (1944)&lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
     </section>
      <section>
          <title>publication-original</title>
      <p><sourcexml>dig:level/dig:item/dig:info/publication-original</sourcexml> becomes <targetxml>biblio:body/biblio:entry/biblio:entrytitle</targetxml>.</p>
          
      <pre>&lt;dig:body&gt;
    ...
    &lt;dig:level&gt;
            &lt;dig:item&gt;
                &lt;dig:info&gt;
                    &lt;publication-original searchtype="BOOK-TITLE"&gt; "The British Patent System:
                        Compulsory License Provisions"&lt;/publication-original&gt;
                    &lt;subjectmatter-cite&gt; (1945), 4 C.P.R. (Sec. I) 30&lt;/subjectmatter-cite&gt;
                    &lt;dig:type&gt; Practice note&lt;/dig:type&gt;
                    ...
                &lt;/dig:info&gt;
            &lt;/dig:item&gt;
        &lt;/dig:level&gt;
    &lt;/dig:collection&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:entrytitle&gt;"The British Patent System: Compulsory License
            Provisions"&lt;/biblio:entrytitle&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;ref:relatedrefs&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt; (1945), 4 C.P.R. (Sec. I) 30&lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
            &lt;classify:classification classscheme="digest.type"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname namescheme="CA.index.docType"&gt; Practice note&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>
      </section>
      
      <section>
          <title>subjectmatter-cite</title>
          <p><sourcexml>dig:level/dig:item/dig:info/subjectmatter-cite</sourcexml> becomes
                    <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/ref:relatedrefs/ref:referenceitem/textitem</targetxml>.</p>
          <p>Conversion should generate <targetxml>@referencetype="CITE"</targetxml> attribute
              in <targetxml>ref:relatedrefs</targetxml> element.</p>
          <pre>&lt;dig:body&gt;
...
    &lt;dig:level&gt;
            &lt;dig:item&gt;
                &lt;dig:info&gt;
                    &lt;publication-original searchtype="BOOK-TITLE"&gt; "The British Patent System:
                        Compulsory License Provisions"&lt;/publication-original&gt;
                    &lt;subjectmatter-cite&gt; (1945), 4 C.P.R. (Sec. I) 30&lt;/subjectmatter-cite&gt;
                    &lt;dig:type&gt; Practice note&lt;/dig:type&gt;
                    ...
                &lt;/dig:info&gt;
            &lt;/dig:item&gt;
        &lt;/dig:level&gt;
    &lt;/dig:collection&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:entrytitle&gt;"The British Patent System: Compulsory License
            Provisions"&lt;/biblio:entrytitle&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;ref:relatedrefs referencetype="CITE"&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt; (1945), 4 C.P.R. (Sec. I) 30&lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
            &lt;classify:classification classscheme="digest.type"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname namescheme="CA.index.docType"&gt; Practice note&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
    ...
    &lt;/biblio:body&gt;</pre>
          
          <note><p><sourcexml>subjectmatter-cite</sourcexml> can occur multiple times in input documents and each
                    occurence of <sourcexml>subjectmatter-cite</sourcexml> becomes
                        <targetxml>biblio:relevantinfo/ref:relatedrefs/ref:referenceitem/textitem</targetxml></p></note>
      </section>
      
      <section>
          <title>dig:type</title>
          <p><sourcexml>dig:level/dig:item/dig:info/dig:type</sourcexml> becomes <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
          <p>Conversion should generate <targetxml>@classscheme="digest.type"</targetxml> attribute
                in <targetxml>classify:classification</targetxml> element.</p>
          <pre>&lt;dig:body&gt;
    &lt;dig:collection&gt;
        &lt;dig:level&gt;
            &lt;dig:item&gt;
                &lt;dig:info&gt;
                    ...
                    &lt;dig:type&gt; Practice note&lt;/dig:type&gt;
                &lt;/dig:info&gt;
            &lt;/dig:item&gt;
        &lt;/dig:level&gt;
    &lt;/dig:collection&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        ...
        &lt;biblio:relevantinfo&gt;
            &lt;classify:classification classscheme="digest.type"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname namescheme="CA.index.docType"&gt; Practice
                            note&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
      </section>
      
      <note><p>Conversion need to supress <sourcexml>dig:item</sourcexml> and <sourcexml>dig:info</sourcexml> from the conversion.</p></note>

      <note><p>When one or more <sourcexml>dig:info</sourcexml> occurs as sibbling in the input documents then conversion need to create seperate <targetxml>biblio:entry</targetxml> and handle the child elements as mentioned above.</p></note>

      <section>
          <title>Changes</title>
          <p>2014-08-05: <ph id="change_20140805_PS">Updated snippet for <sourcexml>dig:level/dig:item/dig:info/dig:type</sourcexml>.</ph></p>
          <p>2014-08-01: <ph id="change_20140801_PS">Added <targetxml>@classscheme</targetxml> attribute in <targetxml>classify:classification</targetxml> and <targetxml>@referencetype</targetxml> attribute in <targetxml>ref:relatedrefs</targetxml>, R4.5 Issue # 1779 &amp; 1780, this immediately applies to CA11.</ph></p>
          <p>2013-10-18: <ph id="change_20131018_PS">Added Instruction and example for conversion of <sourcexml>dig:info</sourcexml> element based on DPSI value.</ph></p>
          <p>2013-05-28: <ph id="change_20130528_PS">Removed note for two consecutive <targetxml>biblio:entry</targetxml>.</ph></p>
          
      </section>
 </body>
	</dita:topic>

    <xsl:variable name="name" select="/DIGESTDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem/@name"/>
    <xsl:variable name="value" select="/DIGESTDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem/@value"/>
    <xsl:variable name="subtype" select="/DIGESTDOC/docinfo/docinfo:subtype"/>
    <xsl:variable name="title" select="/DIGESTDOC/docinfo/docinfo:hier/docinfo:hierlev[@role='ancestor']/heading/title"/>
    <xsl:template match="dig:level|dig:item">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

    <xsl:template match="contrib">
        <byline>
            <person:contributor>
                <xsl:apply-templates select="@*|node()"/>
            </person:contributor>
        </byline>
    </xsl:template>
    
    <xsl:template match="contrib/@contribtype">
        <xsl:attribute name="contributor-type">
        <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="contrib/@searchtype"/>
    <xsl:template match="publication-original">
        <biblio:entrytitle>
            <xsl:apply-templates select="node()"/>
        </biblio:entrytitle>
    </xsl:template>
    
    <xsl:template match="subjectmatter-cite">
        <biblio:relevantinfo>
            <ref:relatedrefs referencetype="CITE">
                <ref:referenceitem>
                    <textitem>
                        <xsl:apply-templates select="@*|node()"/>
                    </textitem>
                </ref:referenceitem>
            </ref:relatedrefs>
            <xsl:if test="$subtype='rdna'">
                <xsl:if test="$title[contains(.,'RDNA.05 - Books') or contains(.,'RDNA.10 - Articles') or contains(.,'RDNA.15 - Internet Sites') or contains(.,'RDNA.20 - Continuing Legal Education')]">
                    <classify:classification>
                        <classify:classitem>
                            <classify:classitem-identifier>
                                <classify:classcode>
                                    <xsl:value-of select="$title"/>
                                </classify:classcode>
                            </classify:classitem-identifier>
                        </classify:classitem>
                    </classify:classification> 
                </xsl:if>
            </xsl:if>
            <xsl:apply-templates select="following-sibling::dig:type"/>
        </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="docinfo:hier/docinfo:hierlev[@role='ancestor']/heading/title[contains(.,'RDNA.05 - Books') or contains(.,'RDNA.10 - Articles') or contains(.,'RDNA.15 - Internet Sites') or contains(.,'RDNA.20 - Continuing Legal Education')]" priority="25" mode="head">
            <biblio:relevantinfo>
            <classify:classification>
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classcode>
                            <xsl:value-of select="."/>
                        </classify:classcode>
                    </classify:classitem-identifier>
                </classify:classitem>
            </classify:classification> 
            </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="dig:type">
        <classify:classification classscheme="digest.type">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classname namescheme="CA.index.docType">
                        <xsl:apply-templates select="@*|node()"/>
                    </classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </xsl:template>
    
    <xsl:template match="dig:info">
        <xsl:if test="($name='QLDB') and ($value='iclj' or $value='iclb' or $value='clsi' or $value='rdna' or $value='icip') or ($subtype='icip' or $subtype='rdna' or $subtype='clsi' or $subtype='iclb')">   
         <biblio:entry>
            <xsl:if test="not(descendant::subjectmatter-cite)">
                <xsl:apply-templates select="/DIGESTDOC/docinfo/docinfo:hier/docinfo:hierlev[@role='ancestor']/heading/title[contains(.,'RDNA.05 - Books') or contains(.,'RDNA.10 - Articles') or contains(.,'RDNA.15 - Internet Sites') or contains(.,'RDNA.20 - Continuing Legal Education')]" mode="head"/>
            </xsl:if>
             <xsl:apply-templates select="@*|node() except (pubdate,publication,dig:subject,dig:type[preceding-sibling::subjectmatter-cite])"/>
            <xsl:apply-templates select="/DIGESTDOC/dig:body/bodytext/p/text/verbatim[contains(.,'DATE/PLACE:')]"/>
            <xsl:apply-templates select="following-sibling::bodytext[not(descendant::table)]"/>
         </biblio:entry>
        </xsl:if>
    </xsl:template> 
</xsl:stylesheet>

