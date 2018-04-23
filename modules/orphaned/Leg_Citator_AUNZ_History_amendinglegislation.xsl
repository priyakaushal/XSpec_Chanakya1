<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_amendinglegislation">
  <title>Source cttr:annotations[@id="HI15"] OR cttr:annotations[@id="HP4"] <lnpid>id-AU20-22278</lnpid></title>
  
  <body>
    <section>
      <p>When <sourcexml>cttr:annotations[@id="HI15"]</sourcexml> or 
        <sourcexml>cttr:annotations[@id="HP4"]</sourcexml> exists, create 
        <targetxml>cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@grptype="amending"]</targetxml> , 
        within the <targetxml>cttr:history/primlawhist:primlawhist</targetxml> that was created by the 
        "cttr:body/cttr:content" section of this CI. Add the attribute 
        <targetxml>primlawhist:histgrp/@xml:id</targetxml> containing the value of 
        <sourcexml>cttr:annotations/@id</sourcexml>.</p>
      <p>
        <sourcexml>cttr:annotations/heading/title</sourcexml> becomes 
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/heading/title</targetxml> using standard mapping rules.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml> within 
        <targetxml>primlawhist:histgrp</targetxml>.</p>
      <p>Each <sourcexml>cttr:annot</sourcexml> becomes a separate <targetxml>primlawhist:histitem</targetxml> child 
        of the new <targetxml>primlawhist:histgrp[@grptype="amending"]</targetxml>. Perform the 
        following mappings for each <sourcexml>cttr:annot</sourcexml>:
        <ul>
          <li>For first <sourcexml>p</sourcexml> within <sourcexml>cttr:annotations id="HI15"/cttr:annot/heading/note@notetype="xref"/p/text</sourcexml> map to 
            <targetxml>primlawhist:histitem/primlawhist:histitemdiv@divtype="heading"@status="amending"/textitem</targetxml>
          </li>
          <li>For second <sourcexml>p</sourcexml> within <sourcexml>cttr:annotations id="HI15"/cttr:annot/heading/note@notetype="xref"/p/text</sourcexml> map to 
            <targetxml>primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem</targetxml>
          </li>
          <li>For each <sourcexml>p@class="HI15.4"</sourcexml> within <sourcexml>cttr:annotations id="HI15"/cttr:annot/heading/note@notetype="xref"</sourcexml> map to
            <targetxml>primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem</targetxml>
          </li>
          <li>If found in content, <sourcexml>p@class="HI15.6"</sourcexml> within <sourcexml>cttr:annotations id="HI15"/cttr:annot/heading/note@notetype="xref"</sourcexml> map to
            <targetxml>primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem</targetxml>
          </li>
          <li>Each <sourcexml>cttr:annotations/cttr:annot/leg:citations/leg:citetext</sourcexml> maps to <targetxml>textitem/ref:crossreference</targetxml>.
            See example below</li>
        </ul>
      </p>
    </section>

    <example>
      <title>Example 1: Source - Amending Legislation (HI15) Annotations</title>
      <codeblock>
