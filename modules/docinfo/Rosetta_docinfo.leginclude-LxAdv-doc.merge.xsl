<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.leginclude-LxAdv-doc.merge">
    <title><sourcexml>docinfo:leginclude</sourcexml> to <targetxml>doc:merge</targetxml> <lnpid>id-CCCC-10537</lnpid></title>
    <body>
        <section>
            <p><sourcexml>docinfo:leginclude</sourcexml> becomes
                    <targetxml>doc:docinfo/doc:merge[@contenttype="legislation"]. </targetxml>
            </p><p>For more confirmation please see below example:</p>
            <b>Example: 1.</b>
            <pre>
&lt;docinfo&gt;
    ...
    &lt;docinfo:leginclude&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;UK_SI 2008 3229 Title&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/docinfo:leginclude&gt;
&lt;/docinfo&gt;


<b>Becomes</b>
           
&lt;doc:docinfo&gt;
    ...
    &lt;doc:merge contenttype="legislation"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:content&gt;UK_SI 2008 3229 Title&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/doc:merge&gt;
&lt;/doc:docinfo&gt;

</pre>
        </section>
        <section>
            <title>Change Log</title>
            <p>2016-02-29: <ph id="change_20160229_jm">Usage note, not a rule change. Supports UK One Truth project. Applicable for any stream where the data occur.</ph></p>
            <p>2016-02-24: <ph id="change_20160224_AS">Created. Applicable on UK06 and UK07, RFA#, 2748 and 2752.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.leginclude-LxAdv-doc.merge.dita  -->
	 
    <!-- Sudhanshu Srivastava
         Edited :- 19 June 2017.
         Comments :- This is content specific module handling docinfo:leginclude.
    -->
	<xsl:template match="docinfo:leginclude">
	    <doc:merge contenttype="legislation">
			<xsl:apply-templates select="@* | node()"/>
		</doc:merge>
	</xsl:template>
</xsl:stylesheet>