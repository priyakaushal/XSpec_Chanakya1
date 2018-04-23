<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NavAidLandingPages_Changes2012">
  <title>Changes During 2012</title>
  <body>
    <p>Below are changes made during 2012. All changes made in 2013 and later now use a new format and are specified in the <xref href="NavAidLandingPages_Changelog_AU.dita">next topic</xref>.</p>
    </body>
    
    <topic id="navaid-changelog-8">
    <title>2012-11-21</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Minor change to update schema referenced to version 1.10 ALPHA. Also, a change to the previous change log entry which referred to subtopic "3.6.3. Convert Combined remotelink Elements To navaid:list" incorrectly as subtopic number "3.6.2".</p>
    </body>
  </topic>

  <topic id="navaid-changelog-7">
    <title>2012-11-14</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Body</title>
        <p>Changed instruction in subtopic "3.6.3. Convert Combined remotelink Elements To navaid:list" regarding when to use style="grid" instead of style="banner".
        </p>
        <p>Added instructions in subtopic "3.8. in:lev1 Elements and Their Subelements" regarding when to set index:index/@indextype attribute to "descriptive".
        </p>
        <p>Changed instructions in subtopic "3.6.3. Convert Combined remotelink Elements To navaid:list" to indicate that punctuation in this context should be dropped rather than wrapped in a connector element.
        </p>
        <p>Changed instructions in subtopic "3.3. Paragraphs Are Preserved" to specify that target bodytext elements that would contain only blank or empty p elements should not be output.
        </p>
        <p>Added a definition of "white-space" to the subtopic "2. Introduction" specifically mentioning that white-space includes character entities that represent spacing, such as &amp;nbsp;.
        </p>
        <p>Added instructions in subtopic "3.6.3. Convert Combined remotelink Elements To navaid:list" regarding the output of meta and metaitem elements when source emph/@typestyle="ib" and emph/typestyle="hi" are present. Also changes to subtopic "3.6.1. Convert table to navaid:list" and "3.6.2. Convert p to navaid:list" to refer to emph@typstyle="ib" and emph/typestyle="hi".
        </p>
        <p>Added instructions to subtopics "3.6.3. Convert Combined remotelink Elements To navaid:list", "3.7.4. Convert One p Or entry To navaid:list/index:entry", and "3.8. in:lev1 Elements and Their Subelements" regarding the removal of commas and semicolons from the end of index:entrytext.
        </p>
      </section>
      <section>
        <title>Metadata</title>
        <p>Added a new subtopic "create <targetxml>dc:coverage/location:state</targetxml> or <targetxml>dc:coverage/location:country</targetxml> element" to the Metadata section specifying the creation of these two elements.
        </p>
      </section>
      <section>
        <title>General Mark-Up</title>
        <p>Subtopic "footnotegrp and footnote to footnotegrp and footnote" was updated, see list of changes the end of that subtopic for details.
          </p>
      </section>
    </body>
  </topic>
    
  <topic id="navaid-changelog-6">
    <title>2012-10-17</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Clarified instructions in topic <i>3.4 Convert Certain <sourcexml>remotelink</sourcexml> Elements To
        <targetxml>navaid:documentmenuitem</targetxml></i> to drop p elements between <targetxml>documentmenu</targetxml> elements if they contain only white-space.
      </p>
      <p>Added "or this child contains only white-space" to the note at the bottom of <i>3.8 <sourcexml>in:lev1</sourcexml> Elements and Their Subelements</i>.</p>
      <p>Modified the instructions for converting tables to navaid:list so that there is a main topic that describes general conversion and subtopics that specify the criteria for first, second and third tables.
      </p>
      <p>Added instructions for converting table elements to navaid:list where there are 2, 1, or 0 remotelinks present.
      </p>
      <p>Added instructions for converting p elements to navaid:list where there are 2, 1, or 0 remotelinks present.
      </p>
    </body>
  </topic>

  <topic id="navaid-changelog-5">
    <title>2012-09-13</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Added instructions in to change ":" to "_" when outputting the value for <targetxml>ref:locator/@anchoridref</targetxml>.
      </p>
      <p>Removed the instruction for <sourcexml>bodytext</sourcexml> from the General Markup section of the CI, since it pertained only to currency statements identified by paragraphs containing the text "[Current to". These do not occur in the LawNow Landing Pages.</p>
    </body>
  </topic>

  <topic id="navaid-changelog-4">
    <title>2012-08-21</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Additional changes to some examples that use <sourcexml>remotelink</sourcexml> to conform to the Kraken link resolution protocol.
      </p>
    </body>
  </topic>

  <topic id="navaid-changelog-3">
    <title>2012-08-20</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>The following subtopics were changed to conform to the Kraken link resolution protocol:<ul>
        <li>Convert Combined <sourcexml>remotelink</sourcexml> Elements To
          <targetxml>navaid:list</targetxml></li>
        <li>Convert One <sourcexml>p</sourcexml> Or <sourcexml>entry</sourcexml> To
			<targetxml>navaid:list/index:entry</targetxml></li>
        <li><sourcexml>in:lev1</sourcexml> Elements and Their Subelements</li>
        </ul>
      </p>
      <p>In addition to the above changes, examples that use <sourcexml>remotelink</sourcexml> were also changed to conform to the Kraken link resolution protocol.
      </p>
    </body>
  </topic>

  <topic id="navaid-changelog-2">
    <title>2012-08-06</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Single CI split into separate Australian and New Zealand CIs.
      </p>
    </body>
  </topic>

  <topic id="navaid-changelog-1">
    <title>2012-05-13</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Added additional information regarding value for <targetxml>ref:key-value/@value</targetxml>.
      </p>
    </body>
  </topic>
  
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\NavAidLandingPages_Changes2012_AU.dita  -->
	<!--<xsl:message>NavAidLandingPages_Changes2012_AU.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>