&lt;cttr:annotations id="HI15"&gt;
	&lt;!-- HI14 Amending Law static label --&gt;
	&lt;heading id="HI14"&gt;
		&lt;title&gt;Amending Legislation&lt;/title&gt;
	&lt;/heading&gt;
	&lt;!-- HI15 Provision Amendments --&gt;
	&lt;cttr:annot&gt;
		&lt;heading&gt;
			&lt;title/&gt;
			&lt;note notetype="xref"&gt;
				&lt;p&gt;
					&lt;text&gt;
						&lt;lnlink id="HI15.1" service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
						&lt;lnlink id="HI15.2" service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;· bill info&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="009K"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_BIL_1994-2"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
				&lt;p class="HI15.4"&gt;
					&lt;text&gt;
						&lt;inlineobject id="HI15.3" smi="XXX" componentseq="1" key="unknown-icon" type="image"/&gt;
						&lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;Schedule 1 &amp;amp; 2&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH1PT1"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt; · commenced 1 January 2009 &lt;/text&gt;
				&lt;/p&gt;
				&lt;p class="HI15.4"&gt;
					&lt;text&gt;
						&lt;inlineobject id="HI15.3" smi="XXX" componentseq="1" key="unknown-icon" type="image"/&gt;
						&lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;Schedule 2 &amp;amp; 2&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH2"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt; · commenced 1 January 2010 &lt;/text&gt;
				&lt;/p&gt;
				&lt;p id="HI15.6"&gt;
					&lt;text&gt;NOTE: These amendments commence retrospectively&lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
		&lt;/heading&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;heading&gt;
			&lt;title/&gt;
			&lt;note notetype="xref"&gt;
				&lt;p&gt;
					&lt;text&gt;
						&lt;lnlink id="HI15.1" service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_LEG_INFO"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
						&lt;lnlink id="HI15.2" service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;· bill info&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="009K"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_BIL_1994-2"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
				&lt;p class="HI15.4"&gt;
					&lt;text&gt;
						&lt;inlineobject id="HI15.3" smi="XXX" componentseq="1" key="unknown-icon" type="image"/&gt;
						&lt;lnlink service="DOC-ID" status="valid"&gt;
							&lt;marker&gt;Schedule 1 &amp;amp; 2&lt;/marker&gt;
							&lt;api-params&gt;
								&lt;param name="dpsi" value="005X"/&gt;
								&lt;param name="remotekey1" value="DOC-ID"/&gt;
								&lt;param name="remotekey2" value="CTH_ACT_2008-135_SCH1PT1"/&gt;
							&lt;/api-params&gt;
						&lt;/lnlink&gt; · commenced 1 January 2009 &lt;/text&gt;
				&lt;/p&gt;
			&lt;/note&gt;
		&lt;/heading&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>
      <title>Example 1: Target - Amending Legislation (HI15) Annotations</title>
      <codeblock>
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
		&lt;primlawhist:histgrp xml:id="HI15" grptype="amending"&gt;
			&lt;ref:anchor id="ref-amendinglegislation"/&gt;
			&lt;heading&gt;
				&lt;title&gt;Amending Legislation&lt;/title&gt;
			&lt;/heading&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading" status="amending"&gt;
    				&lt;textitem&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;· bill info&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="009K-CTH_BIL_1994-2"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    				&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;
    					&lt;ref:inlineobject&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-params&gt;
    								&lt;proc:param name="componentseq" value="1"/&gt;
    								&lt;proc:param name="object-type" value="image"/&gt;
    								&lt;proc:param name="object-smi" value="XXX"/&gt;
    							&lt;/ref:locator-params&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:inlineobject&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;Schedule 1 &amp;amp; 2&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_2008-135_SCH1PT1"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;· commenced 1 January 2009&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;
    					&lt;ref:inlineobject&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-params&gt;
    								&lt;proc:param name="componentseq" value="1"/&gt;
    								&lt;proc:param name="object-type" value="image"/&gt;
    								&lt;proc:param name="object-smi" value="XXX"/&gt;
    							&lt;/ref:locator-params&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:inlineobject&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;Schedule 2 &amp;amp; 2&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_2008-135_SCH2"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;· commenced 1 January 2010&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem xml:id="HI15.6"&gt; NOTE: These amendments commence retrospectively &lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    		&lt;/primlawhist:histitem&gt;
    		&lt;primlawhist:histitem&gt;
    			&lt;primlawhist:histitemdiv divtype="heading" status="amending"&gt;
    				&lt;textitem&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_2008-135_LEG_INFO"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;· bill info&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="009K-CTH_BIL_1994-2"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    				&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    			&lt;primlawhist:histitemdiv divtype="text"&gt;
    				&lt;textitem&gt;
    					&lt;ref:inlineobject&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-params&gt;
    								&lt;proc:param name="componentseq" value="1"/&gt;
    								&lt;proc:param name="object-type" value="image"/&gt;
    								&lt;proc:param name="object-smi" value="XXX"/&gt;
    							&lt;/ref:locator-params&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:inlineobject&gt;
    					&lt;ref:lnlink service="DOCUMENT"&gt;
    						&lt;ref:marker&gt;Schedule 1 &amp;amp; 2&lt;/ref:marker&gt;
    						&lt;ref:locator&gt;
    							&lt;ref:locator-key&gt;
    								&lt;ref:key-name name="DOC-ID"/&gt;
    								&lt;ref:key-value value="005X-CTH_ACT_2008-135_SCH1PT1"/&gt;
    							&lt;/ref:locator-key&gt;
    						&lt;/ref:locator&gt;
    					&lt;/ref:lnlink&gt;
    				&lt;/textitem&gt;
    				&lt;textitem&gt;· commenced 1 January 2009&lt;/textitem&gt;
    			&lt;/primlawhist:histitemdiv&gt;
    		&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
	&lt;/primlawhist:primlawhist&gt;
