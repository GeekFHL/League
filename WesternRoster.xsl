<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html lang="en">
<head>
<title>GFHL - WESTERN Roster</title>


<style>
body
{
	background-color:#000000; 
        color:#FFFFFF; 	
        font-family: Verdana, sans-serif;
        font-size:24px;
}
table 
{	border-width:2px;	
        font-size:18px; 	
        border-color:#ffffff; 	
        border-style:ridge;  
        border-collapse:collapse;
}      

td 
{	border-width:1px;
	border-color:#FFFFFF;
        border-style:ridge;   
        padding:3px; 
        color:#FFFFFF;
}

/* Tables  */
    table.noborder {border-width: 0px;
                    font-size: 18px;
                    font-family: Verdana, sans-serif; 
                    border-style: ridge;
                    border-collapse: collapse;} 

    td.no  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;}


    tr.colourgoalie    td {color:#FF0000;}
    tr.colourdefman    td {color:#7CFC00;}
    tr.colourfreeagent td {color:#800080;}
    tr.colourheader    td {color:#FFFF00;font-size: 24px;}

a, a:link, a:visited {
	text-decoration: none; 
	font-family: Verdana, sans-serif; 
	}
a:hover, a:active {
	text-decoration: underline;
	}

a.colorgoalie	 {color:#FF0000;}
a.colordefman	 {color:#7CFC00;}
a.colorfreeagent {color:#800080;}
a.colorforward	 {color:#FFFFFF;}

</style>
</head>

<body>

<center>

<b>GFHL - Western Roster</b>
<p />
<table>
	<tr><td>ANAHEIM DUCKS</td></tr>
	<tr><td>GM / <a href="mailto:timjhamilton@hotmail.com" >TIM</a></td></tr>
	<tr><td><br /></td></tr>
</table>
<table class="noborder">
	<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
      	<xsl:sort select="SLOT" data-type="text" order="ascending"/>
	<xsl:sort select="NAME" data-type="text" order="ascending"/>
	<tr>
		<xsl:choose>
          	<xsl:when test="TEAM='fa'">
			<xsl:attribute name="class"> colourfreeagent
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS='GLT'">
			<xsl:attribute name="class">colourgoalie
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS='DEF'">
			<xsl:attribute name="class">colourdefman
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS!='FWD'">
			<xsl:attribute name="class">colourheader
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:otherwise>
            	</xsl:otherwise>
		</xsl:choose>


		<td class="no">
		<left>
                    <xsl:value-of select="POS"/>
                </center>
		</td>
		<xsl:variable name="_web" select="WEB"/>
                <td class="no">
		<center>
		<xsl:choose>
		<xsl:when test="WEB='http://www.hockeydb.com'">
			<xsl:value-of select="NAME"/>
		</xsl:when>
		<xsl:otherwise>
			<a href="{$_web}" target="_blank">
				<xsl:choose>
          	<xsl:when test="TEAM='fa'">
			<xsl:attribute name="class">colorfreeagent
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS='GLT'">
			<xsl:attribute name="class">colorgoalie
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS='DEF'">
			<xsl:attribute name="class">colordefman
			</xsl:attribute> 
          	</xsl:when>
          	<xsl:when test="POS='FWD'">
			<xsl:attribute name="class">colorforward
			</xsl:attribute> 
          	</xsl:when>

				</xsl:choose>
				<xsl:value-of select="NAME"/>
			</a>
            	</xsl:otherwise>
		</xsl:choose>
                </center>
		</td>
		
	</tr>
	</xsl:for-each>
</table>
</center>

</body>
</html>
</xsl:template> 
</xsl:stylesheet> 

