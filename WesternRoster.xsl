<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html lang="en">
<head>
<title>GFHL - Western Roster</title>

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

<b>Western Roster</b>
</center>
<p />

<table class="noborder">
	<tr><td><center><b>Anaheim Ducks</b></center></td></tr>
	<tr><td><center><b>GM / TIM</b></center></td></tr>
</table>
<table>
	<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
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
			<center>
			<xsl:choose>
			      <xsl:when test="SLOT = '17'">
			         <td class="no">ENF</td>
			      </xsl:when>
			      <xsl:when test="SLOT = '18'">
			         <td class="no">ENF</td>
			      </xsl:when>
			      <xsl:when test="SLOT = '21'">
			         <td class="no">RES</td>
			      </xsl:when>
			      <xsl:when test="SLOT = '22'">
			         <td class="no">RES</td>
			      </xsl:when>
			      <xsl:when test="SLOT = '23'">
			         <td class="no">RES</td>
			      </xsl:when>
			      <xsl:when test="SLOT = '24'">
			         <td class="no">RES</td>
			      </xsl:when>
			      <xsl:otherwise>
			          <td class="no"><xsl:value-of select="POS"/></td>
			      </xsl:otherwise>
			</xsl:choose>
                	</center>
		</td>
		<xsl:variable name="_web" select="WEB"/>
                <td class="no">

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

		</td>
	</tr>
	</xsl:for-each>
</table>

</body>
</html>
</xsl:template> 
</xsl:stylesheet> 
