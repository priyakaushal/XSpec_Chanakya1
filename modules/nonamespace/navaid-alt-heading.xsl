<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-alt-heading">
    <title>Convert Certain Text To <targetxml>alt-heading</targetxml> <lnpid>id-AU16-21007</lnpid></title>
    <body>

      <p>If all of the following are true: <ul>
          <li>An <sourcexml>emph</sourcexml>
            <b>starts with</b> the special title phrase "Bills Terminated in" <b>or</b> consists any
            of the following special title phrases: <ul>
              <li>Acts By Title</li>
              <li>Current Acts</li>
              <li>Repealed Acts</li>
              <li>Year and Number</li>
              <li>Assents</li>
              <li>Commencements</li>
              <li>Acts by Subject</li>
              <li>Keywords in Titles</li>
              <li>Defined Terms</li>
              <li>Historical Versions</li>
              <li>Subordinate Legislation By Title</li>
              <li>Current Subordinate Legislation</li>
              <li>Repealed Subordinate Legislation</li>
              <li>Subordinate Legislation By Subject</li>
              <li>All Current Bills by Title</li>
              <li>Government Bills</li>
              <li>Opposition &amp;amp; Private Member Bills</li>
              <li>Bills by Year and Title</li>
              <li>Last Sitting Day Results</li>
              <li>Bills Passed and Awaiting Assent</li>
              <li>Bills by Introduction Date</li>
              <li>Australian Capital Territory Update Status</li>
              <li>Commonwealth Update Status</li>
              <li>New South Wales Update Status</li>
              <li>Northern Territory Update Status</li>
              <li>Queensland Update Status</li>
              <li>South Australian Update Status</li>
              <li>Tasmanian Update Status</li>
              <li>Victorian Update Status</li>
              <li>Western Australian Update Status</li>
            </ul></li>
          <li>This <sourcexml>emph</sourcexml> has as an ancestor (not only a direct parent, but any
            ancestor) either: <ul>
              <li>A <sourcexml>p</sourcexml>.</li>
              <li>A <sourcexml>table</sourcexml> where
                <sourcexml>table/tgroup/@cols="1"</sourcexml>.</li>
              <li>an <sourcexml>in:lev1</sourcexml> where all of the following are true:<ul>
                  <li>The <sourcexml>in:lev1</sourcexml> is <b>not</b> immediately followed by
                    another <sourcexml>in:lev1</sourcexml>.</li>
                  <li>The <sourcexml>in:lev1</sourcexml>
                    <b>does not</b> contain an <sourcexml>in:lev2</sourcexml>.</li>
                  <li>The <sourcexml>in:lev1</sourcexml> contains <b>only one</b>
                    <sourcexml>in:entry</sourcexml> and that entry contains an
                      <sourcexml>in:entry-text</sourcexml> that in turn contains the
                      <sourcexml>emph</sourcexml> that contains one of the special title phrases
                    listed above.</li>
                </ul>
              </li>
            </ul></li>
          <li>The contents of this <sourcexml>emph</sourcexml> are the only non-white-space text
            contents within the entire containing <sourcexml>p</sourcexml>,
              <sourcexml>table</sourcexml>, or <sourcexml>in:lev1</sourcexml></li>
        </ul> Then the start-tags and end-tags of the containing <sourcexml>p</sourcexml>,
          <sourcexml>table</sourcexml>, or <sourcexml>in:lev1</sourcexml> and <b>all other tags
          within the these containing elements</b> are dropped. The the <sourcexml>emph</sourcexml>
        becomes <targetxml>alt-heading/title</targetxml>, with <targetxml>alt-heading</targetxml>
        being created as a container for the <targetxml>title</targetxml>. </p>
      <p>Within the <sourcexml>p</sourcexml> or <sourcexml>table</sourcexml> that contains the
          <sourcexml>emph</sourcexml>, if there are any <sourcexml>p/text</sourcexml> elements (or
        their child elements) or <sourcexml>table/tgroup/tbody/row/entry</sourcexml> elements (or
        their child elements) that contain only white-space, this white-space is dropped.</p>

      <p>An <targetxml>alt-heading</targetxml> must occur in the output immediately after a
          <targetxml>heading</targetxml> and before any of the repeating elements
          (<targetxml>navaid:documentmenu</targetxml>, <targetxml>toc</targetxml>,
          <targetxml>index:index</targetxml>, <targetxml>navaid:list</targetxml>,
          <targetxml>bodytext</targetxml>). In particular, if there is content that is converted to
        a <targetxml>documentmenuitem</targetxml> (and therefore requires a
          <targetxml>documentmenu</targetxml> to contain it) the occurs in the source document
        before the content that is converted to an <targetxml>alt-heading</targetxml>, the
          <targetxml>alt-heading</targetxml> content must be moved so that it is output after the
          <targetxml>heading</targetxml> and before the <targetxml>navaid:documentmenu</targetxml>. </p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-alt-heading.dita  -->
	<!--<xsl:message>navaid-alt-heading.xsl requires manual development!</xsl:message> -->
	
	<xsl:template match="p[text/emph=(tokenize($altHeadingValues, ','))] | in:lev1[not(following-sibling::*[1][self::in:lev1]) and not(in:lev2)
		and	in:entry/in:entry-text/emph=(tokenize($altHeadingValues, ','))]" mode="alt-heading">
		<alt-heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<title>
				<xsl:value-of select="text/emph|in:entry/in:entry-text/emph"/>
			</title>
		</alt-heading>
	</xsl:template>
	
	<xsl:template match="p|in:lev1" mode='alt-heading'/>
	
	<xsl:template match="p[text/emph=(tokenize($altHeadingValues, ','))] | in:lev1[not(following-sibling::*[1][self::in:lev1]) and not(in:lev2)
		and	in:entry/in:entry-text/emph=(tokenize($altHeadingValues, ','))]"/>
	

</xsl:stylesheet>