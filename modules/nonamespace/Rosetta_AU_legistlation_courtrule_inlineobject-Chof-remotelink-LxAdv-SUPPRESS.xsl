<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita ci">

<!-- This is handled by parameters added to the Driver file. -->
	
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_legistlation_courtrule_inlineobject_ChildOf_remotelink-to-LexisAdvance">
    <title><sourcexml>remotelink/inlineobject</sourcexml> SUPPRESS <lnpid>id-CCCC-10235</lnpid></title>
    <body>
        <section>
            <p>The element <sourcexml>inlineobject</sourcexml> should be suppressed for images that
        are icons that will be handled through product requirements. Suppression is done when
          <sourcexml>inlineobject</sourcexml> is a child of <sourcexml>remotelink</sourcexml>
        <b><u>and</u></b> the grandparent of <sourcexml>inlineobject</sourcexml>  (the parent of
          <sourcexml>remotelink</sourcexml>) is <b><u>not</u></b>
        <sourcexml>ci:content</sourcexml>. In other words, suppression <b><u>does not happen</u></b>
        for the XPath <sourcexml>ci:content/remotelink/inlineobject</sourcexml> but suppression does
        happen for all other instances of the XPath
        <sourcexml>remotelink/inlineobject</sourcexml>.</p>
        </section>
      <section>
        <title>Changes</title>
        <p>2015-03-31: <ph id="change_20150331_JCG">Clarification added to specify that this rule
              <b><u>does not apply</u></b> when the grandparent of
            <sourcexml>inlineobject</sourcexml>  is <sourcexml>ci:content</sourcexml>. (WebStar
          #5895292)</ph></p>
      </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_legistlation_courtrule_inlineobject-Chof-remotelink-LxAdv-SUPPRESS.dita  -->
	<!-- JL: I don't think there is anything to do here as it is handled by other modules -->
</xsl:stylesheet>