<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU_Comm-Rosetta_link-LxAdv-ref.lnlink">
    <title><sourcexml>link</sourcexml> to <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> <lnpid>id-CCCC-10151</lnpid></title>
    <body>
        <section>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared
                topic rather than duplicated to ensure consistency and accuracy. The xml snippets contained
                in this topic reflect markup needed for the Apollo image handling application. The UK is the
                first LBU to move from Apollo to the Blobstore application for image handling. Therefore, if
                this is a UK conversion instruction document, please refer to the following topics for
                correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
                        BLOBSTORE images (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10541)</li>
                </ul></note>
            <p><sourcexml>link</sourcexml> becomes <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>. The attribute <sourcexml>link/@status</sourcexml> is always suppressed, it is never output to the target document.
                The child elements are be converted as follows: 
                <ul>
                    <li><sourcexml>link</sourcexml> content becomes <targetxml>ref:marker</targetxml>. </li>
                    <li>Create <targetxml>ref:locator</targetxml> and describe as: 
                        <ul>
                            
                            <li>Create <targetxml>ref:locator-key</targetxml> and describe as: 
                                <ul>
                                    
                                    <li>Create <targetxml>ref:key-name</targetxml> with <targetxml>@name="attachment-key"</targetxml>. 
                                        This line is hard coded.
                                    </li>
                                    
                                    <li>Create <targetxml>ref:key-value</targetxml> with
                                        <targetxml>@value</targetxml>, as follows: 
                                        <ul>
                                            <li>If <sourcexml>link[@smi]</sourcexml> is present, then <targetxml>@value</targetxml> is copied from <sourcexml>link[@filename]</sourcexml>.</li>
                                            <li>If <sourcexml>link[@smi]</sourcexml> is not present, then
                                                <targetxml>@value="X-Y-Z"</targetxml>, where X is LNI, Y is SMI, and Z is
                                                filename (excluding the extension). Obtain LNI and SMI from CSSM. The last
                                                component "Z" is copied from <sourcexml>link[@filename]</sourcexml>.</li>
                                        </ul></li>
                                </ul>
                            </li>
                            
                            <li>Create <targetxml>ref:locator-params</targetxml> and describe as: 
                                <ul>
                                    <li><targetxml>ref:locator-params</targetxml> element contains locator parameters. It provides a parameter
                                        (identified as a name/value pair) passing mechanism for link services. Each parameter is expressed as a
                                        <targetxml>@name</targetxml> and <targetxml>@value</targetxml> pair in <targetxml>proc:param</targetxml>
                                        element. It is used to identify the attachment type and component sequence.
                                    </li>
                                    
                                    <li>Create <targetxml>proc:param</targetxml> with <targetxml>@name</targetxml> and <targetxml>@value</targetxml>.
                                        <targetxml>@name</targetxml> and <targetxml>@value</targetxml> are required attributes in
                                        <targetxml>proc:param</targetxml>.
                                    </li>
                                    
                                    <li>Three <targetxml>proc:param[@name]</targetxml> and <targetxml>proc:param[@value]</targetxml> pairs are described
                                        below: 
                                        <ul>
                                            <li><targetxml>proc:param[@name="componentseq"]</targetxml> with the attribute
                                                <targetxml>@value="1"</targetxml>.
                                            </li>
                                            <li><targetxml>proc:param[@name="attachment-type"]</targetxml> with the
                                                attribute <targetxml>@value</targetxml>. The <targetxml>@value</targetxml>
                                                value is from <sourcexml>link[@type]</sourcexml>.
                                            </li>
                                            <li><targetxml>proc:param[@name="attachment-smi"]</targetxml> with the
                                                attribute <targetxml>@value</targetxml>. The <targetxml>@value</targetxml>
                                                value is from <sourcexml>link[@smi]</sourcexml>. If
                                                <sourcexml>link[@smi]</sourcexml> is not present, obtain SMI from CSSM.
                                                This <targetxml>@value</targetxml> assignment is done by conversion program.</li>
                                        </ul></li></ul></li>
                        </ul></li></ul>
            </p>
         <!--<ul>
          <li>Also Conversion needs to place the corresponding target <targetxml>//ref:lnlink[@service="ATTACHMENT"]/ref:locator/ref:locator-key</targetxml> and it's child elements in <targetxml>/doc:docinfo/doc:related-content/doc:related-content-grp[grptype="attachments"]/doc:related-content-item</targetxml>. And remove <targetxml>/ref:lnlink[@service="ATTACHMENT"]/ref:locator/ref:locator-key</targetxml> where the <targetxml>ref:key-value/@value</targetxml> is a duplicate of <targetxml>ref:lnlink//ref:key-value/@value</targetxml>.
           <note>All <targetxml>ref:lnlinks</targetxml> in the body are left as it is. Duplicates are only removed in the <targetxml>doc:docinfo/doc:related-content/doc:related-content-grp[grptype="attachments"]/doc:related-content-item</targetxml> area.</note>
          </li>
         </ul>-->
        </section>
        
        <example>
            <title>Source XML. Source @smi present</title>
            <codeblock>

&lt;link type="pdf" smi="98765" filename="xmpl-c1.pdf"&gt;Download in PDF&lt;/link&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML. Source @smi present</title>
            <codeblock>


