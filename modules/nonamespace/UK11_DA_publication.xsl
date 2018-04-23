<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_publication">
  <title>publication <lnpid>id-UK11DA-29439</lnpid></title>
  <body>
    <section>
      <p><sourcexml>publication</sourcexml> becomes
          <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
    </section>
    <section><p>Optional child <sourcexml>inlineobject</sourcexml> is moved, as
          follows:</p><p><sourcexml>publication/inlineobject</sourcexml> becomes
          <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlineobject</targetxml>.<ul>
          <li>See the General Markup instructions for <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">inlineobject</xref> for details on how to map <sourcexml>inlineobject</sourcexml> to
              <targetxml>ref:inlineobject</targetxml>.
            <!--Also see associated special UK rule for <xref
              href="../../common_newest/Rosetta_UK_inlineobject-LxAdv-logo-special.dita"
              >logos</xref>.--></li>
          <!-- In preceding li, changed xref to point to blobstore module. And removed ref to special logo module which is no longer included, because exception was related to Apollo -->
        </ul></p></section>
    <section/>
    <section><b><u>Special Rule when <sourcexml>publication</sourcexml> occurs twice.</u></b><p>When
        rosetta contains two <sourcexml>publication</sourcexml>:</p><ul>
        <li>The first maps to <targetxml>pubinfo:publicationname</targetxml> as described
          above.</li>
        <li>The second maps as follows:<ul>
            <li><sourcexml>publication</sourcexml> becomes
                <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:issue</targetxml>.</li>
          </ul></li>
      </ul><p><i>Explanation:</i> Sept 2013 redelivery includes two new dpsi, 0MCR and 042W, for
        newspaper article abstracts. Rosetta for those two dpsi have second
          <sourcexml>publication</sourcexml> instead of
          <sourcexml>jrnl:articleinfo/jrnl:journalcite</sourcexml> used elsewhere. There is no
        conflict with other rules, i.e. result will be the same regardless of whether coding for
        second <sourcexml>publication</sourcexml> is applied generally for all sources or
        specifically for dpsi 0MCR and 042W.</p></section>

    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;publication&gt;Estates Gazette&lt;/publication&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publicationname&gt;Estates Gazette&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>
    <pre>
              <b><i>Example: Source XML 2, with <sourcexml>inlineobject</sourcexml></i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;publication&gt;&lt;inlineobject type="image" mimetype="image/gif" filename="NewLawJournal.gif"/&gt;
       New Law Journal&lt;/publication&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 2, with <sourcexml>inlineobject</sourcexml></i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publicationname&gt;New Law Journal&lt;/pubinfo:publicationname&gt;
      &lt;pubinfo:publicationlogo&gt;
        &lt;logo&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="NewLawJournal.gif"/&gt;
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
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>

    <pre>
              <b><i>Example: Source XML 3, with two <sourcexml>publication</sourcexml></i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    ...
    &lt;publication&gt;Daily Telegraph&lt;/publication&gt;
    ...
    &lt;publication&gt;Daily Telegraph, 13 October 2009, pg 4&lt;/publication&gt;
    ...
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 3, with two <sourcexml>publication</sourcexml></i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publicationname&gt;Daily Telegraph&lt;/pubinfo:publicationname&gt;
      &lt;pubinfo:issue&gt;Daily Telegraph, 13 October 2009, pg 4&lt;/pubinfo:issue&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>
    <section>
      <title>Changes</title>
      <p>2016-11-11: <ph id="change_20161111_JM">Not a rule change directly to this module. Modified
          Example 2 Target to reflect blobstore markup; all paramater names that formerly contained
          the word "attachment" are now "object".</ph></p>
      <p>2016-10-28: <ph id="change_20161028_JM">Not a rule change directly to this module. Modified
          Example 2 Target to reflect blobstore markup for the parameter "object-server".</ph></p>
      <p>2016-07-29: <ph id="change_20160729_JM">Not a rule change directly to this module. Modified
          xref link for inlineobject, to point to new blobstore module; and revised Example 2 Target
          to reflect blobstore markup.</ph></p>
      <p>2015-11-12: <ph id="change_20151112_JM">Not a rule change directly to this module. Added
          reference to UK special rule for objects that are logos. And updated example. RFA
          2542.</ph></p>
      <p>2013-09-17: <ph id="change_20130917_jm">Added mapping to handle rosetta containing two
            <sourcexml>publication</sourcexml>. Usecase occurs in dpsi 0MCR and 042W, newspaper
          article abstracts, which are new in Sept 2013 redelivery, as noted in WebTeam #
          233402.</ph></p>
      <p>2013-06-14: <ph id="change_20130614_jm">Changed conversion of
            <sourcexml>publication/inlineobject</sourcexml>, now mapping within
            <targetxml>pubinfo:publicationlogo</targetxml>.</ph></p>
      <p>2013-05-02: <ph id="change_20130502_SP">Updated target example to reflect changes per
          latest Apollo markup.</ph></p>
    </section>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_publication.dita  -->


  <xsl:template match="publication">
      <pubinfo:publicationname>
        <xsl:apply-templates select="@* | node()"/>
      </pubinfo:publicationname>				 
  </xsl:template>
  
</xsl:stylesheet>