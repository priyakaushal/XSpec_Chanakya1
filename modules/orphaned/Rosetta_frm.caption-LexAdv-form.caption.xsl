<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_frm.caption-LexAdv-form.caption"> 
		<title><sourcexml>frm:caption</sourcexml> to <targetxml>form:caption</targetxml> <lnpid>id-CCCC-10559</lnpid></title>
		<body>
			<section>
				<p><sourcexml>frm:caption</sourcexml> becomes <targetxml>form:caption</targetxml>.</p>
				<p><sourcexml>frm:braceblock</sourcexml> becomes <targetxml>form:braceblock</targetxml>.</p>
				<p><sourcexml>frm:bracein</sourcexml> becomes <targetxml>form:bracein</targetxml>.</p>
				<p><sourcexml>frm:braceout</sourcexml> becomes <targetxml>form:braceout</targetxml>.</p>        
				<p>The content of both <sourcexml>frm:bracein</sourcexml> and <sourcexml>frm:braceout</sourcexml> is mapped as follows (COMMENTARYDOC):
					<ul>
						<li><sourcexml>p</sourcexml> elements within both <sourcexml>frm:bracein</sourcexml> and <sourcexml>frm:braceout</sourcexml>:
							<ul>
								<li>Each <sourcexml>p</sourcexml> should become a <targetxml>form:line</targetxml>.</li>
								<li>The handling of the child <sourcexml>text</sourcexml> elements depends on whether <sourcexml>@align</sourcexml> is present on <sourcexml>text</sourcexml>.
									<ul>
										<li>When <sourcexml>text/@align</sourcexml> is not present, the PCDATA of the <sourcexml>text</sourcexml> element should be treated as PCDATA of the parent <targetxml>form:line</targetxml>.</li>
										<li>When <sourcexml>text/@align</sourcexml> is present, the <sourcexml>text</sourcexml> element becomes <targetxml>form:quad</targetxml> and the <sourcexml>text/@align</sourcexml> attribute should be used to create the <targetxml>form:quad/@align</targetxml> attribute.</li>    
									</ul>
								</li>
								<li>Children of <sourcexml>text</sourcexml> should be processed accordingly as children of the resulting <targetxml>form:line</targetxml> or <targetxml>form:quad</targetxml> parent.</li>
								<li>It is possible that the <sourcexml>p</sourcexml> may have multiple <sourcexml>text</sourcexml> children.
									<ul>
										<li>If so, they should be processed in document order according to the instructions above.</li>
										<li>While technically possible, it is not expected to encounter paragraphs that have multiple <sourcexml>text</sourcexml> children where some use <sourcexml>@align</sourcexml> and others do not.</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><sourcexml>frm:case-name</sourcexml> elements within <sourcexml>frm:bracein</sourcexml>:
							<ul>
								<li><sourcexml>frm:case-name</sourcexml> becomes <targetxml>form:casename</targetxml></li>
								<li><sourcexml>frm:party</sourcexml> becomes <targetxml>form:party</targetxml></li>
								<li><sourcexml>frm:procphrase</sourcexml> becomes <targetxml>form:procphrase</targetxml></li>
								<li>The handling of the child <sourcexml>text</sourcexml> elements within 
									<sourcexml>frm:party</sourcexml> and <sourcexml>frm:procphrase</sourcexml> depends on 
									whether <sourcexml>@align</sourcexml> is present on <sourcexml>text</sourcexml>, and if the source 
									<sourcexml>text</sourcexml> element is empty.
									<ul>
										<li>When <sourcexml>text</sourcexml> is empty (or contains only whitespace), <sourcexml>text</sourcexml>  
											becomes an empty <targetxml>proc:nl</targetxml> element within the target <targetxml>form:party</targetxml> 
											or <targetxml>form:procphrase</targetxml> element.</li>
										<li>When <sourcexml>text/@align</sourcexml> is present, the <sourcexml>text</sourcexml> element becomes 
											<targetxml>form:quad</targetxml> and the <sourcexml>text/@align</sourcexml> attribute should be used 
											to create the <targetxml>form:quad/@align</targetxml> attribute. The content of the <sourcexml>text</sourcexml> 
											element maps to be content of the target <targetxml>form:quad</targetxml> element.</li>    
										<li>When <sourcexml>text/@align</sourcexml> is not present and <sourcexml>text</sourcexml> contains non-whitespace PCDATA, 
											the content of the <sourcexml>text</sourcexml> element maps 
											to be content of the target <targetxml>form:party</targetxml> or <targetxml>form:procphrase</targetxml> element.</li>
									</ul>
								</li>
								<li>Children of <sourcexml>text</sourcexml> should be processed accordingly as children of the 
									resulting target <targetxml>form:party</targetxml>, <targetxml>form:procphrase</targetxml> 
									or <targetxml>form:quad</targetxml> parent.</li>
								<li>It is possible that the <sourcexml>frm:party</sourcexml> and <sourcexml>frm:procphrase</sourcexml> elements 
									may have multiple <sourcexml>text</sourcexml> children.
									<ul>
										<li>If so, they should be processed in document order according to the instructions above.</li>
										<li>While technically possible, it is not expected to encounter paragraphs that have 
											multiple <sourcexml>text</sourcexml> children where some use <sourcexml>@align</sourcexml> and others do not.</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
			<example>
				<title>Example 1: frm:caption Source XML</title>
				<codeblock>
