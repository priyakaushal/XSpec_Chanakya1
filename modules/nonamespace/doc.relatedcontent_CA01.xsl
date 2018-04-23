<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:ext="http://exslt.org/common"
    exclude-result-prefixes="xs xd"
    version="2.0">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> May 10, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> rohillvx</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:variable name="docRelatedContent-TableCA01">
        <ext:references>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="A.C.F. no" alternate-citation="F.C.J. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="A.C.I. no" alternate-citation="T.C.J. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="A.C.S. no" alternate-citation="S.C.J. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="J.Q. no" alternate-citation="Q.J. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="A.N.-B. no" alternate-citation="N.B.J. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation=" R.C. de l'É" alternate-citation="Ex. C.R."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="R.C.F." alternate-citation="F.C.R."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="C.F." alternate-citation="F.C."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="R.C.S." alternate-citation="S.C.R."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="C.S.C.R. no" alternate-citation="S.C.C.A. No."/>
            <ext:reference primary-language="French" alternate-language="English" primary-citation="A.C.A.C. no" alternate-citation="C.M.A.J. No."/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="C.M.A.J. No." alternate-citation="A.C.A.C. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="Ex.C.R." alternate-citation=" R.C. de l'É"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="F.C.J. No." alternate-citation="A.C.F. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="F.C.R" alternate-citation="R.C.F."/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="F.C." alternate-citation="C.F."/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="Q.J. No." alternate-citation="J.Q. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="N.B.J. No." alternate-citation="A.N.-B. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="S.C.C.A. No." alternate-citation="C.S.C.R. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="S.C.J. No." alternate-citation="A.C.S. no"/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="S.C.R." alternate-citation="R.C.S."/>
            <ext:reference primary-language="English" alternate-language="French" primary-citation="T.C.J. No." alternate-citation="A.C.I. no"/>
            <!--<ext:reference primary-language="" alternate-language="" primary-citation="N.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="N.S.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="Nu.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="N.W.T.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="O.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="O.R." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="P.E.I.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="Ex. C.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="S.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="A.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="B.C.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="Y.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="I.L.R." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="C.N.L.R." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="DTC" alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="Ex.C.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="J.C.J." alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="UKPC" alternate-citation=""/>
            <ext:reference primary-language="" alternate-language="" primary-citation="M.J." alternate-citation=""/>-->
        </ext:references>
    </xsl:variable>
    
    <xsl:key name="KRefrencebyName" match="ext:reference" use="string(@primary-citation)"/>
    
</xsl:stylesheet>