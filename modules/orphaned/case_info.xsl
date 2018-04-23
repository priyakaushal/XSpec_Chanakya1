<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case_info">
  <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/caseinfo:casename <lnpid>id-AU20-22210</lnpid></title>

  <body>
    <section>
      <p><sourcexml>case:info</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo</targetxml>. The children are described below: <sl>
          <sli>
            <sourcexml>case:casename</sourcexml> becomes
              <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>. </sli>
        </sl>
      </p>
    </section>

    <example>
      <title>Source case:info/caseinfo:casename</title>
      <codeblock>
              

&lt;cttr:body&gt;
  &lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="litigation-history"&gt;
      &lt;case:info&gt;
        &lt;case:casename&gt;L Shaddock &amp;amp; Associates Pty Ltd v Parramatta City Council&lt;/case:casename&gt;
      &lt;/case:info&gt;
    &lt;/cttr:annotations&gt;
  &lt;/cttr:content&gt;
&lt;/cttr:body&gt;

  </codeblock>
    </example>

    <example>
      <title>Target case:info/caseinfo:casename/caseinfo:fullcasename</title>
      <codeblock>

     &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               &lt;caseinfo:casename&gt;
                 &lt;caseinfo:fullcasename&gt;L Shaddock &amp;amp; Associates Pty Ltd v Parramatta City Council&lt;/caseinfo:fullcasename&gt;
               &lt;/caseinfo:casename&gt;
               ...
             &lt;/cttr:caseinfo&gt;
            ...
          &lt;/cttr:citingcase&gt;
    &lt;/cttr:refitem&gt;
                
</codeblock>
    </example>

    <!--  
  <case:courtinfo>
  <case:courtname>HCA</case:courtname>
  <case:courtcode>HCA</case:courtcode>
  <case:judges>
  <case:judge>Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ</case:judge>
  </case:judges>
  <case:dates>
  <case:decisiondate>
  <date day="14" month="08" year="1991">14/08/1991</date>
  </case:decisiondate>
  </case:dates>
  </case:courtinfo>
  <case:constituents constituenttype="barristers">
  <p>
  <text>Fred</text>
  </p>
  </case:constituents>
  <case:constituents constituenttype="solicitors">
  <p>
  <text>Doris</text>
  </p>
  </case:constituents>
  
  -->
    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/case:courtinfo/case:courtname</title>
      <p><sourcexml>case:courtinfo/case:courtname</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml> </p>
    </section>

<example>
  <title>Source case:courtname</title>
  
  <codeblock>
    
&lt;cttr:annotations annotationtype="subseqcases"&gt;
            &lt;heading&gt;
               &lt;title/&gt;
            &lt;/heading&gt;
            &lt;cttr:annot&gt;
            		&lt;case:info&gt;
			               &lt;case:casename&gt;Polyukhovich v Commonwealth of Australia&lt;/case:casename&gt;
			               &lt;case:courtinfo&gt;
				                 &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;    
            ...
            &lt;/cttr:annot&gt;   
    
  </codeblock>
</example>


<example>
         <title>Target jurisinfo:courtname</title>
  
      <codeblock>          
          
     &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname&gt;HCA
                   &lt;/jurisinfo:courtname&gt;
               &lt;/jurisinfo:courtinfo&gt; 
             &lt;/cttr:caseinfo&gt;
            ...
          &lt;/cttr:citingcase&gt;
      &lt;/cttr:refitem&gt;         
            
                       
                
    </codeblock>
