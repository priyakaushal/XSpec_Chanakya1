<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_classification_classitem_SUPPRESS">
    <title><sourcexml>levelinfo/classification @ln.user-displayed="false"/classitem
            @ln.user-displayed="false"/classitem-identifier/classname</sourcexml> is
        SUPPRESSED <lnpid>id-CCCC-10392</lnpid></title>
    <body>
        <section>
            <title>SUPPRESS <sourcexml>levelinfo/classification
                    @ln.user-displayed="false"/classitem
                    @ln.user-displayed="false"/classitem-identifier/classname</sourcexml>&gt;</title>
            <note> 
              <p><b>04/12/2013</b> Andrew Martin: The only other mark-up that may need to be
                    suppressed is in the context: <b>Suppress</b>
                    <sourcexml>levelinfo/classification @ln.user-displayed="false"/classitem
                        @ln.user-displayed="false"/classitem-identifier/classname</sourcexml> and
                    all children (<sourcexml>remotelink</sourcexml> and
                        <sourcexml>lnlink</sourcexml>). </p>
                <p>This has been inserted for a specific processing purpose for FTK splitting and I
                    have asked that it be removed during that processing but until that is
                    implemented we cannot say with certainty it will not appear in the data
                    delivered. </p>  
            </note>
            
        </section>


        <section>
            <title>Changes</title>
            <p>2013-04-12: <ph id="change_20130412_WLL">Temporary Note on Suppression inserted from Andrew Martin</ph> </p>
            <p>2015-06-01: <ph id="change_20150601_AB">This temporary note is also applicable for NZ09. Webstar #6019310</ph> </p>
        </section>
    </body>
	</dita:topic>
    
    <!-- suppressing the correct things and the parents if empty up to levelinfo -->


    <xsl:template match="levelinfo/classification[@ln.user-displayed='false'] | levelinfo/classification/classitem[@ln.user-displayed='false']" priority="2"/>
    
    <xsl:template match="levelinfo[classification[@ln.user-displayed='false']][not(child::*[2])]" priority="2"/>
    
    <xsl:template match="levelinfo/classification[not(@ln.user-displayed='false')][classitem[@ln.user-displayed='false']][not(child::*[2])]" priority="2"/>
    
    
    

	
</xsl:stylesheet>