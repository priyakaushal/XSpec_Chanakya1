<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-comm.info">
   <title>comm:info/pubdate/date <lnpid>id-UK08CA-28610</lnpid></title>
   <body>
      <section>
        <p><sourcexml>comm:info/pubdate/date</sourcexml> <b>Becomes</b> <targetxml>pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml>.
              <note><targetxml>pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml> will become as a child of <targetxml>/admindoc:admindoc/doc:metadata</targetxml></note>
              And populated as below:
        </p>
      </section>
   	<codeblock>
   		
   		&lt;comm:info&gt;
   		&lt;pubdate&gt;&lt;date month="08" year="2004"&gt;August 2004&lt;/date&gt;&lt;/pubdate&gt;
   		&lt;/comm:info&gt;
   		
   	</codeblock>
   	Becomes
   	<codeblock>
   		
   		&lt;doc:metadata&gt;
   		&lt;pubinfo:pubinfo&gt;
   		&lt;pubinfo:dates&gt;
   		&lt;pubinfo:pubdate year="2004" month="08"&gt;
   		&lt;date-text&gt;August 2004&lt;/date-text&gt;
   		&lt;/pubinfo:pubdate&gt;
   		&lt;/pubinfo:dates&gt;
   		&lt;/pubinfo:pubinfo&gt;
   		&lt;!-- ETC. --&gt;
   		&lt;/doc:metadata&gt;
   		
   	</codeblock>
   </body>
	</dita:topic>

	<xsl:template match="comm:info/pubdate/date">

		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate   -->
		<pubinfo:pubinfo>
			<pubinfo:dates>
				<pubinfo:pubdate>
					<xsl:apply-templates select="@* | node()"/>
				</pubinfo:pubdate>
			</pubinfo:dates>
		</pubinfo:pubinfo>

	</xsl:template>

</xsl:stylesheet>