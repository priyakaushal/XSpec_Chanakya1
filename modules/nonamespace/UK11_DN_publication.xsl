<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_publication">
  <title>publication <lnpid>id-UK11DN-29621</lnpid></title>
  <body>
    <section>
      <p><sourcexml>publication/inlineobject</sourcexml> becomes
          <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlineobject</targetxml>.<ul>
          <li>See the General Markup instructions for <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">inlineobject</xref> for details on how to map <sourcexml>inlineobject</sourcexml> to
              <targetxml>ref:inlineobject</targetxml>.</li>
        </ul></p></section>

    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;publication&gt;
      &lt;inlineobject type="image" mimetype="image/gif" filename="ey_logo.gif"/&gt;
    &lt;/publication&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;doc:metadata&gt;
  &lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:publicationlogo&gt;
      &lt;logo&gt;
        &lt;ref:inlineobject&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="object-key"/&gt;
              &lt;ref:key-value value="ey_logo.gif"/&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="object-type" value="IMG"/&gt;
              &lt;proc:param name="external-or-local" value="external"/&gt;
              &lt;proc:param name="object-server" value="Blobstore"/&gt;
              &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
      &lt;/logo&gt;
    &lt;/pubinfo:publicationlogo&gt;
  &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2016-11-11: <ph id="change_20161111_JM">Not a rule change directly to this module. Modified
        Example Target to reflect blobstore markup; all paramater names that formerly contained
        the word "attachment" are now "object".</ph></p>
      <p>2016-10-28: <ph id="change_20161028_JM">Not a rule change directly to this module. Modified Example Target
        to reflect blobstore markup for the parameter "object-server".</ph></p>
      <p>2016-07-29: <ph id="change_20160729_JM">Not a rule change directly to this module. Modified
        xref link for inlineobject, to point to new blobstore module; and revised Example Target
        to reflect blobstore markup.</ph></p>
      <p>2013-08-29: <ph id="change_20130829_jm">Changed target to
            <targetxml>pubinfo:publicationlogo</targetxml>; formerly mapped within
            <targetxml>copyright</targetxml>. Changed in support of Vspec/stylesheet. R4.5
          Post-Iterative Testing UK11DN Issue 354.</ph></p>
      <p>2013-07-01: <ph id="change_20130701_jm">Created instructions for
            <sourcexml>publication</sourcexml>. Element was added in June 2013 data
        redelivery</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_publication.dita  -->
 

	<xsl:template match="publication">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlineobject   -->
	  <!-- Awantika: publication/inlineobject becomes doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlineobject.
	  I don' have this scenario is golden dataset, tested from the example inlineobject is becoming figure/ref:inlineobject 
	  which is not allowed in element logo as per the schema, it should be ref:inlineobject-->
				<pubinfo:publicationlogo>
					<logo>						
							<xsl:apply-templates select="@* | node()"/>						
					</logo>
				</pubinfo:publicationlogo>
			
		

	</xsl:template>

	

</xsl:stylesheet>