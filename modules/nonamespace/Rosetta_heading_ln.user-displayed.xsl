<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
  exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_heading_ln.user-displayed">
    <title>
      <sourcexml>heading/@ln.user-displayed="false"</sourcexml>
      <lnpid>id-CCCC-10350</lnpid>
    </title>
    <body>
      <section>
        <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis Advance. Each of the
          following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when this
            <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>

        <p>If <sourcexml>heading</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> the element is suppressed.</p>

      </section>

      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:heading ln.user-displayed="false"&gt; &lt;title&gt;Preliminary&lt;/title&gt; &lt;/leg:heading&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;!-- output Suppressed --&gt; </codeblock>
      </example>

      <example>
        <title>Source XML</title>
        <codeblock> &lt;level id="ASC_ARCHIVE.SGM_MISC.INS_2" leveltype="miscins"&gt; &lt;heading ln.user-displayed="false"&gt; &lt;title&gt;[Instrument]&lt;/title&gt; &lt;/heading&gt; ...
          &lt;/level&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;!-- output Suppressed --&gt; </codeblock>
      </example>
      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:heading ln.user-displayed="false"&gt; &lt;title&gt;Preliminary&lt;/title&gt; &lt;/leg:heading&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;!-- output Suppressed --&gt; </codeblock>
      </example>

      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:juris ln.userdisplayed="false"&gt;NSW&lt;/leg:juris&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;jurisinfo:legisbodyinfo&gt; &lt;jurisinfo:jurisdiction&gt; &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt; &lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:legisbodyinfo&gt;
          &lt;dc:metadata&gt; &lt;dc:coverage&gt; &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt; &lt;/dc:coverage&gt; &lt;/dc:metadata&gt; </codeblock>
      </example>
      <!-- SEP 2015-8-12 added -->

    </body>
  </dita:topic>

  <xsl:template match="heading[@ln.user-displayed = 'false']" priority="25"/>
  <!-- suppress -->

  <xsl:template match="leg:heading[@ln.user-displayed = 'false']" priority="25"/>
  <!-- suppress -->

</xsl:stylesheet>
