<?xml version="1.0"?>

<!-- Trasforma las descripciones de entidades -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Entities/Entity">
			<xsl:text></xsl:text>||<xsl:value-of select="Fields/Field[@Name='name']/Value"/>|<xsl:value-of select="Fields/Field[@Name='id']/Value"/>|<xsl:value-of select="Fields/Field[@Name='parent-id']/Value"/><xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>


