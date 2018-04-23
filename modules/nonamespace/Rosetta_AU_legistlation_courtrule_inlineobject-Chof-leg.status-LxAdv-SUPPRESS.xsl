<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_legislation_courtrule_inlineobject_ChildOf_leg.status-to-LexisAdvance">
    <title><sourcexml>leg:status/inlineobject</sourcexml> to <lnpid>id-CCCC-10234</lnpid></title>
    <body>
        <section>
            <p><sourcexml>inlineobject</sourcexml> should be suppressed when it is a child of <sourcexml>leg:status</sourcexml>. These images are
                icons that will be handled through product requirements.</p>
        </section>
        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="leg:status/inlineobject"/>

</xsl:stylesheet>