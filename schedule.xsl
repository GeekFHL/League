<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.0"/>
<xsl:template match="/">
<html lang="en">
   <head>
   <title>Schedule</title>
   <link rel="stylesheet" type="text/css" href="gfhlmain.css" />
   </head>
   <body>
  
  
      <div id="wrapper">
      <h1><center>2024-25 Schedule</center></h1>
      <br />

      <div class="text">

	<xsl:for-each select="Schedule/Week/number=['1']">
	<h2>Week 1 - <xsl:value-of select="Dates"/></h2>
        <table class="contactnoborder">

		 <xsl:for-each select="Schedule/Week/number=['1']/Games/Game">
		 <tr>
		    <td><xsl:value-of select="Home"/></td>
			<td><xsl:value-of select="HomeRecord"/> / </td>
			<td><xsl:value-of select="Away"/></td>
			<td><xsl:value-of select="AwayRecord"/></td>
			<td><xsl:value-of select="Results"/></td>
			<td><xsl:value-of select="Points"/></td>
			<xsl:when test="Alert='Y'">
			 - UPSET ALERT!! 
			</xsl:when>
		 </tr>
		 </xsl>
		 
	  </table>
	  </xsl>
	  </div>
	  
	  </div>
   </body>
</html>
</xsl:template>
</xsl:stylesheet>
