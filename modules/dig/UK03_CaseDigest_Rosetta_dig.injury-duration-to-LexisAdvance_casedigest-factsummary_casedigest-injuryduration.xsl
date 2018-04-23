<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.injury-duration-to-LexisAdvance_casedigest.injury-textitem">
		<title>dig:injury-duration-to-casedigest:factsummary and casedigest:injuryduration <lnpid>id-UK03-27447</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<p> If <sourcexml>dig:injury-duration</sourcexml> comes with PCDATA or child paragraph markup (i.e. p/text) and it's comes under <sourcexml>dig:action-facts/@display-name</sourcexml> then conversion needs to create
								'<targetxml>casedigest:facts/casedigest:factsummary/bodytext/p/text</targetxml>'. </p>
						<note>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture the
								<targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@display-name</sourcexml>. </note>
						<note>Create one preceding sibling "<targetxml>casedigest:causeofaction</targetxml>" with it's child elements of "<targetxml>casedigest:factsummary</targetxml>" markup under the single wrapper
								<targetxml>casedigest:facts</targetxml> and also follow up the above note rule for creating these attributes (<targetxml>@namescheme</targetxml> and <targetxml>@normval</targetxml>) in target. Refer below input and output
							examples:</note>
					</li>
				</ul>
			</section>
			<pre>
&lt;dig:body>
    &lt;dig:cause-of-action>
        &lt;dig:action-facts display-name="Duration and Prognosis">
            &lt;dig:injury-duration>Plaintiff developed communication and personal behaviour difficulties and had a life expectancy of 10 years.&lt;/dig:injury-duration>
        &lt;/dig:action-facts>
    &lt;/dig:cause-of-action>
&lt;/dig:body> 
<b>Becomes</b>
&lt;casedigest:body>
    &lt;casedigest:facts>
        &lt;casedigest:causeofaction>
            &lt;classify:classification>
                &lt;classify:classitem>
                    &lt;classify:classitem-identifier>
                        &lt;classify:classname namescheme="injury-type" normval="Duration and Prognosis"/>
                    &lt;/classify:classitem-identifier>
                &lt;/classify:classitem>
            &lt;/classify:classification>
        &lt;/casedigest:causeofaction>
        &lt;casedigest:factsummary>
            &lt;bodytext>
                &lt;p>
                    &lt;text>Plaintiff developed communication and personal behaviour difficulties and had a life expectancy of 10 years.&lt;/text>
                &lt;/p>
            &lt;/bodytext>
        &lt;/casedigest:factsummary>
    &lt;/casedigest:facts>
&lt;/casedigest:body>
</pre>

			<section>
				<ul>
					<li>If source document have '<sourcexml>dig:injury</sourcexml>' element as a preceding-sibling or following-sibling of <sourcexml>dig:injury-duration</sourcexml> under the single wrapper
							<sourcexml>dig:action-facts/@searchtype</sourcexml> element in source document then conversion needs to follow below mentioned rules: <note>
							<p>If '<sourcexml>dig:injury-duration</sourcexml>' markup comes under <sourcexml>dig:action-facts/@searchtype</sourcexml> with above mentioned sibling rule then conversion needs to create
									'<targetxml>casedigest:injuryduration</targetxml>' in target. </p>
							<p>i.e. <sourcexml>dig:cause-of-action/dig:action-facts[@searchtype]/dig:injury-duration</sourcexml> becomes <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injuryduration</targetxml>. Refer below input and
								output markup:</p>
						</note>
						<note>
							<p>If '<sourcexml>dig:action-facts/@searchtype</sourcexml> in source document and attribute <sourcexml>@searchtype</sourcexml> have any one attribute value among these values (MAJOR-INJURY-SUMMARY | ADDITIONAL-INJURY-SUMMARY)
								then conversion needs to create '<targetxml>casedigest:facts/casedigest:factsummary</targetxml>' in target. </p>
						</note>
					</li>
				</ul>
			</section>
			<pre>
&lt;dig:action-facts searchtype="ADDITIONAL-INJURY">
    &lt;dig:injury>
        &lt;dig:injury-class>
            &lt;dig:injury-class-name>Facial Injuries&lt;/dig:injury-class-name>
            &lt;dig:injury-class>
                &lt;dig:injury-class-name>Facial Disfigurement&lt;/dig:injury-class-name>
            &lt;/dig:injury-class>
        &lt;/dig:injury-class>
    &lt;/dig:injury>
    &lt;dig:injury-duration>9 years&lt;/dig:injury-duration>
