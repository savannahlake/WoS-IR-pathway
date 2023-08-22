<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- Cleanup XSLT to be used immediately after OpenRefine process; removes all empty nodes, all quotation marks in text() elements, and nodes with text value 'null' in them. JRN 2022-05 -->
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" media-type="text/xml"/>
    <xsl:strip-space elements="*"/>    
    
    
    
    
     
    <xsl:template match="*[not(node())]"/>    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()[normalize-space()]|@*[normalize-space()]"/>
        </xsl:copy>
        
    </xsl:template> 
    
    <!-- Removes 'null' value from text() elements -->
    <xsl:template match="*[. = '' or . = '&quot;null&quot;']"/>
        
    
    
    <xsl:template match="*/text()">
        <xsl:value-of select="translate(., '\&quot;', '')"/>        
    </xsl:template> 
    
    
      
    
    
</xsl:stylesheet>