&lt;/cttr:history&gt;
         </codeblock>
    </example>
    <example>
      <title>Example 2: Source Amending Legislation (HP4)</title>
      <codeblock>
      &lt;cttr:annotations annotgroup="HP4"&gt;
        &lt;heading&gt;
          &lt;title&gt;Amending Legislation&lt;/title&gt;
          &lt;note&gt;
            &lt;p&gt;
              &lt;text&gt;s 115(a): Words &amp;#x201C;to death, or&amp;#x201D; omitted after &amp;#x201C;be
                sentenced&amp;#x201D; on 26 December 1989 by (&lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;
                    &lt;remotelink dpsi="0069" remotekey1="REFPTID" service="DOC-ID" refpt="1989A119S3"
                      docidref="1989A119_D1_CRIMES"&gt;1989 No 119, s 3(4)&lt;/remotelink&gt;
                  &lt;/ci:content&gt;&lt;/ci:cite&gt;).&lt;/text&gt;
            &lt;/p&gt;
          &lt;/note&gt;
        &lt;/heading&gt;
...
      &lt;/cttr:annotations&gt;        
        </codeblock>
      <title>Example 2: Target - Amending Legislation (HP4) Annotations</title>
      <codeblock>
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
		&lt;primlawhist:histgrp xml:id="HP4" grptype="amending"&gt;
			&lt;ref:anchor id="ref-amendinglegislation"/&gt;
			&lt;heading&gt;
				&lt;title&gt;Amending Legislation&lt;/title&gt;
			&lt;/heading&gt;
            &lt;primlawhist:histitem&gt;
                &lt;primlawhist:histitemdiv divtype="text"&gt;
                    &lt;textitem&gt;s 115(a): Words &amp;#x201C;to death, or&amp;#x201D; omitted after &amp;#x201C;be
                        sentenced&amp;#x201D; on 26 December 1989 by (
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                           &lt;ref:content&gt;1989 No 119, s 3(4)&lt;/ref:content&gt;
                               &lt;ref:locator anchoridref="1989A119S3"&gt;
                                 &lt;ref:locator-key&gt;
                                       &lt;ref:key-name name="DOC-ID"/&gt;
                                       &lt;ref:key-value value="1989A119_D1_CRIMES"/&gt;
                                 &lt;/ref:locator-key&gt;
                               &lt;/ref:locator&gt;
                          &lt;/ref:crossreference&gt;
                   &lt;/textitem&gt;                     
              &lt;/primlawhist:histitemdiv&gt;
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
	&lt;/primlawhist:primlawhist&gt;
