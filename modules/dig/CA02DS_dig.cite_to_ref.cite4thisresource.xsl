<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.cite">
    <title>dig:cite <lnpid>id-CA02DS-12829</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">dig:cite</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">seclaw:head/ref:citations</targetxml>, and create
                        <targetxml>ref:cite4thisresource</targetxml>
                    <note><sourcexml>dig:cite</sourcexml> is the proper citation (cite4thisresource)
                        and goes in the head.</note>
                    <note>If input citation marup is having <sourcexml>emph</sourcexml> inside the
                            <sourcexml>ci:content/ci:span</sourcexml> then target conversion needs
                        to removed <sourcexml>emph</sourcexml> markup in NewLexis output.</note>
                    <b class="+ topic/ph hi-d/b ">Example 1</b>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;dig:cite display-name="Numéro du résumé"&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="crref00010000" spanref="csspan00010000"&gt;
                &lt;ci:reporter value="QDSEN"/&gt;
                &lt;ci:refnum num="10000"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="csspan00010000"&gt;
                &lt;emph typestyle="bf"&gt;QSEN 10000&lt;/emph&gt;
            &lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/dig:cite&gt;
                    </pre>
                    <b class="+ topic/ph hi-d/b ">Becomes</b>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;seclaw:head&gt;
  &lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="crref00010000"&gt;
                    &lt;lnci:reporter value="QDSEN"/&gt;
                    &lt;lnci:refnum num="10000"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;QSEN 10000&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;    

                    </pre>
                    <b class="+ topic/ph hi-d/b ">Example 2</b>
                    <pre>
&lt;dig:cite display-name="Digest Number"&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="crref00625796" spanref="csspan00625796"&gt;
                &lt;ci:reporter value="LAX"/&gt;
                &lt;ci:refnum num="625796"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="csspan00625796"&gt;
                &lt;emph typestyle="bf"&gt;LAX 625796&lt;/emph&gt;
            &lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/dig:cite&gt;
                    </pre>
                    <b class="+ topic/ph hi-d/b ">Becomes</b>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;seclaw:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref ID="crref00625796"&gt;
                        &lt;lnci:reporter value="LAX"/&gt;
                        &lt;lnci:refnum num="625796"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;LAX 625796&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;
             </pre>
                </li>
   
      </ul>
      </section>
       <section>
           <p>2015-10-01: <ph id="change_20151001_SS">Added a note for removing
                        <sourcexml>emph</sourcexml> markup in target conversion when input document
                    is having a Xpath-"<sourcexml>ci:content/ci:span/emph</sourcexml>". (<b>WebStar
                        #6273159</b>)</ph></p>
           <p>2014-06-02: <ph id="change_20140602_AS">Example added for dig:cite attribute display-name="Digest Number"... DB item #1534</ph></p>
           <p>2014-05-09: <ph id="change_20140509_AS">citetype="reporter" added to dig:cite mapping for ref:cite4thisresource in target... DB item #198</ph></p></section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.cite.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the dig:cite and create the ref:cite4thisresource -->
    <xsl:template match="dig:cite">
        <ref:cite4thisresource citetype="reporter">
            <xsl:apply-templates select="@* | node()"/>
        </ref:cite4thisresource>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the dig:cite/@display-name -->
    <xsl:template match="dig:cite/@display-name"/>
    
</xsl:stylesheet>