<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs xd"
    version="2.0">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> May 10, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> kuma136</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:variable name="docRelatedContent-TableCA04">
        <references>
            <reference primary-language="English" alternate-language="French" primary-citation="C.A.P.P.R.T.D." alternate-citation="D.T.C.R.P.A.P."/>
            <reference primary-language="English" alternate-language="French" primary-citation="No.C.A.R.T.D." alternate-citation="noD.C.R.A.C."/>
            <reference primary-language="French" alternate-language="English" primary-citation="D.C.R.A.C." alternate-citation="C.A.R.T.D."/>
            <reference primary-language="English" alternate-language="French" primary-citation="noC.A.T.D" alternate-citation="No.D.T.A.C"/>
           <!-- <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>
            <reference primary-language="" alternate-language="" primary-citation="" alternate-citation=""/>-->
        </references>
    </xsl:variable>
    
    <xsl:key name="KRefrencebyName" match="reference" use="string(@primary-citation)"/>
    
</xsl:stylesheet>