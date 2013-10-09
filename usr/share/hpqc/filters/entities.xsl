<?xml version="1.0"?>

<!-- Trasforma las descripciones de entidades -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="EntityDescriptors/EntityDescriptor">
			<xsl:value-of select="Name"/>|<xsl:value-of select="Table"/>|<xsl:value-of select="Label"/><xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>