&lt;/dig:action-facts>

	      <b>Becomes</b>&lt;casedigest:facts>
    &lt;casedigest:causeofaction>
        &lt;casedigest:injury>
            &lt;classify:classification>
                &lt;classify:classitem>
                    &lt;classify:classitem-identifier>
                        &lt;classify:classname namescheme="injury-type" normval="ADDITIONAL-INJURY">Facial Injuries&lt;/classify:classname>
                    &lt;/classify:classitem-identifier>
                    &lt;classify:classitem>
                        &lt;classify:classitem-identifier>
                            &lt;classify:classname namescheme="injury-type" normval="ADDITIONAL-INJURY">Facial Disfigurement&lt;/classify:classname>
                        &lt;/classify:classitem-identifier>
                    &lt;/classify:classitem>
                &lt;/classify:classitem>
            &lt;/classify:classification>
        &lt;/casedigest:injury>
        &lt;casedigest:injuryduration>9 years&lt;/casedigest:injuryduration>
    &lt;/casedigest:causeofaction>
&lt;/casedigest:facts>
	      
     
	    </pre>
			<section>
				<ul>
					<li>
						<p> If <sourcexml>dig:action-facts@searchtype</sourcexml> comes with PCDATA or child paragraph markup (i.e. p/text) and it's comes under <sourcexml>dig:cause-of-action</sourcexml> then conversion needs to create
								<targetxml>casedigest:causeofaction\classify:classification</targetxml> with sub child elements AND <targetxml>casedigest:facts\casedigest:factsummary\bodytext\p\text</targetxml>' under
								<targetxml>casedigest:facts</targetxml>. </p>
						<note>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture the
								<targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@searchtype</sourcexml>. </note>
						<note>Create one preceding sibling "<targetxml>casedigest:causeofaction</targetxml>" with it's child elements of "<targetxml>casedigest:factsummary</targetxml>" markup under the single wrapper
								<targetxml>casedigest:facts</targetxml> and also follow up the above note rule for creating these attributes (<targetxml>@namescheme</targetxml> and <targetxml>@normval</targetxml>) in target. Refer below input and output
							examples:</note>
					</li>
				</ul>
			</section>
			<pre>
&lt;dig:cause-of-action>
    &lt;dig:action-facts searchtype="MAJOR-INJURY-SUMMARY">
        &lt;p>
            &lt;text>Brain damage&lt;/text>
        &lt;/p>
    &lt;/dig:action-facts>

    ...

    &lt;dig:action-facts searchtype="ADDITIONAL-INJURY-SUMMARY">
        &lt;p>
            &lt;text>Chemical burns to forehead, psychiatric damage&lt;/text>
        &lt;/p>
    &lt;/dig:action-facts>
&lt;/dig:cause-of-action>
	  <b>Becomes</b>
&lt;casedigest:facts>
    &lt;casedigest:causeofaction>
        &lt;classify:classification>
            &lt;classify:classitem>
                &lt;classify:classitem-identifier>
                    &lt;classify:classname namescheme="injury-type" normval="MAJOR-INJURY-SUMMARY"/>
                &lt;/classify:classitem-identifier>
            &lt;/classify:classitem>
        &lt;/classify:classification>
    &lt;/casedigest:causeofaction>
    &lt;casedigest:factsummary>
        &lt;bodytext>
            &lt;p>
                &lt;text>Brain damage&lt;/text>
            &lt;/p>
        &lt;/bodytext>
    &lt;/casedigest:factsummary>
&lt;/casedigest:facts>
...
&lt;casedigest:facts>
    &lt;casedigest:causeofaction>
        &lt;classify:classification>
            &lt;classify:classitem>
                &lt;classify:classitem-identifier>
                    &lt;classify:classname namescheme="injury-type" normval="ADDITIONAL-INJURY-SUMMARY"/>
                &lt;/classify:classitem-identifier>
            &lt;/classify:classitem>
        &lt;/classify:classification>
    &lt;/casedigest:causeofaction>
    &lt;casedigest:factsummary>
        &lt;bodytext>
            &lt;p>
                &lt;text>Chemical burns to forehead, psychiatric damage&lt;/text>
            &lt;/p>
        &lt;/bodytext>
    &lt;/casedigest:factsummary>
&lt;/casedigest:facts>	      
	    </pre>

			<section>
				<ul>
					<li>
						<p> If <sourcexml>dig:action-facts@display-name</sourcexml> with any attribute value (i.e. Facts) and it’s hold PCDATA or direct child paragraph markup (i.e. p/text) and it's comes under <sourcexml>dig:cause-of-action</sourcexml>
							then conversion needs to convert <targetxml>casedigest:facts/casedigest:factsummary/bodytext/p/text.</targetxml></p>

						<note>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture the
								<targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@display-name.</sourcexml>. </note>

						<note>Create one preceding sibling "<targetxml>casedigest:causeofaction</targetxml>" with it's child elements of "<targetxml>casedigest:factsummary</targetxml>" markup under the single wrapper
								<targetxml>casedigest:facts</targetxml> and also follow up the above note rule for creating these attributes (<targetxml>@namescheme</targetxml> and <targetxml>@normval</targetxml>) in target. Refer below input and output
							examples:</note>


					</li>
				</ul>
			</section>
			<pre>
