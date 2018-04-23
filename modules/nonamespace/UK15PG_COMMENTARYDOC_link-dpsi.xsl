<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita docinfo">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_COMMENTARYDOC_link-dpsi.dita">
        <title>link with @dpsi <lnpid>id-UK15-30423</lnpid></title>
        <body>
            <section>
                <p>When <sourcexml>link</sourcexml> includes <sourcexml>@dpsi</sourcexml>, convert
                    as follows:<ul>
                        <li><sourcexml>link</sourcexml> becomes
                                <targetxml>ref:crossreference</targetxml> with the value of
                                <targetxml>@crossreferencetype</targetxml> set to "seeAlso".
                                <sourcexml>@alt-label</sourcexml> should be suppressed. The children
                            of <targetxml>ref:crossreference</targetxml> are created as follows:<ul>
                                <li>Create <targetxml>ref:content</targetxml> and populate it with
                                    the content of <sourcexml>link</sourcexml>.</li>
                                <li>Create <targetxml>ref:locator</targetxml> and populate the
                                    attribute <targetxml>@anchoridref</targetxml> with the value of
                                        <sourcexml>link/@refpt</sourcexml>. The children of
                                        <targetxml>ref:locator</targetxml> are created as follows:<ul>
                                        <li>Create <targetxml>ref:locator-key</targetxml>. The
                                            children of <targetxml>ref:locator-key</targetxml> are
                                            created as follows:<ul>
                                                <li>Create <targetxml>ref:key-name</targetxml> and
                                                  set the value of <targetxml>@name</targetxml> to
                                                  "DOC-ID".</li>
                                                <li>Create <targetxml>ref:key-value</targetxml> and
                                                  populate <targetxml>@value</targetxml> with a
                                                  concatenation of the following values:<ul>
                                                  <li>The value of
                                                  <sourcexml>link/@dpsi</sourcexml></li>
                                                  <li>A hyphen ("-")</li>
                                                  <li>The content of
                                                  <sourcexml>docinfo:doc-id</sourcexml> after the
                                                  prefix "DN_" has been removed</li>
                                                  </ul></li>
                                            </ul></li>
                                    </ul></li>
                            </ul></li>
                    </ul>
                </p>
                <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                    have an underscore added at start. Also apply other identifier data type format
                    as used for <targetxml>xml:id</targetxml> and
                        <targetxml>ref:anchor/@id</targetxml> (e.g. change colon to
                    underscore).</note>
            </section>
            <example>
                <title>Example</title>
                <codeblock> &lt;docinfo:doc-id&gt;DN_0OKO_14153&lt;/docinfo:doc-id&gt; &lt;p&gt;
                    &lt;text&gt;If acting for the Buyer, include the wording in brackets at the
                    start of the clause as otherwise its provisions (in particular the indemnity at
                    Clause &lt;link refpt="ukContentItem497ef600-1c79-4f40-b9af-49c6edce67aa"
                    dpsi="0OKO" alt-label="para" &gt;2.4.4&lt;/link&gt;) do not apply at all unless
                    the individual actually transfers across to the Buyer, which arguably defeats
                    the whole purpose of the clause.&lt;/text&gt; &lt;/p&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;p&gt; &lt;text&gt;If acting for the Buyer, include the wording in
                    brackets at the start of the clause as otherwise its provisions (in particular
                    the indemnity at Clause &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;2.4.4&lt;/ref:content&gt; &lt;ref:locator
                    anchoridref="ukContentItem497ef600-1c79-4f40-b9af-49c6edce67aa"&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0OKO-0OKO_14153"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;) do not apply at all unless the individual actually
                    transfers across to the Buyer, which arguably defeats the whole purpose of the
                    clause.&lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-06-21: <ph id="change_20130621_DSF">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <xsl:template match="link">
      <xsl:choose>
          <xsl:when test="./parent::note/preceding-sibling::note/parent::p">
              <xsl:call-template name="createLnlinkElement_note">
                  <xsl:with-param name="linkElement">
                      <xsl:copy-of select="self::*"/>
                  </xsl:with-param>
              </xsl:call-template>
          </xsl:when>
          <xsl:when test="./parent::figure">
              <xsl:call-template name="createLnlinkElement_note">
                  <xsl:with-param name="linkElement">
                      <xsl:copy-of select="self::*"/>
                  </xsl:with-param>
              </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
              <!--<ref:crossreference>
                  <xsl:attribute name="crossreferencetype">seeAlso</xsl:attribute>
                  <ref:content>
                      <xsl:apply-templates select="@* | node()"/>
                  </ref:content>
              </ref:crossreference> -->  
              <xsl:apply-templates select="@* | node()"/>
          </xsl:otherwise>
      </xsl:choose>
        
        
        

    </xsl:template>


    <xsl:template name="createLnlinkElement_note">
        <xsl:param name="linkElement"/>
        <ref:lnlink>
            <xsl:attribute name="service" select="'ATTACHMENT'"/>
            <ref:marker role="label">
                <xsl:apply-templates select="$linkElement/link/node()"/>
            </ref:marker>
            <ref:locator>
                <ref:locator-key>
                    <ref:key-name name="attachment-key"/>
                    <ref:key-value>
                        <xsl:attribute name="value" select="if($linkElement/link/@dpsi) then concat('[[DPSI:' , $linkElement/link/@dpsi, ']]' , $linkElement/link/@filename) else $linkElement/link/@filename"/>
                    </ref:key-value>
                </ref:locator-key>
                <ref:locator-params>     
                    <proc:param name="attachment-type" value="IMG"/>
                    <proc:param name="external-or-local" value="external"/>		        
                    <proc:param name="attachment-server" value="BlobStore"/>
                    <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                    <proc:param name="componentseq" value="1"/>		              
                </ref:locator-params>	      
            </ref:locator>
        </ref:lnlink>
    </xsl:template>
   <!-- <xsl:template match="@dpsi">
        <ref:crossreference>
            <xsl:apply-templates select="@* | node()"/>
        </ref:crossreference>

    </xsl:template>-->

    <!--<xsl:template match="@alt-label">
        <ref:crossreference>
            <xsl:apply-templates select="@* | node()"/>
        </ref:crossreference>

    </xsl:template>-->

    <xsl:template match="link/@refpt">
        <ref:locator>
            <xsl:attribute name="anchoridref">
                <!--<xsl:apply-templates select="@* | node()"/>-->
            </xsl:attribute>
            <ref:locator-key>
                <ref:key-name>
                    <xsl:attribute name="name">DOC-ID</xsl:attribute>
                </ref:key-name>
                <ref:key-value>
                    <xsl:attribute name="value">
                        <!--<xsl:value-of select="link/@dpsi"/>-->
                        <xsl:text>-</xsl:text>
                        <!--<xsl:value-of select="link/@dpsi"/>-->
                    </xsl:attribute>
                </ref:key-value>
            </ref:locator-key>

        </ref:locator>

    </xsl:template>

    <xsl:template match="link/@dpsi">
        <ref:locator>
            <xsl:attribute name="anchoridref">
                <!--<xsl:apply-templates select="node()"/>-->
            </xsl:attribute>
        </ref:locator>

    </xsl:template>

    <!--<xsl:template match="docinfo:doc-id">
        <ref:locator>
            <xsl:attribute name="anchoridref">
                <xsl:apply-templates select="node()"/>
            </xsl:attribute>
        </ref:locator>

    </xsl:template>-->

</xsl:stylesheet>
