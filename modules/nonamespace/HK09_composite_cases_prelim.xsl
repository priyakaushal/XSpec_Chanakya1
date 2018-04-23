<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="prelim">
	    <title>prelim <lnpid>id-HK09-39430</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">prelim</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:caseinstancebody/courtcase:opinions/courtcase:prelim</targetxml>.
                        
             <note class="- topic/note ">
                 Always use <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml> as a child of 
                 <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:prelim</targetxml> in order to handle the child 
                 elements for <sourcexml class="+ topic/keyword xml-d/sourcexml ">prelim</sourcexml> except 
                 <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml>.</note>
                    
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgments&gt;
    ...
    &lt;prelim&gt;
        &lt;p&gt;
            &lt;text align="right"&gt;&lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/prelim&gt;
    ...
&lt;/case:judgments&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinions&gt;
    ...
    &lt;courtcase:prelim&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text align="right"&gt;&lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;bodytext&gt;
    &lt;/courtcase:prelim&gt;
    ...
&lt;/courtcase:opinions&gt;

</pre>
                </li>
          </ul>
      </section>
   </body>
	</dita:topic>

	

	<xsl:template match="prelim">

		<!--  Original Target XPath:  compcase:caseinstancebody/courtcase:opinions/courtcase:prelim   -->
				<courtcase:prelim>
				    <xsl:apply-templates select="@* | heading"/>
				    <bodytext>
				        <xsl:apply-templates select="node() except (heading)"/>
				    </bodytext>
				</courtcase:prelim>

	</xsl:template>

</xsl:stylesheet>