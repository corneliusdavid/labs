<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Tahoma;font-size:12pxt;background-color:#EEBBCC">
<xsl:for-each select="xsl_samples/xsl_sample">
	<div style="background-color:teal; color:white; padding: 6px; margin-top:20px;">
		<span style="font-weight:bold;font-size:16px;"><xsl:value-of select="title"/></span>
	</div>
	<div>
		<ul>
			<xsl:variable name="rawURL"><xsl:value-of select="base_file" />_raw.xml</xsl:variable> 
			<xsl:variable name="rawXSL"><xsl:value-of select="base_file" />.xsl</xsl:variable>
			<xsl:variable name="resultHTML"><xsl:value-of select="base_file" />.xml</xsl:variable>
			<li><span style="margin-left:20px;"><a href="{$rawURL}">Raw XML File</a></span></li>
			<li><span style="margin-left:20px;"><a href="{$rawXSL}">Raw XSL File</a></span></li>
			<li><span style="margin-left:20px;"><a href="{$resultHTML}">Resulting HTML</a></span></li>
		</ul>
	</div>
</xsl:for-each>
</body>
</html>