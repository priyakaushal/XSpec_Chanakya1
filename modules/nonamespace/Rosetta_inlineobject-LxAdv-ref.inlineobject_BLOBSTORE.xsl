<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-to-LexisAdvance_ref.inlineobject_BLOBSTORE">
  <title><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
    BLOBSTORE images <lnpid>id-CCCC-10540</lnpid></title>
  <body>
    <p>The element <sourcexml>inlineobject</sourcexml> becomes
        <targetxml>ref:inlineobject</targetxml>, with the attribute
        <sourcexml>inlineobject/@height</sourcexml> copied to
        <targetxml>ref:inlineobject/@height</targetxml> and
        <sourcexml>inlineobject/@width</sourcexml> copied to
        <targetxml>ref:inlineobject/@width</targetxml>.</p>
    <p>Then, the child element <targetxml>ref:inlineobject/ref:locator</targetxml> is created, and
      its sub-elements are created as follows: <ul>
        <li>Create <targetxml>ref:locator-key</targetxml><ul>
            <li>Create <targetxml>ref:key-name</targetxml> with attribute
                <targetxml>@name="object-key"</targetxml>.</li>
            <li>Create <targetxml>ref:key-value</targetxml> with attribute
                <targetxml>@value</targetxml> copied from
                <sourcexml>inlineobject/@filename</sourcexml>.</li>
            <li>If <sourcexml>inlineobject/@dpsi</sourcexml> is present, create a string consisting
              of "[[DPSI:", followed by the value of <sourcexml>inlineobject/@dpsi</sourcexml>,
              followed by "]]", and prepend this string to
                <targetxml>ref:key-value/@value</targetxml>. See example #2 below.</li>
          </ul></li>
        <li>Create <targetxml>ref:locator-params</targetxml> and also create standardize attribute values.<ul>
            <li>Create <targetxml>proc:param</targetxml> with attribute
                <targetxml>@name="object-type"</targetxml> and attribute
                <targetxml>@value="IMG"</targetxml>.</li>
            <li>Create <targetxml>proc:param</targetxml> with attribute
                <targetxml>@name="external-or-local"</targetxml> and attribute
                <targetxml>@value="external"</targetxml>.</li>
            <li>Create <targetxml>proc:param</targetxml> with attribute
                <targetxml>@name="object-server"</targetxml> and attribute
                <targetxml>@value="Blobstore"</targetxml>. (Notice that for this target, the value
              is cased as <targetxml>"Blobstore"</targetxml>.)</li>
            <!-- McNally Oct 25 2016: Casing for "Blobstore" is lower-case-s. Differs from ref:lnlink which is BlobStore.
               To keep value same as now done in prod for NARS. Per Susan Massa, Bency Thomas, and others at Oct 25 mtg.-->
            <li>Create <targetxml>proc:param</targetxml> with attribute
                <targetxml>@name="object-pguid"</targetxml> and attribute
                <targetxml>@value="urn:contentItem:0000-0000-0000-0000-00000-00"</targetxml>.</li>
            <li>Create <targetxml>proc:param</targetxml> with attribute
                <targetxml>@name="componentseq"</targetxml> and attribute
                <targetxml>@value="1"</targetxml>.</li>
          </ul></li>
      </ul></p>
    <note>All other <sourcexml>inlineobject</sourcexml> attributes not explicitly mentioned in the
      instructions above (<sourcexml>@height, @width, @filename, @dpsi</sourcexml>) are dropped and
      not output to the target document.</note>
    <note>
      <p>In the case of icons or other boilerplate images, the <sourcexml>inlineobject</sourcexml>
        shall usually be suppressed from conversion and a corresponding product requirement is
        created with instructions to instantiate the image on retrieval based on
        information/semantic markup in the document. This will sometimes include additional
        attributes being added to target elements created from parent source elements (such as
          <targetxml>ref:crossreference</targetxml> from <sourcexml>remotelink</sourcexml>).</p>
      <p>Usually, any icons encountered from the list below are suppressed. These files are
        suppressed for both *.gif and *.png file types. <ul>
          <li>1.gif</li>
          <li>2.gif</li>
          <li>3.gif</li>
          <li>4.gif</li>
          <li>5.gif</li>
          <li>IconSignalPositive.gif</li>
          <li>IconSignalNegative.gif</li>
          <li>IconSignalNeutral.gif</li>
          <li>IconSignalPossibleNegative.gif</li>
          <li>IconSignalCiteInfoOnly.gif</li>
          <li>cbcc.gif</li>
          <li>leg1.gif</li>
          <li>mb.gif</li>
          <li>au_repealed.gif</li>
          <li>au_exclaim.gif</li>
        </ul></p>
      <p>Use cases where the LBU feels the product requirement cannot be met if the markup is
        completely suppressed shall be handled case-by-case, and as usual additional topics will
        contain specific instructions for these scenarios that override the instructions in this
        note.</p>
    </note>

    <example>
      <title>Example #1: <sourcexml>inlineobect/@dpsi</sourcexml> not present</title>
      <lines><b>Source XML:</b></lines>
      <codeblock>

&lt;inlineobject type="image" smi="98765" attachment="ln-server" filename="an_image.gif" width="15" height="20"/&gt;

        </codeblock>
      <lines><b>Target XML:</b></lines>
      <codeblock>

&lt;ref:inlineobject width="15" height="20"&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="object-key"/&gt;
            &lt;ref:key-value value="an_image.gif"/&gt;
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

        </codeblock>
    </example>

    <example>
      <title>Example #2: <sourcexml>inlineobject/@dpsi</sourcexml> is present</title>
      <lines><b>Source XML:</b></lines>
      <codeblock>

&lt;inlineobject type="image" dpsi="003F" filename="another_image.gif" alttext="alternate text caption"/&gt;

        </codeblock>
      <lines><b>Target XML:</b></lines>
      <codeblock>

&lt;ref:inlineobject alttext="alternate text caption"&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="object-key"/&gt;
            &lt;ref:key-value value="[[DPSI:003F]]another_image.gif"/&gt;
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

        </codeblock>
    </example>

    <section>
      <title>Changes</title>
      <p>2016-11-07: <ph id="change_20161107_RS">Updated the instruction for ref:key-name and
                    proc:param attribute values.</ph></p>
      
      <p>2016-10-21: <ph id="change_20161021_SSjm">Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</ph></p>
      <p>2016-05-20: <ph id="change_20160520_JCG">Created this instruction to specify Blobstore
          specific output parameters.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita  -->
  <!--   Image handling background note 2017-11-30:

Please use $streamID in Rosetta_link-LxAdv-ref.lnlink.xsl due to notation below.  

It was originally intended that Apollo jurisdictions would use these (when first introduced in the DITA):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl

And blobstore jurisdictions would use these (notice BLOBSTORE in the file name):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.xsl

They were originally meant to be mutually exclusive.

Ditamap includes (and subsequently xsl drivers) may have included both blobstore and Apollo handling during the transition from one to the other even though only one image handling 
is done in an LBU.  Image handling is LBU wide and not individual stream specific.

Very importantly, there is a named template (@name="generic-link") in Rosetta_link-LxAdv-ref.lnlink.xsl which is called by both “Rosetta_p-LxAdv-p.xsl” and “Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.xsl”.   Both of these common modules are not LBU specific.  . 
This effectively, although unintentionally, crossed the original exclusivity described above.

Current fix is to use $streamID indicating HK and UK which are currently the only blobstore jurisdictions.  Ultimately, goal is to re-establish these image handling files are mutually exclusive.
-->
  
	
</xsl:stylesheet>