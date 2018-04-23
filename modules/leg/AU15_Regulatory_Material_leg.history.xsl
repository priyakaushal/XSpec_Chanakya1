<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.history">
	<title>leg:history <lnpid>id-AU15-20812</lnpid></title>
	<body>
		<section>
			<ul>
				<li class="- topic/li ">
					<sourcexml>leg:history</sourcexml>
					<b class="+ topic/ph hi-d/b ">Becomes</b>
					<targetxml>admindoc:histgrp/admindoc:histitem/bodytext</targetxml> with optional
					child elements <sourcexml>leg:history/leg:heading</sourcexml>
					<b class="+ topic/ph hi-d/b ">becomes</b>
					<targetxml>admindoc:histgrp/heading</targetxml> and the child elements will be
					converted as: <ul class="- topic/ul ">
						<li class="- topic/li ">
							<sourcexml>leg:history/p/text</sourcexml> becomes
								<targetxml>admindoc:histgrp/admindoc:histitem/bodytext/p/text</targetxml>
							and populated as: <pre xml:space="preserve" class="- topic/pre ">
              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>

&lt;leg:history&gt;
     &lt;leg:heading&gt;
     	&lt;title&gt;History of Amendments&lt;/title&gt;
     &lt;/leg:heading&gt;
       &lt;p&gt;
        &lt;text&gt;The Credit Reporting Code of Conduct (F2009B00170) (&amp;ldquo;the Code&amp;rdquo;) is effective from 24&amp;nbsp;September 1991.....&lt;/text&gt;
       &lt;/p&gt;
	   ...
&lt;/leg:history&gt;     
 
</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:histgrp&gt;
	&lt;heading&gt;
		&lt;title&gt;History of Amendments&lt;/title&gt;
	&lt;/heading&gt;
	&lt;admindoc:histitem&gt;
	  &lt;bodytext&gt;
		 &lt;p&gt;
	       &lt;text&gt;The Credit Reporting Code of Conduct (F2009B00170) (&amp;ldquo;the Code&amp;rdquo;) is effective from 24&amp;nbsp;September 1991.....&lt;/text&gt;
	     &lt;/p&gt;
		 ...
	  &lt;/bodytext&gt;
	&lt;/admindoc:histitem&gt;
&lt;/admindoc:histgrp&gt;


</pre>
						</li>
						<li class="- topic/li "> The conversion of
								<sourcexml>leg:history/leg:tableofamend</sourcexml> is based on the
							following scenarios: <ul class="- topic/ul ">
								<li class="- topic/li ">
									<sourcexml>leg:tableofamend/heading</sourcexml>
									<b class="+ topic/ph hi-d/b ">Becomes</b>
									<targetxml>admindoc:histgrp[@grptype="tableofamend"]/heading</targetxml>,
									this is for capturing the heading information.</li>
								<li class="- topic/li ">
									<sourcexml>leg:tableofamend/table</sourcexml>
									<b class="+ topic/ph hi-d/b ">Becomes</b>
									<targetxml>admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table</targetxml>
									<note class="- topic/note ">Add the attribute value
											<sourcexml>@grptype="tableofamend"</sourcexml> to
											<targetxml>admindoc:histgrp</targetxml>.</note>
								</li>
							</ul>
							<p class="- topic/p ">Below examples show the handling of
									<sourcexml>leg:tableofamend</sourcexml>:</p>
							<pre xml:space="preserve" class="- topic/pre ">
	<b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Source XML 2</i></b>
&lt;leg:history&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;The Telecommunications Numbering Plan 1997 was made by the Australian
	Communications Authority, notified in Gaz S 553 of 23 December 1997 and commenced
	on 31 December 1997. Reprinted as at 31 July 2001.&lt;/text&gt;&lt;/p&gt;
     &lt;leg:tableofamend&gt;
       &lt;table&gt;
          &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
               &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
               &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
               &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
               &lt;thead&gt;
               	&lt;row&gt;
             			&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
               	&lt;/row&gt;
               &lt;/thead&gt;
           &lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;
</pre>
							<pre xml:space="preserve" class="- topic/pre ">
				<b class="+ topic/ph hi-d/b "><i class="+ topic/ph hi-d/i ">Example: Target XML 2</i></b>

&lt;admindoc:histgrp&gt;
	&lt;heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
	&lt;/heading&gt;
	&lt;admindoc:histitem&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;The Telecommunications Numbering Plan 1997 was made by the Australian Communications Authority, notified in Gaz S 553 of 23 December 1997 and commenced on 31 December 1997. Reprinted as at 31 July 2001.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/admindoc:histitem&gt;
	&lt;admindoc:histgrp grptype="tableofamend"&gt;
		&lt;admindoc:histitem&gt;
			&lt;bodytext&gt;
				&lt;table&gt;
               		&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                 		&lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
                 		&lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
                 		&lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
                 		&lt;thead&gt;
                 			&lt;row&gt;
                 				&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                 			&lt;/row&gt;
                		&lt;/thead&gt;
                	&lt;/tgroup&gt;
               &lt;/table&gt;
			&lt;/bodytext&gt;
		&lt;/admindoc:histitem&gt;
	&lt;/admindoc:histgrp&gt;	
&lt;/admindoc:histgrp&gt;

			</pre>
						</li>
					</ul>
				</li>
			</ul>
		</section>
	</body>
	</dita:topic>


	<xsl:template match="leg:history[parent::leg:prelim or parent::leg:levelprelim]">
		
		<!--  Original Target XPath:  admindoc:prelim/admindoc:histgrp/admindoc:histitem   -->
		<admindoc:histgrp>
			<xsl:if test="leg:tableofamend">
				<xsl:attribute name="grptype">tableofamend</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="leg:heading|leg:tableofamend/leg:heading"/>
			<admindoc:histitem>
				<bodytext>
					<xsl:apply-templates select="@* | node() except(leg:heading)"/>
				</bodytext>
			</admindoc:histitem>
		</admindoc:histgrp>
		
		
	</xsl:template>
	
	<xsl:template match="leg:history/leg:tableofamend">
		
		<!--  Original Target XPath:  admindoc:histgrp/admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table   -->
			<xsl:apply-templates select="@* | node() except(leg:heading)"/>
	
		
	</xsl:template>

</xsl:stylesheet>