<![CDATA[
    <frm:caption>
      <frm:braceblock>
        <frm:bracein>
          <p>
            <text align="left">BETWEEN:</text>
            <text align="left">*</text>
            <text align="right">PETITIONER*</text>
          </p>
          <p>
            <text>AND</text>
          </p>
        </frm:bracein>
        <frm:braceout>
          <p>
            <text align="left">*</text>
          </p>
          <p>
            <text align="right">RESPONDENT*</text>
          </p>
          <p>
            <text align="left">AFFIDAVIT SUPPORTING ORDER APPROVING SALE</text>
          </p>
        </frm:braceout>
      </frm:braceblock>
    </frm:caption>
]]>
            </codeblock>
				
				<title>Example 1: form:caption Target XML</title>
				<codeblock>
<![CDATA[
      <form:caption>
        <form:braceblock>
          <form:bracein>
            <form:line>
              <form:quad align="left">BETWEEN</form:quad>
              <form:quad align="left">*</form:quad>
              <form:quad align="right">PETITIONER</form:quad>
            </form:line>
          </form:bracein>
          <form:braceout>
            <form:line>
              <form:quad align="left">*</form:quad>
            </form:line>
            <form:line>
              <form:quad align="right">RESPONDENT</form:quad>
            </form:line>
            <form:line>
              <form:quad align="left">AFFIDAVIT SUPPORTING ORDER APPROVING SALE</form:quad>
            </form:line>
          </form:braceout>
        </form:braceblock>
      </form:caption>
]]>
	        </codeblock>
			</example>
			<example>
				<title>Example 2: frm:caption Source XML</title>
				<codeblock>
          <![CDATA[
    <frm:caption>
      <frm:braceblock>
        <frm:bracein>
          <p>
            <text>SEVERALLY SWORN before me at the City of
                          <frm:prompt>________________________</frm:prompt>, in<nl/> the
                        Municipality of<frm:prompt>____________</frm:prompt>,<nl/> this
                          <frm:prompt>____________</frm:prompt>day
                          of<frm:prompt>____________</frm:prompt>,<nl/> 19
                          <frm:prompt>_______</frm:prompt>.<nl/> A Commissioner, etc.</text>
          </p>
        </frm:bracein>
        <frm:braceout>
          <p>
            <text align="left">
              <frm:prompt>________________________________________________________</frm:prompt>
              <nl/>
              <frm:prompt>________________________________________________________</frm:prompt>
              <nl/>
              <frm:prompt>________________________________________________________</frm:prompt>
            </text>
          </p>
        </frm:braceout>
      </frm:braceblock>
    </frm:caption>
]]>
        </codeblock>
				
				<title>Example 2: form:caption Target XML</title>
				<codeblock>
          <![CDATA[
      <form:caption>
        <form:braceblock>
          <form:bracein>
            <form:line>SEVERALLY SWORN before me at the City of
                            <form:prompt>________________________</form:prompt>, in<proc:nl/> the
                          Municipality of<form:prompt>____________</form:prompt>,<proc:nl/> this
                            <form:prompt>____________</form:prompt>day
                            of<form:prompt>____________</form:prompt>,<proc:nl/> 19
                            <form:prompt>_______</form:prompt>.<proc:nl/> A Commissioner, etc.</form:line>
          </form:bracein>
          <form:braceout>
            <form:line>
              <form:prompt>________________________________________________________</form:prompt>
              <proc:nl/>
              <form:prompt>________________________________________________________</form:prompt>
              <proc:nl/>
              <form:prompt>________________________________________________________</form:prompt>
            </form:line>
          </form:braceout>
        </form:braceblock>
      </form:caption>
]]>
        </codeblock>
			</example>
			<example>
				<title>Example 3: frm:caption with frm:case-name: Source XML</title>
				<codeblock>
          <![CDATA[
<frm:caption>
<frm:braceblock>
	<frm:bracein>
		<frm:case-name>
			<frm:party>
				<text align="left">CRYOLIFE, INC.,</text>
				<text/>
				<text align="right">Plaintiff,</text>
			</frm:party>
			<frm:procphrase>
				<text align="center">v.</text>
			</frm:procphrase>
			<frm:party>
				<text align="left">C.R. BARD, INC., DAVOL, INC., and MEDAFOR,
                        INC.,</text>
				<text/>
				<text align="right">Defendants.</text>
				<text/>
			</frm:party>
		</frm:case-name>
	</frm:bracein>
	<frm:braceout>
		<p>
			<text align="left">C.A. No. 14-559-SLR</text>
		</p>
	</frm:braceout>
</frm:braceblock>
</frm:caption>
]]>
        </codeblock>
				
				<title>Example 2: form:caption with form:casename: Target XML</title>
				<codeblock>
