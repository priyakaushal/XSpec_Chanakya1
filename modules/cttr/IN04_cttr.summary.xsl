<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.summary">
   <title>cttr:summary <lnpid>id-IN04-38821</lnpid></title>
   <body>
      <section>
         <ul><li>
            <sourcexml>cttr:summary</sourcexml> becomes <targetxml>cttr:descriptors/cttr:descriptorsection @descriptortype="catchwords-and-digest"/casesum:editorialsummary @summarysource="lexis-casebase-editorial"</targetxml> and 
          the child element is described below :
          <ul>
               <li>
                  <sourcexml>p</sourcexml> becomes <targetxml>p</targetxml> and 
              the child element is described below :
              <ul>
                     <li>
                        <sourcexml>text</sourcexml> becomes <targetxml>text</targetxml>
                     </li>
                  </ul>
               </li>
            </ul>
        
           <pre>


 &lt;cttr:summary&gt;
                &lt;heading&gt;
                    &lt;title&gt;Held&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="it"&gt;Held: &lt;/emph&gt; In cases of lease the Legislature has
                        recognised that the equity of part-performance is an active-equity as in
                        English law and is sufficient to support an independent action by the
                        plaintiff &amp;#x0028;vide section 27-A of the Specific Relief Act.&amp;#x0029;
                        Though this section applies to contracts executed after 1st April, 1930 and
                        has no application to the present case, there can be no manner of doubt that
                        the defence under section 53-A of the Transfer of Property Act would be
                        available to a person who has an agreement of lease in his favour though no
                        lease has been executed and registered. An agreement of lease creating a
                        present demise but not registered is admissible under section 49 of the
                        Indian Registration Act as evidence of part-performance. A formal lease is
                        not necessary to attract the application of section 53-A of the Transfer of
                        Property Act. All that is required is that an agreement in writing signed by
                        the transferor should be capable of being gathered from the evidence. Where
                        there is a document which is reliable secondary evidence of the agreement to
                        lease. there can be no hesitation in holding that by an offer and an
                        acceptance made in writing and signed by the respective parties an agreement
                        was completed. &lt;/text&gt;
                &lt;/p&gt;
 &lt;/cttr:summary&gt;
            &lt;/pre&gt;


<b>Becomes</b>

&lt;casesum:editorialsummary summarysource="lexis-casebase-editorial"&gt;
    &lt;heading&gt;
        &lt;title&gt;Held&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Held: &lt;/emph&gt; In cases of lease the Legislature has
            recognised that the equity of part-performance is an active-equity as in
            English law and is sufficient to support an independent action by the
            plaintiff &amp;#x0028;vide section 27-A of the Specific Relief Act.&amp;#x0029;
            Though this section applies to contracts executed after 1st April, 1930 and
            has no application to the present case, there can be no manner of doubt that
            the defence under section 53-A of the Transfer of Property Act would be
            available to a person who has an agreement of lease in his favour though no
            lease has been executed and registered. An agreement of lease creating a
            present demise but not registered is admissible under section 49 of the
            Indian Registration Act as evidence of part-performance. A formal lease is
            not necessary to attract the application of section 53-A of the Transfer of
            Property Act. All that is required is that an agreement in writing signed by
            the transferor should be capable of being gathered from the evidence. Where
            there is a document which is reliable secondary evidence of the agreement to
            lease. there can be no hesitation in holding that by an offer and an
            acceptance made in writing and signed by the respective parties an agreement
            was completed. &lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:editorialsummary&gt;

</pre>
        </li></ul>
      </section>
     <section>
       <title>Changes</title>
       <p>2016-08-18: <ph id="change_20160818_SS">Created</ph>.</p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_cttr.summary.dita  -->
	<xsl:message>IN04_cttr.summary.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:summary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="catchwords-and-digest"/casesum:editorialsummary@summarysource="lexis-casebase-editorial"   -->
		<cttr:descriptors>
			<cttr:descriptorsection>
				<casesum:editorialsummary xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/">
					<xsl:apply-templates select="@* | node()"/>
				</casesum:editorialsummary>
			</cttr:descriptorsection>
		</cttr:descriptors>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  p   -->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  text   -->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

</xsl:stylesheet>