<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.status">
    <title>leg:status <lnpid>id-ST04-26847</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
            <p><sourcexml>leg:status</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml>, and populated as below:</p>
            <pre> 
                <b><i>Source example based on UK content</i></b>

&lt;leg:info&gt;
    ........
    ........
    &lt;leg:status&gt;&lt;nl/&gt;At the Court at Buckingham Palace, the 28th day of November, 1910&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;PRESENT,&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;The King's Most Excellent Majesty in Council&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;The following Draft Proclamation was this day read at the Board and approved.&lt;/leg:status&gt;
    &lt;leg:status&gt;
        &lt;nl/&gt;&lt;emph typestyle="it"&gt;Almeric FitzRoy&lt;/emph&gt;
    &lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;BY THE KING&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;A Proclamation determining New Designs for Gold and Bronze Coins&lt;/leg:status&gt;
&lt;/leg:info&gt;


</pre>
                <pre>

              <b><i>Target Example</i></b>


&lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;At the Court at Buckingham Palace, the 28th day of November,
                        1910&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;PRESENT,&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;The King's Most Excellent Majesty in Council&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;The following Draft Proclamation was this day read at the Board and
                        approved.&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;&lt;emph typestyle="it"&gt;Almeric FitzRoy&lt;/emph&gt;&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;BY THE KING&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;A Proclamation determining New Designs for Gold and Bronze
                        Coins&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;

            </pre>
            <note>Multiple occurences of <sourcexml>leg:status</sourcexml> element will be captured within single instance of <targetxml>legisinfo:statusgroup</targetxml> during conversion.</note>
</li>                    
 <li>When <sourcexml>leg:status</sourcexml> element having a <sourcexml>nl</sourcexml>,
                        <sourcexml>emph</sourcexml> and <sourcexml>inlineobject</sourcexml> children
                    markup. Please refer the below snippet: <pre>
	           <b><i>Source example based on AU content</i></b>

&lt;leg:status&gt;
	&lt;nl/&gt;
	&lt;nl/&gt;
	&lt;inlineobject 
		alttext="Warning:" 
		attachment="web-server" 
		filename="au_exclaim.gif" 
		type="image"/&gt; 
		&lt;emph typestyle="bf"&gt;
			Historical Version: 17/3/2011 to 29/9/2011.
		&lt;/emph&gt;
&lt;/leg:status&gt;

                        
								</pre>
                    <pre>
	            <b><i>Target Example</i></b>
                 

&lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:statusgroup&gt;
        &lt;legisinfo:status&gt;
            &lt;legisinfo:statustext&gt;
			&lt;emph typestyle="bf"&gt;Historical Version: 17/3/2011 to 29/9/2011.&lt;/emph&gt;
           &lt;/legisinfo:statustext&gt;
           &lt;/legisinfo:status&gt;
        &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;

								</pre>
                    <pre>
              <b><i>Source example based on AU content</i></b>


&lt;leg:status&gt;
	&lt;nl/&gt;&lt;emph typestyle="bf"&gt;Consolidated as in force on &lt;date&gt;23 November 2007&lt;/date&gt;&lt;/emph&gt;
&lt;/leg:status&gt;

                </pre>
                    <pre>
              <b><i>Target Example</i></b>


&lt;legisinfo:legisinfo&gt;
	&lt;legisinfo:statusgroup&gt;
		&lt;legisinfo:status&gt;
			&lt;legisinfo:statustext&gt;
			&lt;proc:nl/&gt;
				&lt;emph typestyle="bf"&gt;
					Consolidated as in force on 
					&lt;date&gt;23 November 2007&lt;/date&gt;
				&lt;/emph&gt;
			&lt;/legisinfo:statustext&gt;
        &lt;/legisinfo:status&gt;
    &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;

								</pre>
                </li>
                
                
                <li>
                    
           
                    <p>If documents having <sourcexml>leg:status@statuscode</sourcexml> then it
                        becomes <targetxml>legisinfo:status@statuscode</targetxml> the attribute
                        value in the source XML can be directly converted into the target XML output
                        as shown in the example below. <pre>
           <b><i>Source example based on AU content</i></b>


&lt;leg:status statuscode="consolidated"&gt;

                </pre>
                        <pre> 
          <b><i>Target Example</i></b>


&lt;legisinfo:status statuscode="consolidated"&gt;

								</pre>
                    </p>
                    <note>Conversion should not create adjacent
                        <targetxml>legisinfo:legisinfo</targetxml>. Data should be
                        merged to single
                        <targetxml>legisinfo:legisinfo</targetxml>.</note>
                    <note>Conversion should not create adjacent
                        <targetxml>legisinfo:statusgroup</targetxml>. Data should be
                        merged to single <targetxml>legisinfo:statusgroup</targetxml>.
                    </note>
                </li>
            </ul>
        </section>    
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.status.dita  -->
	<xsl:message>leg.status.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:status">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		<regulation:head>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<legisinfo:legisinfo>
					<legisinfo:statusgroup>
						<legisinfo:status>
							<legisinfo:statustext>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:statustext>
						</legisinfo:status>
					</legisinfo:statusgroup>
				</legisinfo:legisinfo>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>

	<xsl:template match="nl">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

	<xsl:template match="leg:status@statuscode">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

</xsl:stylesheet>