</example>    
    
    
    
    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/case:courtinfo/case:courtcode</title>
      <p><sourcexml>case:courtinfo/case:courtcode</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname[@courtcode]</targetxml> </p>
    </section>


    <example>
      <title>Source Courtcode</title>
      
      <codeblock>
    
          &lt;cttr:annotations annotationtype="subseqcases"&gt;
            &lt;heading&gt;
               &lt;title/&gt;
            &lt;/heading&gt;
            &lt;cttr:annot&gt;
            		&lt;case:info&gt;
			               &lt;case:casename&gt;Polyukhovich v Commonwealth of Australia&lt;/case:casename&gt;
			               &lt;case:courtinfo&gt;
				                 &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;
				                 &lt;case:courtcode&gt;HCA&lt;/case:courtcode&gt;				                 
            ...
            &lt;/cttr:annot&gt;    
    
    
  </codeblock>
    </example>
    
    <example>
      <title>Target Courtcode</title>

      <codeblock>
    
     &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname courtcode="HCA"&gt;HCA
                   &lt;/jurisinfo:courtname&gt;
               &lt;/jurisinfo:courtinfo&gt; 
             &lt;/cttr:caseinfo&gt;
            ...
          &lt;/cttr:citingcase&gt;
      &lt;/cttr:refitem&gt;     
    
    
  </codeblock>
    </example>    
    


    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/case:courtinfo/case:judges</title>
      
      <p><sourcexml>case:courtinfo/case:judges</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:judges</targetxml> 
        Subsequently, <sourcexml>case:courtinfo/case:judges/case:judge</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:judges/person:judge</targetxml>
      </p>
    </section>
    
    <example>
      <title>Source Judges/Judge</title>
      
      <codeblock>
    
		             &lt;case:info&gt;
			               &lt;case:casename&gt;Polyukhovich v Commonwealth of Australia&lt;/case:casename&gt;
			               &lt;case:courtinfo&gt;
				                 &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;
				                 &lt;case:courtcode&gt;HCA&lt;/case:courtcode&gt;
				                 &lt;case:judges&gt;
					                   &lt;case:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/case:judge&gt;
				                 &lt;/case:judges&gt;    
    
    
  </codeblock>
    </example>
    
    <example>
      <title>Target Judges/person:judge</title>
      
      <codeblock>
    
     &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname courtcode="HCA"&gt;HCA&lt;/jurisinfo:courtname&gt;
				           &lt;courtcase:judges&gt;
		                   &lt;person:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/person:judge&gt;
				           &lt;/courtcase:judges&gt;                   
                   ...
               &lt;/jurisinfo:courtinfo&gt; 
             &lt;/cttr:caseinfo&gt;
            ...
          &lt;/cttr:citingcase&gt;
      &lt;/cttr:refitem&gt;     
    
    
  </codeblock>
    </example>
    

    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/case:courtinfo/case:dates</title>
      <p><sourcexml>case:courtinfo/case:dates/case:decisiondate</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate</targetxml> 
        
        Subsequently, <sourcexml>case:courtinfo/case:dates/case:decisiondate/date</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml>
        
        Also, <sourcexml>case:courtinfo/case:dates/case:decisiondate/date[@year] [@month] [@day]</sourcexml> attributes become
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate[@year] [@month] [@day] attributes</targetxml>
        
      </p>


    </section>
    
    <example>
      <title>Source Decision Date</title>
      
      <codeblock>
    
