<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelstatus">
              <title>leg:levelstatus <lnpid>id-AU19LA-22016</lnpid></title>
              <body>
                            <section>
                                          <ul>
                                                  <li>The conversion for
                                                  <sourcexml>leg:levelstatus</sourcexml> is based on
                                                  the following scenarios: 
                                                  <ul>
                                                  <li>For
                                                  <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus
                                                  @ln.user-displayed="false" @isrepealed="true"
                                                  </sourcexml> When these attributes with the
                                                  following values
                                                  <sourcexml>[@ln.user-displayed="false"]
                                                  [@isrepealed="true"]</sourcexml> are present, then
                                                  the text "(Repealed)" is dropped. 
                                                               
                                                                <b>becomes</b>
                                                                
                                                  <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>
                                                  
																									</li>
																									
																									
																									<li>For
                                                  <sourcexml>/LEGDOC/leg:body/leg:info/leg:status statuscode="historical"
                                                  </sourcexml> When these attributes with the following values
                                                  <sourcexml> [@statuscode="historical"]</sourcexml> are present the mapping to admindoc
                                                               
                                                                <b>becomes</b>
                                                                
                                                  <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="historical"]</targetxml>                                                 
                                                  
                                                 
                                                                <note>Include the
                                                  <targetxml>@statuscode</targetxml> in element
                                                  <targetxml>admindoc:status</targetxml> to
                                                  represent final disposition or for a more
                                                  descriptive status explanation.</note>
                                                  <b><i>Example: Source XML 1</i></b>
                                                  <pre>
	
&lt;leg:level id="ASXLRN.RUL.C3.CL3-2"&gt;
&lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="cl 3.2"&gt;
   &lt;leg:levelinfo&gt;
         &lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
    &lt;/leg:levelinfo&gt;
&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
                                                  <pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;admindoc:level xml:id="ASXLRN.RUL.C3.CL3-2" alternatetoccaption="cl 3.2" includeintoc="true" leveltype="clause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"/&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

            </pre>
                                                  </li>
                                                  <li>If the
                                                  <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                                                  with no text in that then <b>becomes</b>
                                                  <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="repealed"]</targetxml>. <pre>
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="ASXLRN.RUL.C1.CL1-2-1"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"/&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

 </pre>
                                                  <pre>
              <b><i>Example: Target XML 2</i></b>
            

&lt;admindoc:level xml:id="ASXLRN.RUL.C1.CL1-2-1" alternatetoccaption="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="repealed"/&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

            </pre>
                                                  </li>
                                                  <li>If the
                                                  <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
                                                  then suppress the element. <pre>
              <b><i>Example: Source XML 3</i></b>
    &lt;leg:level id="ASXLRH.21DEC06.20061221.BODY"&gt;
        &lt;leg:level-vrnt leveltype="leg-inst" searchtype="LEGISLATION LEG-INST"&gt;
          &lt;leg:levelinfo&gt;
             &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
          &lt;/leg:levelinfo&gt;

		...
       &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;

</pre>
                                                  <pre>

              <b><i>Example: Target XML 3</i></b>
            

&lt;admindoc:level xml:id="ASXLRH.21DEC06.20061221.BODY" leveltype="instrument"&gt;
		...
&lt;/admindoc:level&gt;

            </pre>
                                                  </li>

                                                  <li>If the
                                                  <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@statuscode="historical"]</sourcexml>
                                                  then output <b>becomes</b>
                                                  <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="historical"]</targetxml>. <pre>
              <b><i>Example: Source XML 4</i></b>

&lt;leg:body&gt;
	&lt;leg:info&gt;
		&lt;leg:status statuscode="historical"/&gt;
		
		...
  &lt;/leg:info&gt;

 </pre>
                                                  <pre>
              <b><i>Example: Target XML 4</i></b>
            

&lt;admindoc:level&gt;
	&lt;admindoc:levelinfo&gt;
		&lt;admindoc:status statuscode="historical"/&gt;
	&lt;/admindoc:levelinfo&gt;
			...
&lt;/admindoc:level&gt;

            </pre>
                                                  </li>                                                  
                                                  
                                                  
                                                  </ul>
                                                  </li>
                                          </ul>
                                          
                                          


                                          
                            </section>
                            <section>
                                          <title>Changes</title>
                                          <p>2013-08-27: <ph id="change_20130827_WL">Updated
                                                  instructions for the scenario when
                                                  [@ln.user-displayed="false"] [@isrepealed="true"]
                                                  are present . Discussion Board: R4.5 Post
                                                  Iterative Testing Issue List: Clarification needed
                                                  for admindoc:status</ph></p>
                            </section>
              </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_leg.levelstatus.dita  -->


	<xsl:template match="leg:levelinfo">
	   <xsl:if test="leg:status/@statuscode or leg:levelstatus[@isrepealed='true' or node()] or /LEGDOC/leg:body/leg:info/leg:status/@statuscode">
			<admindoc:levelinfo>
			   <xsl:apply-templates select="@*"/>
			   <xsl:if test=" /LEGDOC/leg:body/leg:info/leg:status/@statuscode and not(leg:levelstatus[@isrepealed='true' or node()])">
			      <admindoc:status>
			         <xsl:copy-of select="/LEGDOC/leg:body/leg:info/leg:status/@statuscode"/>
			      </admindoc:status>
			   </xsl:if>
			</admindoc:levelinfo>
	   </xsl:if>
	</xsl:template>

	<xsl:template match="leg:levelstatus">
	   <xsl:if test="@isrepealed='true' or node() or /LEGDOC/leg:body/leg:info/leg:status/@statuscode">
		<admindoc:status>
			<xsl:apply-templates select="@*"/>
		   <xsl:copy-of select="/LEGDOC/leg:body/leg:info/leg:status/@statuscode"/>
			<xsl:if test="not(@ln.user-displayed='false')">
				<xsl:apply-templates/>
			</xsl:if>
		</admindoc:status>
	   </xsl:if>
	</xsl:template>

	<xsl:template match="leg:levelstatus/@isrepealed">
		<xsl:if test=".='true'">
			<xsl:attribute name="statuscode">repealed</xsl:attribute>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="leg:levelstatus/@ln.user-displayed" priority="35"/>
	
	<xsl:template match="leg:status"/>
	
	
</xsl:stylesheet>