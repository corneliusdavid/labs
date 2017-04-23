<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Tahoma;font-size:12pxt;background-color:#EEBBCC">
<table border="0" padding="4" style="margin-right:10px;">
<xsl:for-each select="CATALOG/CD">
	<tr>
		<th><xsl:value-of select="TITLE"/></th>
		<td><xsl:value-of select="ARTIST"/></td>
		<td>$<xsl:value-of select="PRICE"/></td>
		<td>(<xsl:value-of select="YEAR"/>) <xsl:value-of select="COMPANY"/>/<xsl:value-of select="COUNTRY"/></td>
	</tr>
</xsl:for-each>
</table>
</body>
</html>