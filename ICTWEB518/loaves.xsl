<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

	<html>
	<head>
	<style>
	table{border: 2px dashed}
	th{background-color: gray}
	
	tr:nth-child(even){background: white}
	tr:nth-child(odd){background: lightblue}
	
	
	</style>
	</head>
	<body>
	<h2>Lui's Loaves</h2>
	<table>
		<tr bgcolor="beige">
			<th>Loaf Name</th>
			<th>Price</th>
			<th>Photo</th>
			<th>Description</th>
		</tr>
	
		<xsl:for-each select="loaves/loaf">
		<tr>
			<td><xsl:value-of select="@type" /></td>
			<td><xsl:value-of select="price" /></td>
			<td>
			<img> 
				<xsl:attribute name="src">
					<xsl:value-of select="gif" />
				</xsl:attribute>
			</img>
			</td>
			<td><xsl:value-of select="description"/></td>
		</tr>
		</xsl:for-each>
	</table>
	</body>
	</html>

</xsl:template>