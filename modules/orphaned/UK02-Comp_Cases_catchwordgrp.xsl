<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
   <title>catchwordgrp <lnpid>id-UK02-27233</lnpid></title>
   <body>
      <section>
        <ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> omit tag and
          retain content. <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">/compcase:compositecourtcase/compcase:head/classify:classification</targetxml> and
              comes with <targetxml class="+ topic/keyword xml-d/targetxml ">@classscheme="catchwords"</targetxml>. <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem</targetxml> and comes with
                    <targetxml class="+ topic/keyword xml-d/targetxml ">@classscheme="catchphrase"</targetxml>. <ul class="- topic/ul ">
                    <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem/classify:classitem-identifier</targetxml>
                      <ul class="- topic/ul ">
                        <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem-identifier/classify:classname</targetxml>
                        </li>
                      </ul>
                    </li>
                    </ul>
                </li>
                </ul>
            </li>
          </ul>
           <note class="- topic/note ">Each instance of <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> should be converted to
            its own <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification[@classscheme="catchwords"]</targetxml> element.</note>
         </li>
        </ul>
      </section>
     
     <example>
       <title>Source XML</title>
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
         Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification</targetxml> to handle 
         <sourcexml class="+ topic/keyword xml-d/sourcexml ">page</sourcexml> element when it occurs inside 
         <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> i.e,
         <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp/page</sourcexml> becomes 
         <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier/class:classname/ref:page</targetxml>.
       </p>
     </section>

     <example>
       <title>Source XML</title>
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
     
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\catchwordgrp.dita  -->
	<xsl:message>UK02-Comp_Cases_catchwordgrp.xsl requires manual development!</xsl:message> 

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

</xsl:stylesheet>