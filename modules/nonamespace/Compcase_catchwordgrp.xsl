<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
   <title>catchwordgrp <lnpid>id-ST05-28443</lnpid></title>
   <body>
      <section>
        <ul>
         <li>
                    <sourcexml>catchwordgrp</sourcexml> is a container element that should be
                    omitted, but its content should be retained and converted as follows: <ul>
                        <li>
                            <sourcexml>catchwords</sourcexml> becomes
                                <targetxml>/compcase:compositecourtcase/compcase:head/classify:classification</targetxml>
                            and comes with <targetxml>@classscheme="catchwords"</targetxml>. <ul>
                                <li>
                                    <sourcexml>catchphrase</sourcexml> becomes
                                        <targetxml>classify:classification/classify:classitem</targetxml>
                                    and comes with
                                    <targetxml>@classscheme="catchphrase"</targetxml>. <ul>
                                        <li>Create
                                                <targetxml>classify:classitem/classify:classitem-identifier</targetxml>
                                            <ul>
                                                <li>Create
                                                  <targetxml>classify:classitem-identifier/classify:classname</targetxml> </li>
                                                <li>Inside <targetxml>classify:classitem-identifier</targetxml> create <targetxml>classify:classname</targetxml>. The content of <sourcexml>catchphrase</sourcexml> becomes the content of
                                                    <targetxml>classify:classname</targetxml></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <note>Each instance of <sourcexml>catchwords</sourcexml>
                        should be converted to its own
                            <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
                            element.</note>
             <note>Any text that is encountered directly inside <sourcexml>catchwords</sourcexml> is a data error. The LBU is correcting this editorially and will have updated content in time for the full content conversion load. In the mean time, text encountered directly inside <sourcexml>catchwords</sourcexml> should be moved into the preceding <targetxml>classify:classname</targetxml> in the target document.</note>
                </li>
        </ul>
      </section>
     
     <example>
       <title>Source XML based on UK content</title>
       <codeblock>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;
            Public Health &amp;#x2013; Housing &amp;#x2013; Compulsory purchase order &amp;#x2013; Confirmation &amp;#x2013; Deputation from local authority to Minister &amp;#x2013; Absence of other party.
        &lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem classscheme="catchphrase"&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                Public Health &amp;#x2013; Housing &amp;#x2013; Compulsory purchase order &amp;#x2013; Confirmation &amp;#x2013; Deputation from local authority to Minister &amp;#x2013; Absence of other party.
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

    </codeblock>
    </example>
     
     <section>
       <p>
         Create <targetxml>classify:classification</targetxml> to handle 
         <sourcexml>page</sourcexml> element when it occurs inside 
         <sourcexml>catchwordgrp</sourcexml> i.e,
         <sourcexml>catchwordgrp/page</sourcexml> becomes 
         <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/class:classname/ref:page</targetxml>.
       </p>
     </section>

     <example>
       <title>Source XML based on UK content</title>
       <codeblock>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;
            Gaming &amp;#x2013; Pool betting &amp;#x2013; Duty leviable &amp;#x2013; Person benefiting from the promotion of betting &amp;#x2013; Association of pool betting with other activities &amp;#x2013; Separate bodies &amp;#x2013; Use of common collecting and distributing agent &amp;#x2013; Scheme whereby agent acts
        &lt;/catchphrase&gt;
    &lt;/catchwords&gt;
    
    &lt;page text="[1969] 3 All ER 39 at " count="40" reporter="ALLER"/&gt;
    
    &lt;catchwords&gt;
        &lt;catchphrase&gt;
            on behalf of both pool promoter...
        &lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

    </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem classscheme="catchphrase"&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                Gaming &amp;#x2013; Pool betting &amp;#x2013; Duty leviable &amp;#x2013; Person benefiting from the promotion of betting &amp;#x2013; Association of pool betting with other activities &amp;#x2013; Separate bodies &amp;#x2013; Use of common collecting and distributing agent &amp;#x2013; Scheme whereby agent acts
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    
    &lt;classify:classitem classscheme="catchphrase"&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                &lt;ref:page num="30" page-scheme="ALLER" pagescheme-type="reporterabbreviation"/&gt;
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    
    &lt;classify:classitem classscheme="catchphrase"&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                on behalf of both pool promoter...
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

    </codeblock>
     </example>
       
   <section>
       <note>
       <p>To handle a <sourcexml>footnote</sourcexml> markup inside
           <sourcexml>catchwordgrp</sourcexml> element in source documents then create a separate
           <targetxml>class:classname</targetxml> elements to wrap the target
           <targetxml>footnotegroup/footnote</targetxml>.</p>
       <p>I.e., <sourcexml>catchwordgrp/footnote</sourcexml> becomes
           <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/footnotegroup/footnote</targetxml>
           <b>And</b>
           <sourcexml>catchwordgrp/page</sourcexml> becomes
           <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/ref:page</targetxml>.</p>
           </note>
           </section>
       <example>
           <title>Source XML based on AU content</title>
           <codeblock>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Vehicles and Traffic&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
    &lt;footnotegrp&gt;
        &lt;footnote fntoken="1974-1-NSWLR-702.fn_a" fnrtokens="1974-1-NSWLR-702.fnr_a"&gt;
            &lt;fnlabel&gt;â€ &lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;[Editor's Note: An application to the Court of Criminal Appeal for leave to appeal to the Privy Council has &lt;nl/&gt;been lodged by the defendant.
                        On 11th October, 1974, this application was dismissed.]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
    &lt;page count="703" reporter="NSWLR" text="[1974] 1 NSWLR 702 at " subdoc="true"/&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;to warrant conviction, if charge otherwise proved...&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem classscheme="catchphrase"&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Vehicles and Traffic&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                &lt;footnotegroup&gt;
                    &lt;footnote&gt;
                        &lt;ref:anchor id="_1974-1-NSWLR-702.fn_a"/&gt;
                        &lt;label&gt;+&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;[Editor's Note: An application to the Court of Criminal Appeal for leave to appeal to the Privy Council has&lt;proc:nl/&gt;been lodged by the
                                    defendant. On 11th October, 1974, this application was dismissed.]&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/footnote&gt;
                &lt;/footnotegroup&gt;
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                &lt;ref:page includeintoc="true" num="703" page-scheme="NSWLR" page-scheme-type="reporterabbreviation"/&gt;
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt; 
  &lt;classify:classitem classscheme="catchphrase"&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;to warrant conviction, if charge otherwise proved...&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

           </codeblock>
       </example>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\catchwordgrp.dita  -->
	<xsl:message>Compcase_catchwordgrp.xsl requires manual development!</xsl:message> 

	<xsl:template match="catchwordgrp">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/classify:classification   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:head>
				<classify:classification>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>
			</compcase:head>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="catchwords">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/classify:classification   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:head>
				<classify:classification>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>
			</compcase:head>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="catchphrase">

		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
		<classify:classification>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="page">

		<!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/class:classname/ref:page   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
							<xsl:apply-templates select="@* | node()"/>
						</ref:page>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="catchwordgrp/page">

		<!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/class:classname/ref:page   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
							<xsl:apply-templates select="@* | node()"/>
						</ref:page>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="footnote">

		<!--  Original Target XPath:  class:classname   -->
		<error_class:classname xmlns:error_class="class_ERROR">
			<xsl:apply-templates select="@* | node()"/>
		</error_class:classname>

	</xsl:template>

	<xsl:template match="catchwordgrp/footnote">

		<!--  Original Target XPath:  classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/footnotegroup/footnote   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<footnotegroup>
							<footnote>
								<xsl:apply-templates select="@* | node()"/>
							</footnote>
						</footnotegroup>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>