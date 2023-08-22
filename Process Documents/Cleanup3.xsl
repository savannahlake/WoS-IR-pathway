<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" xmlns:mods="http://www.loc.gov/mods/v3">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!-- This XSLT splits modsCollection records into individual MODS records and renames the filenames using the identifier element. JRN -->
        <xsl:template match="mods:modsCollection/mods:mods">
        <xsl:result-document method="xml" href="{mods:identifier[@type='local']}.xml">
            <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xlink="http://www.w3.org/1999/xlink"
                xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-7.xsd"
                version="3.7">
                <xsl:copy-of select="*"/>
            </mods>
        </xsl:result-document>
    </xsl:template> 
</xsl:stylesheet>