&lt;ref:lnlink service="ATTACHMENT"&gt;
 &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt;
 &lt;ref:locator&gt;
  &lt;ref:locator-key&gt;
   &lt;ref:key-name name="attachment-key"/&gt;
   &lt;ref:key-value value="xmpl-c1"/&gt;
  &lt;/ref:locator-key&gt;
  &lt;ref:locator-params&gt;
   &lt;proc:param name="componentseq" value="1"/&gt;
   &lt;proc:param name="attachment-type" value="pdf"/&gt;
   &lt;proc:param name="attachment-smi" value="98765"/&gt;
  &lt;/ref:locator-params&gt;
 &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;


<!--<!-\- ETC. -\->
<doc:metadata>
 <doc:docinfo doc-content-country="AU">
 <!-\- ETC. -\->
  <doc:related-content>
   <doc:related-content-grp grptype="attachments">
    <doc:related-content-item>
     <ref:lnlink service="ATTACHMENT">
     <ref:marker role="label">Download in PDF</ref:marker>
     <ref:locator>
      <ref:locator-key>
       <ref:key-name name="attachment-key"/>
       <ref:key-value value="xmpl-c1"/>
      </ref:locator-key>
      <ref:locator-params>
       <proc:param name="componentseq" value="1"/>
       <proc:param name="attachment-type" value="pdf"/>
       <proc:param name="attachment-smi" value="98765"/>
      </ref:locator-params>
     </ref:locator>
    </ref:lnlink>
   </doc:related-content-item>
  </doc:related-content-grp>
  </doc:related-content>
  <!-\- ETC. -\->
 </doc:docinfo>
</doc:metadata>-->
	</codeblock>
        </example>
        
        <example>
            <title>Source XML. Source @smi not present</title>
            <codeblock>

&lt;link type="pdf" filename="pbap-c1.pdf"&gt;Download in PDF&lt;/link&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML. Source @smi not present</title>
            <codeblock>
             

&lt;ref:lnlink service="ATTACHMENT"&gt;
 &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt;
 &lt;ref:locator&gt;
  &lt;ref:locator-key&gt;
   &lt;ref:key-name name="attachment-key"/&gt;
   &lt;ref:key-value value="X-Y-pbap-c1"/&gt; 
   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
  &lt;/ref:locator-key&gt;
  &lt;ref:locator-params&gt;
   &lt;proc:param name="componentseq" value="1"/&gt;
   &lt;proc:param name="attachment-type" value="pdf"/&gt;
   &lt;proc:param name="attachment-smi" value=""/&gt; 
   &lt;!-- @value populated with SMI obtained from CSSM --&gt;
   &lt;!-- This @value assignment is done by conversion program --&gt;
  &lt;/ref:locator-params&gt;
 &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;


<!--<!-\- ETC. -\->
<doc:metadata>
 <doc:docinfo doc-content-country="AU">
 <!-\- ETC. -\->
  <doc:related-content>
   <doc:related-content-grp grptype="attachments">
    <doc:related-content-item>
     <ref:lnlink service="ATTACHMENT">
      <ref:marker role="label">Download in PDF</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="attachment-key"/>
        <ref:key-value value="X-Y-pbap-c1"/>
        <!-\- X and Y are LNI and SMI values obtained from CSSM -\->
       </ref:locator-key>
       <ref:locator-params>
        <proc:param name="componentseq" value="1"/>
        <proc:param name="attachment-type" value="pdf"/>
        <proc:param name="attachment-smi" value=""/> 
        <!-\- @value populated with SMI obtained from CSSM -\->
        <!-\- This @value assignment is done by conversion program -\->
       </ref:locator-params>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-item>
   </doc:related-content-grp>
  </doc:related-content>
  <!-\- ETC. -\->
 </doc:docinfo>
</doc:metadata>-->
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160803_pk">Added Note about xml snippets that illustrate image
                handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
                move to Blobstore.</ph></p>
            <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>link/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>link/@status</targetxml> handling was not explicitly specified for the scenarios covered by this topic.</ph></p>
         <p>2014-04-30: <ph id="change_20140430">Remove instruction to copy target <targetxml>ref:lnlink</targetxml> to <targetxml>doc:related-content</targetxml> and updated the examples.</ph></p>
            <p>2013-04-12: <ph id="change_20130412_ab">Added instruction and update Source and Target example for ref:lnlink[@service="ATTACHMENT"] : <targetxml>//ref:lnlink[@service="ATTACHMENT"]/ref:locator/ref:locator-key</targetxml> and it's child elements place in <targetxml>/doc:docinfo/doc:related-content/doc:related-content-grp[grptype="attachments"]/doc:related-content-item</targetxml>.</ph></p>
            <p>2013-04-10: <ph id="change_20130410_ab">Updated instruction and Source and Target example per project requirement.</ph></p>
            <p>2013-03-26: <ph id="change_20130326_SP">Updated instruction and target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Updated target example per project requirement.</ph></p>
            <p>2012-10-26: Changed to reflect recent requirements for attachment-type links.</p>
        </section>    
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita  -->
<!-- this duplicates Rosetta_link-LxAdv-ref.lnlink.xsl -->

</xsl:stylesheet>