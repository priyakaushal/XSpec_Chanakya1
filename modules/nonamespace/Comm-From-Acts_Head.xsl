<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Head">
  <title>Head <lnpid>id-NZ02-22808</lnpid></title>
  <body>
    <p><targetxml>legis:legis/legis:head</targetxml> is created as described in the
      Introduction.</p>
    <section>
      <title>legis:head</title>
      <p>
                <note>COMMENTARYDOC has no corresponding legis:head information.  </note>
      </p>
        
      <p>Create <targetxml>/legis:head/jurisinfo:legisbodyinfo</targetxml> with no children <ul>
                    <li>
                      <pre>
                   
                        &lt;!-- Commentary Documents for Legis Acts --&gt;

                   &lt;legis:head&gt;
                        &lt;jurisinfo:legisbodyinfo/&gt;
                    &lt;/legis:head&gt;

                    
                    </pre>
                    </li>
                </ul>
            </p>
        </section>
  </body>
	</dita:topic>

</xsl:stylesheet>