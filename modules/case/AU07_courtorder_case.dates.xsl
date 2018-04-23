<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_case.dates">
   <title>case:dates <lnpid>id-AU07-19222</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">                        
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:dates</sourcexml> is a container element and need not be carried forward in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information. The child element is described as below :
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:dates/case:decisiondate/date @day="" @month="" @year=""</sourcexml> becomes
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:issuedate @day="" @month="" @year=""</targetxml>.
                                <note class="- topic/note ">Please note that if <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate</sourcexml> contains only PCDATA and not any attribute and child element, then the rule (example) for handling for such scenario is shown below:</note>
                        <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
      &lt;case:decisiondate&gt;13 October 1994 &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;
    &lt;courtorder:issuedate&gt;
      &lt;date-text&gt;13 October 1994 &lt;/date-text&gt;
    &lt;/courtorder:issuedate&gt;
&lt;/courtorder:head&gt; 
                
</pre>   
                            </li>
                        </ul>
                        
                        <note class="- topic/note ">If an empty case:dates/case:hearingdates element is found it can be suppressed/dropped.</note>
                                               
                    </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.dates.dita  -->

	<!-- this is already handled in case.courtinfo.case.dates module -->

</xsl:stylesheet>