&lt;cttr:annotations annotationtype="subseqcases"&gt;
            &lt;heading&gt;
               &lt;title/&gt;
            &lt;/heading&gt;
            &lt;cttr:annot&gt;
            		&lt;case:info&gt;
			               &lt;case:casename&gt;Polyukhovich v Commonwealth of Australia&lt;/case:casename&gt;
			               &lt;case:courtinfo&gt;
				                 &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;
                         &lt;case:courtcode&gt;HCA&lt;/case:courtcode&gt;
				                 &lt;case:judges&gt;
					                   &lt;case:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/case:judge&gt;
				                 &lt;/case:judges&gt;
				                 
				                 &lt;case:dates&gt;
					                   &lt;case:decisiondate&gt;
                               &lt;date day="14" month="08" year="1991"&gt;14/08/1991&lt;/date&gt;
                              &lt;/case:decisiondate&gt;
				                 &lt;/case:dates&gt;				                 
            ...
            &lt;/cttr:annot&gt;     
    
    
  </codeblock>
    </example>
    
    <example>
      <title>Target Decision Date</title>
      
      <codeblock>
    
     &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname courtcode="HCA"&gt;HCA&lt;/jurisinfo:courtname&gt;
				           &lt;courtcase:judges&gt;
		                   &lt;person:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/person:judge&gt;
				           &lt;/courtcase:judges&gt;                   
                   ...
               &lt;/jurisinfo:courtinfo&gt; 
				       &lt;decision:dates&gt;
					          &lt;decision:decisiondate day="14" month="08" year="1991"&gt;
                       &lt;date-text&gt;14/08/1991&lt;/date-text&gt;
                    &lt;/decision:decisiondate&gt;
               &lt;/decision:dates&gt;
               
             &lt;/cttr:caseinfo&gt;
            ...
          &lt;/cttr:citingcase&gt;
      &lt;/cttr:refitem&gt;
      
    
    
  </codeblock>
    </example>    

    
    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:info/case:constituents</title>
      
      <p><sourcexml>case:caseinfo/case:constituents[@constituenttype="barristers"]</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="barristers"]</targetxml>
     </p>   
      <p><sourcexml>case:caseinfo/case:constituents[@constituenttype="solicitors"]</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="solicitors"]</targetxml>
      </p>  
      <p>    
        Subsequently, <sourcexml>case:caseinfo/case:constituents</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="barristers or solicitors"]/person:counselor
        </targetxml>
      </p>

    </section>

    <example>
      <title>Source Constituents</title>
      
      <codeblock>
    
 &lt;cttr:annotations annotationtype="subseqcases"&gt;
            &lt;heading&gt;
               &lt;title/&gt;
            &lt;/heading&gt;
            &lt;cttr:annot&gt;
		           &lt;case:info&gt;
			               &lt;case:casename&gt;Polyukhovich v Commonwealth of Australia&lt;/case:casename&gt;
			               &lt;case:courtinfo&gt;
				                 &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;
				                 &lt;case:courtcode&gt;HCA&lt;/case:courtcode&gt;
				                 &lt;case:judges&gt;
					                   &lt;case:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/case:judge&gt;
				                 &lt;/case:judges&gt;
				                 &lt;case:dates&gt;
					                   &lt;case:decisiondate&gt;
                           &lt;date day="14" month="08" year="1991"&gt;14/08/1991&lt;/date&gt;
                        &lt;/case:decisiondate&gt;
				                 &lt;/case:dates&gt;
			               &lt;/case:courtinfo&gt;
			               &lt;case:constituents constituenttype="barristers"&gt;
                     &lt;p&gt;
                        &lt;text&gt;Fred&lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/case:constituents&gt;
			               &lt;case:constituents constituenttype="solicitors"&gt;
                     &lt;p&gt;
                        &lt;text&gt;Doris&lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/case:constituents&gt;
		             &lt;/case:info&gt;   
    
    
  </codeblock>
    </example>

    <example>
      <title>Target Constituents</title>
      
      <codeblock>
    
      &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname courtcode="HCA"&gt;HCA&lt;/jurisinfo:courtname&gt;
				           &lt;courtcase:judges&gt;
		                   &lt;person:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/person:judge&gt;
				           &lt;/courtcase:judges&gt;                   
                   ...
               &lt;/jurisinfo:courtinfo&gt; 
				       &lt;decision:dates&gt;
					          &lt;decision:decisiondate day="14" month="08" year="1991"&gt;
                       &lt;date-text&gt;14/08/1991&lt;/date-text&gt;
                    &lt;/decision:decisiondate&gt;
               &lt;/decision:dates&gt;
               
			            &lt;courtcase:constituents constituenttype="barristers"&gt;
                       &lt;person:counselor&gt;Fred&lt;/person:counselor&gt;
                  &lt;/courtcase:constituents&gt;
                  
			            &lt;courtcase:constituents constituenttype="solicitors"&gt;
                     &lt;person:counselor&gt;Doris&lt;/person:counselor&gt;
                  &lt;/courtcase:constituents&gt;               
               
             &lt;/cttr:caseinfo&gt;

          &lt;/cttr:citingcase&gt;
      &lt;/cttr:refitem&gt;   
    
    
  </codeblock>
    </example>
    
    
    <section>
      <title>cttr:content/cttr:annotations@[annotationtype="subseqcases"]/cttr:annot/case:citations</title>

      <p><sourcexml>/cttr:annot/case:citations</sourcexml> becomes <targetxml>/cttr:citingcase/cttr:usagegroup/cttr:usage</targetxml>, with 
        attribute <targetxml>usagetype="unspecified"</targetxml>
      </p> 
      
      <p><sourcexml>/cttr:annot/case:citations/case:citetext</sourcexml> becomes <targetxml>/cttr:citingcase/cttr:usagegroup/cttr:usage/text/lnci:cite</targetxml>
        <sl>
          <sli>If there are more than one ci:cite occurences, all should appear as a child of <targetxml>/cttr:citingcase/cttr:usagegroup/cttr:usage/text</targetxml></sli>
        </sl>
      </p>
      
    </section>
    
    <example>
      <title>Source case:citations/case:citetext</title>
      
     <codeblock>     
      
       &lt;cttr:annot&gt;
         ...
          &lt;case:citations&gt;
             &lt;case:citetext&gt;
                &lt;ci:cite searchtype="CASE-REF"&gt;
                  &lt;ci:case&gt;
                    &lt;ci:caseinfo&gt;
                      &lt;ci:decisiondate year="1988"/&gt;
                    &lt;/ci:caseinfo&gt;
                    &lt;ci:caseref ID="cr000196" spanref="cr000196-001"&gt;
                      &lt;ci:reporter value="ALD"/&gt;
                      &lt;ci:volume num="15"/&gt;
                      &lt;ci:page num="310"/&gt;
                    &lt;/ci:caseref&gt;
                  &lt;/ci:case&gt;        
                &lt;/ci:cite&gt;
              &lt;/case:citetext&gt;
          &lt;/case:citations&gt;
     </codeblock>
    </example>
    
    <example>
      <title>Target cttr:usagegroup/cttr:usage/text/lnci:cite</title>
      
      <codeblock> 
        
          &lt;cttr:citingcase&gt;
          ...
             &lt;cttr:usagegroup&gt;
                &lt;cttr:usage usagetype="unspecified"&gt; 
                  &lt;text&gt;
                    &lt;lnci:cite&gt;
                      &lt;lnci:case&gt;
                        &lt;lnci:caseinfo&gt;
                          &lt;lnci:decisiondate year="1988"/&gt;
                        &lt;/lnci:caseinfo&gt;
                        &lt;lnci:caseref ID="cr000196"&gt;
                          &lt;lnci:reporter value="ALD"/&gt;
                          &lt;lnci:volume num="15"/&gt;
                          &lt;lnci:page num="310"/&gt;
                        &lt;/lnci:caseref&gt;
                      &lt;/lnci:case&gt;   
                    &lt;/lnci:cite&gt;
                  &lt;/text&gt;
        
                &lt;/cttr:usage&gt;
             &lt;/cttr:usagegroup&gt;
          &lt;cttr:citingcase&gt;   
        
    </codeblock>
    </example>
   
   
    <section>
      <title>cttr:annot/case:citations/note[@display-name="Catchwords"]</title>
      
      <p>For notes within case:citations<sourcexml>cttr:annot/case:citations/note[@display-name="Catchwords"]</sourcexml> becomes child of
        <targetxml>cttr:refitem</targetxml> in <targetxml>/cttr:refitem/cttr:descriptors/cttr:descriptorsection[@descriptortype="words-and-phrases"]</targetxml></p>

      <p><sourcexml>note[@display-name="Catchwords"]/p</sourcexml> will become <targetxml>classify:classification classscheme="words-and-phrases"</targetxml></p>
      <p>contents of <sourcexml>p</sourcexml> will become <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml></p>
    </section>
    
    <example>
      <title>Source catchwords within case:citations</title>
      <codeblock>
    
  &lt;cttr:annot&gt;...  
  
  &lt;case:citations&gt;
     &lt;case:citetext&gt;
       &lt;ci:cite searchtype="CASE-REF" srcstatus="normal" impcit="main" pub="none" pub-status="none" loadable="1" historycite="0" validate="1" xlink.show="replace" xlink.actuate="user" status="valid" generated="0" attreq="0" ln.nsprefix="lnci:"&gt;
         &lt;ci:content popname="0" status="valid" generated="0" attreq="0" ln.nsprefix="lnci:"&gt;
           &lt;remotelink dpsi="02IR" remotekey1="DOC-ID" remotekey2="CA25905" service="DOC-ID" ln.nsprefix="NONE" status="valid"&gt;New Plymouth District Council v Waitara Leaseholders Association Inc (2007)&lt;/remotelink&gt; 
         &lt;/ci:content&gt;
       &lt;/ci:cite&gt;
     &lt;/case:citetext&gt;

     &lt;note display-name="Catchwords""&gt;
       &lt;p&gt;
         &lt;text&gt;John — Paul— George— Ringo— George— Billy&lt;/text&gt; 
       &lt;/p&gt;
     &lt;/note&gt;
    &lt;/case:citations&gt;
  &lt;/cttr:annot&gt;

    
    
  </codeblock>
      
    </example>
    
    
    <example>
      <title>Target cttr:descriptors within cttr:refitem</title>
      
      <codeblock>
    

      &lt;cttr:refitem&gt;
          &lt;cttr:citingcase&gt;
             &lt;cttr:caseinfo&gt;
               ...
               &lt;jurisinfo:courtinfo&gt;
                   &lt;jurisinfo:courtname courtcode="HCA"&gt;HCA&lt;/jurisinfo:courtname&gt;
				           &lt;courtcase:judges&gt;
		                   &lt;person:judge&gt;Mason CJ, Brennan, Deane, Dawson, Toohey, Gaudron and McHugh JJ&lt;/person:judge&gt;
				           &lt;/courtcase:judges&gt;                   
                   ...
               &lt;/jurisinfo:courtinfo&gt; 
				       &lt;decision:dates&gt;
					          &lt;decision:decisiondate day="14" month="08" year="1991"&gt;
                       &lt;date-text&gt;14/08/1991&lt;/date-text&gt;
                    &lt;/decision:decisiondate&gt;
               &lt;/decision:dates&gt;
               
			            &lt;courtcase:constituents constituenttype="barristers"&gt;
                       &lt;person:counselor&gt;Fred&lt;/person:counselor&gt;
                  &lt;/courtcase:constituents&gt;
                  
			            &lt;courtcase:constituents constituenttype="solicitors"&gt;
                     &lt;person:counselor&gt;Doris&lt;/person:counselor&gt;
                  &lt;/courtcase:constituents&gt;               
               
             &lt;/cttr:caseinfo&gt;

          &lt;/cttr:citingcase&gt;
          
          &lt;cttr:descriptors&gt;
             &lt;cttr:descriptorsection descriptortype="words-and-phrases"&gt;
               &lt;classify:classification classscheme="words-and-phrases"&gt;
                  &lt;classify:classitem&gt;
                     &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;John — Paul— George— Ringo— George— Billy&lt;/classify:classname&gt;
                     &lt;/classify:classitem-identifier&gt;
                  &lt;/classify:classitem&gt;
                &lt;/classify:classification&gt;  
             &lt;/cttr:descriptorsection&gt;
          &lt;/cttr:descriptors&gt;             
      &lt;/cttr:refitem&gt;
      
    
    
  </codeblock>
      
    </example>
    
    
   
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\case_info.dita  -->
	<xsl:message>case_info.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  caseinfo:casename/caseinfo:fullcasename   -->
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<jurisinfo:courtinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
						<jurisinfo:courtname>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:courtname>
					</jurisinfo:courtinfo>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname[@courtcode]   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<jurisinfo:courtinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
						<jurisinfo:courtname>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:courtname>
					</jurisinfo:courtinfo>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:judges"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:judges   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<courtcase:judges xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<xsl:apply-templates select="@* | node()"/>
					</courtcase:judges>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:judges/case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:judges/person:judge   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<courtcase:judges xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<person:judge xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
							<xsl:apply-templates select="@* | node()"/>
						</person:judge>
					</courtcase:judges>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:dates/case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
						<decision:decisiondate>
							<xsl:apply-templates select="@* | node()"/>
						</decision:decisiondate>
					</decision:dates>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:dates/case:decisiondate/date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate/date-text   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
						<decision:decisiondate>
							<date-text>
								<xsl:apply-templates select="@* | node()"/>
							</date-text>
						</decision:decisiondate>
					</decision:dates>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:dates/case:decisiondate/date[@year] [@month] [@day]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/decision:dates/decision:decisiondate[@year][@month][@day]attributes   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
						<decision:decisiondate>
							<xsl:apply-templates select="@* | node()"/>
						</decision:decisiondate>
					</decision:dates>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:caseinfo/case:constituents[@constituenttype=&#34;barristers&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="barristers"]   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<courtcase:constituents xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<xsl:apply-templates select="@* | node()"/>
					</courtcase:constituents>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:caseinfo/case:constituents[@constituenttype=&#34;solicitors&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="solicitors"]   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<courtcase:constituents xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<xsl:apply-templates select="@* | node()"/>
					</courtcase:constituents>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:caseinfo/case:constituents"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/courtcase:constituents[@constituenttype="barristersorsolicitors"]/person:counselor   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<courtcase:constituents xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
						<person:counselor xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
							<xsl:apply-templates select="@* | node()"/>
						</person:counselor>
					</courtcase:constituents>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/case:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:citingcase/cttr:usagegroup/cttr:usage   -->
		<cttr:citingcase>
			<cttr:usagegroup>
				<cttr:usage>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:usage>
			</cttr:usagegroup>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="/cttr:annot/case:citations/case:citetext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:citingcase/cttr:usagegroup/cttr:usage/text/lnci:cite   -->
		<cttr:citingcase>
			<cttr:usagegroup>
				<cttr:usage>
					<text>
						<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</text>
				</cttr:usage>
			</cttr:usagegroup>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:annot/case:citations/note[@display-name=&#34;Catchwords&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="note[@display-name=&#34;Catchwords&#34;]/p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classificationclassscheme="words-and-phrases"   -->
		<!--  Could not determine target element or attribute name:  <classify:classificationclassscheme="words-and-phrases">  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </classify:classificationclassscheme="words-and-phrases">  -->

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

</xsl:stylesheet>