&lt;/cttr:history&gt;
         </codeblock>
    </example>
    <example>
      <title>Example 3: Source: cttr:annotations/cttr:annot/leg:citations</title>
      <codeblock>
   &lt;cttr:annotations id="HI15"&gt;
      &lt;!-- HI14 Amending Legislation static label   --&gt; 
      &lt;heading id="HI14"&gt;
         &lt;title&gt;Amending Legislation&lt;/title&gt; 
      &lt;/heading&gt;
      &lt;!-- HI15 Provision Amendments  --&gt; 
      &lt;cttr:annot&gt;
        &lt;heading&gt;
          &lt;title&gt;AUDIT (TRANSITIONAL AND MISCELLANEOUS) AMENDMENT ACT 1997&lt;/title&gt; 
          &lt;note notetype="xref"&gt;
            &lt;p class="bill-link"&gt;
              &lt;text&gt;
  ·             &lt;remotelink href="http://www.eg.com/"&gt;bill info&lt;/remotelink&gt; 
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/note&gt;
        &lt;/heading&gt;
        &lt;leg:citations&gt;
          &lt;heading ln.user-displayed="false" /&gt; 
            &lt;leg:citetext&gt;
             &lt;note id="CTH_ACT_1997-152_sch2.1901-2-0QQI"&gt;
               &lt;p class="line1"&gt;
                 &lt;text&gt;
                    &lt;inlineobject smi="XXX" componentseq="1" key="unknown-icon" type="image" /&gt; 
                    &lt;lnlink refpt="CTH_ACT_1997-152_sch2.1901-2"&gt;
                      &lt;marker&gt;Items 136 &amp; 137 Sch 2&lt;/marker&gt; 
                      &lt;api-params&gt;
							&lt;param name="dpsi" value="0QQI"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1997-152"/&gt;
					  &lt;/api-params&gt;
                    &lt;/lnlink&gt;
  ·                 Amendment of 1998-01-01 &lt;/text&gt;
                &lt;/p&gt;
              &lt;/note&gt;
            &lt;/leg:citetext&gt;
         &lt;/leg:citations&gt;
       &lt;/cttr:annot&gt;
       </codeblock>
      <title>Example 3: Target: primlawhist:histgrp/primlawhist:histitem/primlawhist:histitemdiv</title>
      <codeblock>
&lt;cttr:history&gt;
	&lt;primlawhist:primlawhist&gt;
		&lt;ref:anchor id="ref-history"/&gt;
		&lt;heading&gt;
			&lt;title&gt;History&lt;/title&gt;
		&lt;/heading&gt;
		...
		&lt;primlawhist:histgrp xml:id="HI15" grptype="amending"&gt;
			&lt;ref:anchor id="ref-amendinglegislation"/&gt;
			&lt;heading&gt;
				&lt;title&gt;Amending Legislation&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histitem&gt;
              &lt;primlawhist:histitemdiv divtype="heading" status="amending"&gt;
               	   &lt;textitem&gt;AUDIT (TRANSITIONAL AND MISCELLANEOUS) AMENDMENT ACT 1997&lt;/textitem&gt;
                &lt;/textitem&gt;                     
              &lt;/primlawhist:histitemdiv&gt;
              &lt;primlawhist:histitemdiv divtype="text"&gt;
                 &lt;textitem&gt; 
					&lt;ref:crossreference&gt;
						&lt;ref:content&gt;
							&lt;ref:inlineobject&gt;
								&lt;ref:locator&gt;
									&lt;ref:locator-key&gt;
										&lt;ref:key-name name="object-key"/&gt;
										&lt;ref:key-value value="unknown-icon"/&gt;
									&lt;/ref:locator-key&gt;
									&lt;ref:locator-params&gt;
										&lt;proc:param name="object-type" value="image"/&gt;
										&lt;proc:param name="object-smi" value="XXX"/&gt;
										&lt;proc:param name="componentseq" value="1"/&gt;
									&lt;/ref:locator-params&gt;
								&lt;/ref:locator&gt;
							&lt;/ref:inlineobject&gt;
							&lt;ref:lnlink&gt;
								&lt;ref:marker&gt;Items 136 &amp;amp; 137 Sch 2&lt;/ref:marker&gt;
								&lt;ref:locator anchoridref="CTH_ACT_1997-152_sch2.1901-2"&gt;
									&lt;ref:locator-key&gt;
										&lt;ref:key-name name="DOC-ID"/&gt;
										&lt;ref:key-value value="OQQI-CTH_ACT_1997-152/&gt;
									&lt;/ref:locator-key&gt;
								&lt;/ref:locator&gt;
							&lt;/ref:lnlink&gt;Amendment of 1998-01-01&lt;/ref:content&gt;
					&lt;/ref:crossreference&gt;
                &lt;/textitem&gt; 
            &lt;/primlawhist:histitemdiv&gt;
            
            
            
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
	&lt;/primlawhist:primlawhist&gt;
