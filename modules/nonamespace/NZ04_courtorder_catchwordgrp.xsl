<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita case xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_catchwordgrp">
   <title>catchwordgrp <lnpid>id-AU07-19231</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp</sourcexml>
          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:descriptor</targetxml>
          <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp/catchwords</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:descriptor/classify:classification</targetxml> and comes
              with <targetxml class="+ topic/keyword xml-d/targetxml ">@classscheme="catchwords"</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp/catchwords/catchphrase</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:descriptor/classify:classification/classify:classitem</targetxml>
                  <ul class="- topic/ul ">
                    <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                      <ul class="- topic/ul ">
                        <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        </li>
                      </ul></li>
                  </ul><note class="- topic/note "> A single <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification[@classscheme="catchwords"]</targetxml> is created for
                    each <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml>.
                    Within this single element, create multiple <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem</targetxml>
                    elements. Only create additional <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification</targetxml>
                    wrapper elements when there is more than 1 <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> in a
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml>.
                    </note><note>If conversion encounter text in between catchphrases. It's a
                      <b>Data Error</b>; LBU is correcting this editorially and will have updated
                    content in time for the full content conversion load. In the mean time, text
                    encountered between the catchphrases is to be moved into the preceding
                      <targetxml>classify:classname</targetxml> in New Lexis documents.</note> The
                  children are described below: <ul class="- topic/ul ">
                    <li class="- topic/li "><sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp/catchwords/catchphrase/nl</sourcexml> becomes a
                      single space character. <b><u>Do not</u></b> output a <targetxml class="+ topic/keyword xml-d/targetxml ">proc:nl</targetxml> element when
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">nl</sourcexml> occurs as
                      a descendent of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp</sourcexml></li>
                    <li class="- topic/li "><sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/catchwordgrp/catchwords/catchphrase/ci:cite</sourcexml>
                      becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:descriptor/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/lnci:cite</targetxml>.
                      The source attribute : <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp/catchwords/catchphrase/ci:cite
                        @searchtype="LEG-REF"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:descriptor/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/lnci:cite
                        @type="legislation"</targetxml> The children are described below: <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp/catchwords/catchphrase/ci:cite/ci:content</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:descriptor/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/lnci:cite/lnci:content</targetxml>
                      <ul class="- topic/ul ">
                        <li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp/catchwords/catchphrase/ci:cite/ci:content/citefragment
                            @searchtype="LEG-NAME-REF"</sourcexml> is a container element and need
                          not be carried forward in the conversion. However, all content must be
                          converted such that the order of elements is maintained whenever possible.
                          Please see the "Maintain the Order of Elements Whenever Possible" section
                          for more information. <ul class="- topic/ul ">
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">emph</sourcexml>
                              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">emph</targetxml>. <note class="- topic/note ">Please refer to
                                General Markup section for handling of children. </note></li>
                          </ul></li>
                      </ul></li>
                    <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp/catchwords/catchphrase/emph</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:descriptor/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/emph</targetxml>
                      <note class="- topic/note ">Please refer to General Markup section for
                        handling of children.  </note></li>
                  </ul></li>
              </ul></li>
          </ul><pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;...
    &lt;catchwordgrp&gt;
        &lt;catchwords&gt;
            &lt;catchphrase&gt;Common Law Division&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Procedures&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Hearing for directions&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Production of&lt;nl/&gt;documents&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Inspection&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Claims for damages for personal injuries&lt;/catchphrase&gt;
            &lt;catchphrase&gt;&lt;nl/&gt;Schedule of Claims&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Particulars of negligence alleged and other relevant&lt;nl/&gt;matters&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Particulars of contributory negligence, if alleged&lt;/catchphrase&gt;
            &lt;catchphrase&gt;Disclosure&lt;nl/&gt;of medical evidence&lt;/catchphrase&gt;
            &lt;catchphrase&gt;
                &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                            &lt;emph typestyle="it"&gt;Supreme Court Rules&lt;/emph&gt;, 1970
                        &lt;/citefragment&gt;, Pt.26
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/catchphrase&gt;.
        &lt;/catchwords&gt;
    &lt;/catchwordgrp&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;...
    &lt;courtorder:descriptor&gt;
        &lt;classify:classification classscheme="catchwords"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Common Law Division
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Procedures
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Hearing for directions
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Production of  documents
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Inspection
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Claims for damages for personal injuries
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Schedule of Claims
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Particulars of negligence alleged and other
                    relevant  matters&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Particulars of contributory negligence, if
                    alleged&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Disclosure of medical
                    evidence&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;
                        &lt;lnci:cite type="legislation"&gt;
                            &lt;lnci:content&gt;&lt;emph typestyle="it"&gt;Supreme Court Rules&lt;/emph&gt;,
                            1970&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt; Pt. 26.
                    &lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/courtorder:descriptor&gt;
&lt;/courtorder:head&gt;                
</pre>
        </li></ul>
      </section>
     <section>
       <title>Changes</title>
       <p>2015-06-05: <ph id="change_20150605_JCG">Changed instructions regarding
            <sourcexml>nl</sourcexml>; it now becomes a single space character in this context.
          (Webstar #5992026)</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\catchwordgrp.dita  -->
	

	<xsl:template match="case:headnote/catchwordgrp">
	    <courtorder:descriptor>
		    <xsl:apply-templates select="@*|node()"/>
		</courtorder:descriptor>
	</xsl:template>

	<xsl:template match="case:headnote/catchwordgrp/catchwords">
	    <classify:classification classscheme="catchwords">
			<xsl:apply-templates select="@* | node() except text()"/>
		</classify:classification>
	</xsl:template>

	<xsl:template match="case:headnote/catchwordgrp/catchwords/catchphrase">
	    <classify:classitem>
	        <classify:classitem-identifier>
	             <classify:classname>
	                <xsl:apply-templates select="@* | node()"/>
	                 <xsl:if test="following-sibling::node()[1][self::text()]">
	                     <xsl:apply-templates select="following-sibling::node()[1][self::text()]"/>
	                     <xsl:call-template name="outputErrorMessage">
	                         <xsl:with-param name="messageText" as="xs:string" select=" 'data error: text encountered between catchphrases.' "/>
	                         <xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
	                         <xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
	                         <xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
	                     </xsl:call-template>
	                 </xsl:if>	                 
			     </classify:classname>	            
			</classify:classitem-identifier>						
		 </classify:classitem>
	</xsl:template>

	<xsl:template match="catchphrase/nl" priority="35">
        <xsl:text>&#x20;</xsl:text>
	</xsl:template>

	

</xsl:stylesheet>