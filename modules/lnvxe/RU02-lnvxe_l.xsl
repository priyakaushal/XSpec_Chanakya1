<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe" version="2.0" exclude-result-prefixes="dita lnvxe">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnvxe_l">
  <title>lnvxe:l <lnpid>id-RU02-32032</lnpid>
  </title>

  <body>
    <p>
      <sourcexml>lnvxe:l</sourcexml> becomes <targetxml>list</targetxml>. The child
        <sourcexml>lnvxe:li</sourcexml> becomes <targetxml>listitem</targetxml>.
        <targetxml>bodytext</targetxml> is the required child element for
        <targetxml>listitem</targetxml>. The child <sourcexml>lnvxe:lilabel</sourcexml> becomes
        <targetxml>label</targetxml>.</p>

    <example>
      <title>Source XML</title>
      <codeblock>
&lt;lnvxe:l&gt;
  &lt;lnvxe:li&gt;
   &lt;lnvxe:lilabel&gt;
	   &lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;
   &lt;/lnvxe:lilabel&gt;
   &lt;p&gt;
	 &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
   &lt;/p&gt;
 &lt;/lnvxe:li&gt;
 &lt;lnvxe:li&gt;
   &lt;lnvxe:lilabel&gt;
	   &lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;
   &lt;/lnvxe:lilabel&gt;
   &lt;p&gt;
	 &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
   &lt;/p&gt;
 &lt;/lnvxe:li&gt;
&lt;/lnvxe:l&gt;

	</codeblock>
    </example>

    <example>
      <title>Target XML </title>
      <codeblock>
&lt;list&gt;
 &lt;listitem&gt;
	&lt;label&gt;
	  &lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;
	&lt;/label&gt;
	&lt;bodytext&gt;
	 &lt;p&gt;
	  &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
	 &lt;/p&gt;
	&lt;/bodytext&gt; 
 &lt;/listitem&gt;
 &lt;listitem&gt;
	&lt;label&gt;
	  &lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;
	&lt;/label&gt;
	&lt;bodytext&gt;
	 &lt;p&gt;
	  &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
	 &lt;/p&gt;
	&lt;/bodytext&gt; 
 &lt;/listitem&gt;
&lt;/list&gt;

	</codeblock>
    </example>

    <example>
      <title>Nested list Source(l/li/l)</title>
      <codeblock>
&lt;lnvxe:l&gt;
     &lt;lnvxe:li&gt;
        &lt;lnvxe:lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
              &lt;p&gt;
                &lt;text&gt;the health and safety of workers who are:&lt;/text&gt;
              &lt;/p&gt;
      &lt;/lnvxe:li&gt;
      &lt;lnvxe:li&gt;
      &lt;lnvxe:l&gt;
         &lt;lnvxe:li&gt;
         &lt;lnvxe:lilabel&gt;&amp;#x25E6;&lt;/lilabel&gt;
                  &lt;p&gt;
                    &lt;text&gt;engaged by the person conducting the business or undertaking;&lt;/text&gt;
                  &lt;/p&gt;
          &lt;/lnvxe:li&gt;
       &lt;/lnvxe:l&gt;
       &lt;/lnvxe:li&gt;
            ...  
            
  </codeblock>
    </example>

    <example>
      <title>Nested list Target (list/listitem/bodytext/list)</title>
      <codeblock>
&lt;list&gt;
      &lt;listitem&gt;
              &lt;label&gt;&amp;#x2022;&lt;/label&gt;
              &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;the health and safety of workers who are:&lt;/text&gt;
              &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
            &lt;listitem&gt;
               &lt;bodytext&gt;
                 &lt;list&gt;
                   &lt;listitem&gt;
                      &lt;label&gt;&amp;#x25E6;&lt;/label&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                         &lt;text&gt;engaged by the person conducting the business or undertaking;&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;  
                   &lt;/listitem&gt;
                 &lt;/list&gt;
               &lt;/bodytext&gt;  
&lt;/listitem&gt;  
 ...
  
  </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>Created.</p>
    </section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnvxe_l.dita  -->
	<xsl:message>RU02-lnvxe_l.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnvxe:l">

		<!--  Original Target XPath:  list   -->
		<list>
			<xsl:apply-templates select="@* | node()"/>
		</list>

	</xsl:template>

	<xsl:template match="lnvxe:li">

		<!--  Original Target XPath:  listitem   -->
		<listitem>
			<xsl:apply-templates select="@* | node()"/>
		</listitem>

	</xsl:template>

	<xsl:template match="lnvxe:lilabel">

		<!--  Original Target XPath:  label   -->
		<label>
			<xsl:apply-templates select="@* | node()"/>
		</label>

	</xsl:template>

</xsl:stylesheet>