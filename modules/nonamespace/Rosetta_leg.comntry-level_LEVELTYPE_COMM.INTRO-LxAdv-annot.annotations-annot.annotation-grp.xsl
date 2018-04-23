<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-level_LEVELTYPE_COMM.INTRO-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry/level @leveltype="comm.intro"</sourcexml> to <targetxml>annot:annotations/annot:annotation-grp</targetxml> <lnpid>id-CCCC-10373</lnpid></title>
  <body>
   <section>
     <p>
       <ul>         
           <li><sourcexml>@leveltype="comm.intro"</sourcexml>
             <b>becomes</b>
             <targetxml>annot:annotation-grp</targetxml> with optional attributes and child elements converted as: <ul>
               <li><sourcexml>@subdoc</sourcexml>
                 <b>becomes</b>
                 <targetxml>@includeintoc</targetxml></li>
               <li><sourcexml>@toc-caption</sourcexml>
                 <b>becomes</b>
                 <targetxml>@alternatetoccaption</targetxml></li>
               <li><sourcexml>heading/@searchtype</sourcexml>
                 <b>becomes</b>
                 <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
               </li>
               <li><sourcexml>refpt</sourcexml>
                 <b>becomes</b>
                 <targetxml>ref:anchor</targetxml> and must be the first child in the sequence.
                 Refer to the <xref href="Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>
                 section for more information.</li>
               <li><sourcexml>heading/edpnum</sourcexml>
                 <b>becomes</b>
                 <targetxml>heading/desig</targetxml></li>
               <li><sourcexml>heading/title</sourcexml>
                 <b>becomes</b>
                 <targetxml>heading/title</targetxml></li>
               <li><sourcexml>bodytext</sourcexml>
                 <b>becomes</b>
                 <targetxml>annot:annotation/bodytext</targetxml></li>
             </ul>
           </li>
       </ul> 
       
       <pre>
              <b><i>Example: Source XML 1</i></b>                 

&lt;leg:comntry&gt;
    &lt;level id="PFI_CODES.SGM_COMM.INTRO_1" leveltype="comm.intro" toc-caption="FOREWORD" subdoc="true"&gt;
        &lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;FOREWORD&lt;/title&gt;&lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;&lt;text&gt;As the Minister for Finance, Superannuation and.....&lt;/text&gt;&lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/leg:comntry&gt;
</pre>
       <pre>
              <b><i>Example: Target XML 1</i></b>
              

&lt;annot:annotations&gt;
		&lt;annot:annotation-grp xml:id="PFI_CODES.SGM_COMM.INTRO_1" grptype="COMMENTARY" alternatetoccaption="FOREWORD" includeintoc="true"&gt;
			&lt;heading&gt;&lt;title&gt;FOREWORD&lt;/title&gt;&lt;/heading&gt;
			&lt;annot:annotation&gt;
				&lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;As the Minister for Finance, Superannuation and.....&lt;/text&gt;&lt;/p&gt;
				&lt;/bodytext&gt;
			&lt;/annot:annotation&gt;
	 &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

       </pre>
       
       <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2</i></b>                 

&lt;leg:comntry&gt;
    &lt;level id="AEFP_ASX3.SGM_COMM.INTRO_8" leveltype="comm.intro" toc-caption="Appendices to ASX Operating Rules Procedures" subdoc="true"&gt;
        &lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;Appendices to ASX Operating Rules Procedures&lt;/title&gt;&lt;/heading&gt;
        &lt;level id="AEFP_ASX3.SGM_GROUP_9" leveltype="group" toc-caption="Contents" subdoc="true"&gt;
            &lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;Contents&lt;/title&gt;&lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
               &lt;p&gt;&lt;table frame="none" pgwide="1"&gt;
                      &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
                        &lt;colspec colwidth="65*" colname="col1" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="205*" colname="col2" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="30*" colname="col3" align="right" colsep="0" rowsep="0"/&gt;
                        &lt;tbody valign="top"&gt;
                            &lt;row rowsep="0"&gt;
                                &lt;entry morerows="0" colsep="0" rowsep="0"&gt;SECTION 1&lt;/entry&gt;
                                ....
                            &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/leg:comntry&gt;
</pre>
       <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2</i></b>
              
&lt;annot:annotations&gt;
	&lt;annot:annotation-grp xml:id="AEFP_ASX3.SGM_COMM.INTRO_8" grptype="COMMENTARY" alternatetoccaption="Appendices to ASX Operating Rules Procedures" includeintoc="true"&gt;
		&lt;heading&gt;&lt;title&gt;Appendices to ASX Operating Rules Procedures&lt;/title&gt;&lt;/heading&gt;
		&lt;annot:annotation-grp xml:id="AEFP_ASX3.SGM_GROUP_9" grptype="COMMENTARY" alternatetoccaption="Contents" includeintoc="true"&gt;
		  &lt;heading&gt;&lt;title&gt;Contents&lt;/title&gt;&lt;/heading&gt;
		  &lt;annot:annotation&gt;
			  &lt;bodytext&gt;
				  &lt;p&gt;&lt;table frame="none" pgwide="1"&gt;
                        &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
                        &lt;colspec colwidth="65*" colname="col1" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="205*" colname="col2" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="30*" colname="col3" align="right" colsep="0" rowsep="0"/&gt;
                        &lt;tbody valign="top"&gt;
                              &lt;row rowsep="0"&gt;
                                  &lt;entry morerows="0" colsep="0" rowsep="0"&gt;SECTION 1&lt;/entry&gt;
                                  ....
                              &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;&lt;/p&gt;
			     &lt;/bodytext&gt;
		     &lt;/annot:annotation&gt;
	    &lt;/annot:annotation-grp&gt;
	&lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;
       </pre>
       
       <note>For the scenario, <sourcexml>leg:comntry/level/glp:note</sourcexml> add a
         attribute value <targetxml>@notetype="xref"</targetxml> to note in order to
         distinguish from other notes.</note>
       <note>Refer common markup for handling of <xref href="Rosetta_glp.note-Chof-leg.comntry_level-LxAdv-annot.annotation_bodytext_note.dita">glp:note</xref>.</note>
       <note>For handling of <sourcexml>glp:note/blockquote/hrule</sourcexml> omit
         <sourcexml>hrule</sourcexml> and presentation stylesheet will handle
         formatting.</note>
      
     </p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_COMM.INTRO-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

<!-- ****************************************************************************************************
	This file is so completely identical except in attribute value of the matching "level" element, that 
	the functionality has been moved to 
	/XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_leg.comntry-level_LEVELTYPE_GROUP-LxAdv-annot.annotations-annot.annotation-grp.xsl
	THIS MODULE IS INACTIVE.
	- JL
	****************************************************************************************************
	-->
	
</xsl:stylesheet>