&lt;dig:cause-of-action>
  &lt;dig:action-facts display-name="Facts">
  &lt;p>
    &lt;text>The plaintiff, a police motorcyclist, was thrown from his motorcycle having collided with car. A minor rotator cuff tear in his right shoulder caused the injured area to impinge on the 
under surface of the bony acromion, resulting in pain and a permanent inability to abduct his right arm above shoulder level. He also sustained bruising of the articular cartilage in the patella 
femoral joint of the right knee, giving rise to a possibility that any further minor injury to the knee would cause more extensive tear and necessitate surgery.&lt;/text>
  &lt;/p>
  &lt;p>
    &lt;text>The knee injury resulted in discomfort after walking or resting for more than an hour, a permanent slight limp, and caused the knee to give way suddenly on occasions. The plaintiff was 
forced to retire from police force on medical grounds because of his inability to ride a motorcycle. His restricted shoulder and knee movements meant that he was unable to continue his 
hobbies of motorcycle riding and gliding, and limited his ability to drive, swim, play golf and to make models.&lt;/text>
  &lt;/p>
  &lt;/dig:action-facts>
&lt;/dig:cause-of-action>	

<b>Becomes</b>
&lt;casedigest:facts>
  &lt;casedigest:causeofaction>
    &lt;classify:classification>
      &lt;classify:classitem>
        &lt;classify:classitem-identifier>
          &lt;classify:classname namescheme="injury-type" normval="Facts"/>
        &lt;/classify:classitem-identifier>
      &lt;/classify:classitem>
    &lt;/classify:classification>
  &lt;/casedigest:causeofaction>
  &lt;casedigest:factsummary>
    &lt;bodytext>
      &lt;p>
        &lt;text>The plaintiff, a police motorcyclist, was thrown from his motorcycle having collided with car. A minor rotator cuff tear in his right shoulder caused the injured area to impinge on the 
under surface of the bony acromion, resulting in pain and a permanent inability to abduct his right arm above shoulder level. He also sustained bruising of the articular cartilage in the patella 
femoral joint of the right knee, giving rise to a possibility that any further minor injury to the knee would cause more extensive tear and necessitate surgery.&lt;/text>
      &lt;/p>
      &lt;p>
        &lt;text>The knee injury resulted in discomfort after walking or resting for more than an hour, a permanent slight limp, and caused the knee to give way suddenly on occasions. The plaintiff was 
forced to retire from police force on medical grounds because of his inability to ride a motorcycle. His restricted shoulder and knee movements meant that he was unable to continue his 
hobbies of motorcycle riding and gliding, and limited his ability to drive, swim, play golf and to make models.&lt;/text>
      &lt;/p>
    &lt;/bodytext>
  &lt;/casedigest:factsummary>
&lt;/casedigest:facts>	      
	      
	    </pre>

			<section>
				<title>Changes</title>
				<p>2017-04-19: <ph id="change_20170419_CN">Added multiple paragraphs to "Facts" example. [VSTS - 243138]</ph>
				</p>
				<p>2017-04-19: <ph id="change_20170419_RS">Updated the instruction and note for handling <sourcexml>dig:action-facts@display-name</sourcexml> markup. [VSTS - 243138]</ph>
				</p>
				<p>2017-04-11: <ph id="change_20170411_SS">Updated the instruction and note for handling <sourcexml>dig:injury-duration and dig:action-facts</sourcexml> markup. [VSTS - 243138]</ph>
				</p>
				<p>2017-03-29: <ph id="change_20170329_RS">Updated the instruction and note for handling <sourcexml>dig:injury-duration and dig:action-facts</sourcexml> markup.</ph></p>

				<p>2016-03-08: <ph id="change_20160308_SS">Remove the change request number [DADB2012101213525400] inside the CI because this CR have already updated inside the target schema for <targetxml>duration</targetxml> allowing within
							<targetxml>textitem</targetxml>.</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.injury-duration-to-LexisAdvance_casedigest.injury-textitem.dita  -->

	<!-- Vikas Rohilla : Template to mtch the dig:injury-duration-->
	<!-- CSN - 2017/10/18 - added context awareness -->
	<xsl:template match="dig:injury-duration[parent::dig:action-facts/@display-name = 'Duration and Prognosis']">
		<casedigest:factsummary>
			<bodytext>
				<p>
					<text>
						<xsl:apply-templates select="node()"/>
					</text>
				</p>
			</bodytext>
		</casedigest:factsummary>
	</xsl:template>

	<xsl:template match="dig:injury-duration">
		<casedigest:injuryduration>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:injuryduration>
	</xsl:template>

	<xsl:template match="duration">
		<duration>
			<xsl:apply-templates select="@* | node()"/>
		</duration>
	</xsl:template>

	<xsl:template match="duration/@normval">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="duration/@normstd"/>
	
</xsl:stylesheet>
