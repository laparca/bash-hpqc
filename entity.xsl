<?xml version="1.0"?>

<!-- Trasforma las descripciones de entidades -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Fields/Field">
			<xsl:value-of select="@PhysicalName"/>|<xsl:value-of select="@Name"/>|<xsl:value-of select="@Label"/>|<xsl:value-of select="Size"/>|<xsl:value-of select="History"/>|<xsl:value-of select="Required"/>|<xsl:value-of select="System"/>|<xsl:value-of select="Type"/>|<xsl:value-of select="Verify"/>|<xsl:value-of select="Virtual"/>|<xsl:value-of select="Active"/>|<xsl:value-of select="Editable"/>|<xsl:value-of select="Filterable"/>|<xsl:value-of select="Groupable"/>|<xsl:value-of select="SupportsMultivalue"/>|<xsl:value-of select="List-Id"/><xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
