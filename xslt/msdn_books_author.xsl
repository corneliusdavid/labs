<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Helvetica;font-size:12px;background-color:white">

<table border="0" padding="4" style="margin-right:10px;">
	<tr>
		<th>Title</th>
		<th>Author</th>
		<th>Genre</th>
		<th>Price</th>
		<th>Date</th>
	</tr>
<xsl:for-each select="catalog/book">
	<xsl:sort select="author"/>
	<tr>
		<td><xsl:value-of select="title"/></td>
		<td><xsl:value-of select="author"/></td>
		<td><xsl:value-of select="genre"/></td>
		<td>$<xsl:value-of select="price"/></td>
		<td><xsl:value-of select="publish_date"/></td>
	</tr>
</xsl:for-each>
</table>
</body>
</html>