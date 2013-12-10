<?xml version="1.0"?>

<!-- Trasforma las descripciones de entidades -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:value-of select="Entities/@TotalResults"/>
	</xsl:template>
</xsl:stylesheet>