<![CDATA[
<form:caption>
	<form:braceblock>
		<form:bracein>
			<form:casename>
				<form:party>
					<form:quad align="left">CRYOLIFE, INC.,</form:quad>
					<proc:nl/>
					<form:quad align="right">Plaintiff,</form:quad>
				</form:party>
				<form:procphrase>
					<form:quad align="center">v.</form:quad>
				</form:procphrase>
				<form:party>
					<form:quad align="left">C.R. BARD, INC., DAVOL, INC., and MEDAFOR,
                            INC.,</form:quad>
					<proc:nl/>
					<form:quad align="right">Defendants.</form:quad>
					<proc:nl/>
				</form:party>
			</form:casename>
		</form:bracein>
		<form:braceout>
			<form:line>
				<form:quad align="left">C.A. No. 14-559-SLR</form:quad>
			</form:line>
		</form:braceout>
	</form:braceblock>
</form:caption>
]]>
        </codeblock>
			</example>
			
			
			<section>
				<title>Changes</title>
				<p>2017-03-01: <ph id="change_20170301_snb">LPA 2016 enhancements: Added mapping for 
					><sourcexml>frm:caption</sourcexml> to <targetxml>form:caption</targetxml> for LPA 
					Briefs and Pleadings Captions changes. Mappings based upon existing logic in 
					CA10 CI, but with mods for new Rosetta frm:case-name element and its descendants, and 
					also a change to map empty <sourcexml>text</sourcexml> elements within  
					<sourcexml>frm:party</sourcexml> and <sourcexml>frm:procphrase</sourcexml> to become 
					<targetxml>proc:nl</targetxml>.</ph></p>
			</section>
		</body>
		
	 </dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest/Rosetta_frm.caption-LexAdv-form.caption.dita -->
	<xsl:message>Rosetta_frm.caption-LexAdv-form.caption.xsl requires manual development!</xsl:message> 
	

	
	


	

</xsl:stylesheet>
