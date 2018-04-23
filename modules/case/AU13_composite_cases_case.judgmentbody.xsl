<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judgmentbody">
   <title>case:judgmentbody <lnpid>id-AU13-20437</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgmentbody</sourcexml>
                    becomes 
             <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/bodytext</targetxml>
                    
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgmentbody&gt;
    &lt;pgrp&gt;
        &lt;heading&gt;&lt;title&gt;Background&lt;/title&gt;&lt;/heading&gt;
        &lt;p&gt;
            &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
            &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by Combined Insurance Company of America (Combined) as insurance agents. In recent times, the five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South Wales claiming entitlements both to annual leave and long service leave. One of the principal issues to be resolved in those proceedings is the question of whether the agents were employees of Combined, as they contend, or rather independent contractors, as Combined contends. No doubt the resolution of that issue will involve a close consideration of a broad range of indicia. One of the matters to which Combined points is a term in its contract with each agent by which each agreed, or appears to have agreed, that his relationship with Combined was not one of employment.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
    ...
&lt;/case:judgmentbody
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;heading&gt;&lt;title&gt;Background&lt;/title&gt;&lt;/heading&gt;
            &lt;p&gt;
                &lt;desig value="1"&gt;[1]&lt;/desig&gt;
                &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by Combined Insurance Company of America (Combined) as insurance agents. In recent times, the five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South Wales claiming entitlements both to annual leave and long service leave. One of the principal issues to be resolved in those proceedings is the question of whether the agents were employees of Combined, as they contend, or rather independent contractors, as Combined contends. No doubt the resolution of that issue will involve a close consideration of a broad range of indicia. One of the matters to which Combined points is a term in its contract with each agent by which each agreed, or appears to have agreed, that his relationship with Combined was not one of employment.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    ...
    &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
</pre>
                </li>
          </ul>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="case:judgmentbody">

		<!--  Original Target XPath:  compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/bodytext   -->
	    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>