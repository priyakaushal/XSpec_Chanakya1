<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
   <title>leg:histnote <lnpid>id-AU15-20811</lnpid></title>
   <body>
      <section>
        <ul>
<li class="- topic/li ">
                  <sourcexml>leg:histnote</sourcexml>
                  <b class="+ topic/ph hi-d/b ">Becomes</b>
                  <targetxml>note[notetype="historical"]</targetxml>

                  <pre xml:space="preserve" class="- topic/pre ">
            
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>

&lt;leg:histnote&gt;
	&lt;p&gt;&lt;text&gt;[Appendix A  subst SR 184 of 2009  r 4, effective 1 October 2010]&lt;/text&gt;&lt;/p&gt;
&lt;/leg:histnote&gt;

</pre>

                  <pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>
            

	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[Amended by S.R. 2001, No. 133,
			Applied: 24 October 2001]&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;

        </pre>

                  <pre xml:space="preserve" class="- topic/pre ">
            
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2</i></b>

&lt;leg:histnote&gt;
	&lt;p&gt;&lt;text&gt;[Appendix A  subst SR 184 of 2009  r 4, effective 1 October 2010]&lt;/text&gt;&lt;/p&gt;
&lt;/leg:histnote&gt;

            

</pre>

                  <pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2</i></b>
            

	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[Amended by S.R. 2001, No. 133,
			Applied: 24 October 2001]&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;

        </pre>
               </li>
		</ul>
      </section>
   </body>
	</dita:topic>

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[notetype="historical"]   -->
		<note notetype='historical'>
			<xsl:apply-templates select='@*'/>
			<bodytext>
				<xsl:apply-templates select="node()"/>
			</bodytext>
		</note>

	</xsl:template>

</xsl:stylesheet>