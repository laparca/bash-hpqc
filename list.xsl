<?xml version="1.0"?>

<!-- Trasforma las descripciones de entidades -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Lists/List/Items/Item">
			<xsl:value-of select="@value"/><xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