&lt;/cttr:history&gt;
            
        </codeblock>
    </example>    

    <section>
      <title>
        Changes:
      </title>
    	<p>2016-06-03: <ph id="change_20160603a_snb">Corrected Example 3 source markup example 
    		<sourcexml>lnlink</sourcexml> element to have 
    		<sourcexml>param</sourcexml> elements to define the DOC-ID.</ph></p>
    	<p>2016-01-13: <ph id="change_20160113c_snb">Changed mapping to create 
        <targetxml>primlawhist:histgrp[@grptype="amending"]</targetxml> 
        within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
        element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
        Moved the target of <sourcexml>cttr:annotations/heading/title</sourcexml> to be inside 
        <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
        <targetxml>primlawhist:primlawhist</targetxml> parent. Updated target markup example 
        accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211e_snb">Added instructions to create 
        <targetxml>cttr:history/primlawhist:primlawhist[@xml:id="HI14"]</targetxml>, 
        <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml>, and 
        <targetxml>primlawhist:primlawhist/heading/title</targetxml>. Changed 
        <targetxml>primlawhist:histgrp@grptype="amending"</targetxml> to be created unconditionally 
        instead of being mapped from <sourcexml>cttr:annotations[@id="HI15"]</sourcexml> 
        OR <sourcexml>cttr:annotations/[@id="HP4"]</sourcexml>. Added 
        <targetxml>primlawhist:histgrp/@xml:id</targetxml>. Added specification that each 
        <sourcexml>cttr:annot</sourcexml> becomes a separate <targetxml>primlawhist:histitem</targetxml>, 
        and that the following mappings are performed for each one. Replaced markup example 1. 
        Moved <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml> to be inside 
        <targetxml>primlawhist:histgrp</targetxml> instead of <targetxml>primlawhist:primlawhist</targetxml> 
        per presentation team request, and updated Example 1.</ph>
      </p>
      <p>2015-11-16: <ph id="change_20151116_snb">Modified example for conversion of 
        <sourcexml>cttr:annotations/cttr:annot/leg:citations</sourcexml> to have correct target
        markup matching the instruction. Target markup example was previously missing a 
        <targetxml>ref:crossreference/ref:content</targetxml> element wrapped around the inline object, 
        link and text within <targetxml>textitem</targetxml>.</ph>
      </p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_amendinglegislation.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_amendinglegislation.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@id=&#34;HI15&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@grptype="amending"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations[@id=&#34;HP4&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:history/primlawhist:primlawhist/primlawhist:histgrp[@grptype="amending"]   -->
		<cttr:history>
			<primlawhist:primlawhist>
				<primlawhist:histgrp>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histgrp>
			</primlawhist:primlawhist>
		</cttr:history>

	</xsl:template>

	<xsl:template match="cttr:annotations/@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/heading/title   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/heading/title   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv@divtype="heading"@status="amending"/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotations id=&#34;HI15&#34;/cttr:annot/heading/note@notetype=&#34;xref&#34;/p/text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv@divtype="heading"@status="amending"/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="p@class=&#34;HI15.4&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotations id=&#34;HI15&#34;/cttr:annot/heading/note@notetype=&#34;xref&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="p@class=&#34;HI15.6&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv@divtype="text"/textitem   -->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot/leg:citations/leg:citetext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  textitem/ref:crossreference   -->
		<textitem>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</textitem>

	</xsl:template>

	<xsl:template match="lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="amending"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="param"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="amending"]   -->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="cttr:annotations/[@id=&#34;HP4&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histgrp/@xml:id   -->
		<primlawhist:histgrp>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot/leg:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

</xsl:stylesheet>