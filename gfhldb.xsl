<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html lang="en">
<head>
<title>GFHL - Players Database</title>

<script type="text/javascript" src="searchPage.js">
</script>

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

<b>PLAYER DATABASE</b>
<p />
<table class="noborder">
	<tr>
	<td class="no"><b>Last Updated:</b>
	</td>
	<td class="no"><xsl:value-of select="GFHL/UPDATED"/>	</td>
	</tr>
	<tr>
	<td class="no"><b>Last Transaction:</b></td>
	<td class="no"><xsl:value-of select="GFHL/LASTTRANS"/>
	</td>
	</tr>
</table>
<p />
<table><tr><td>
<center>KEY</center></td>
</tr>
	<tr>
		<td class="no"> Forward - denotes FWD
		</td>
	</tr>
	<tr>
		<xsl:attribute name="class">colourdefman
		</xsl:attribute> 
		<td class="no"> Defencemen - denotes DEF
		</td>
	</tr>
	<tr>
		<xsl:attribute name="class">colourgoalie
		</xsl:attribute> 
		<td class="no"> Goaltender - denotes GLT
		</td>
	</tr>
	<tr>
		<xsl:attribute name="class">colourfreeagent
		</xsl:attribute> 
		<td class="no"> fa - denotes free agent
		</td>
	</tr>
</table>
<p />

<table class="nobroder">
<form name="player" method="post" action="http://www.hockeydb.com/ihdb/stats/findplayer.php">
<tr>
    <td class="no" align="center"><a href="http://hockeydb.com" target="_blank"><img src="http://www.hockeydb.com/images/logo.gif" alt="hockey DB" width="65%" border="0"></img></a></td>
    <td class="no" width="25%" align="center"> <input type="text" name="full_name" class="inp2" /> </td>
    <td class="no" width="25%" align="center"> <input name="imageField" type="image" src="http://www.hockeydb.com/images/btn_player-search.gif" width="147" height="30" border="0" /> </td>
</tr>
</form>
</table>
<p />
<table class="noborder">
	<tr>
		<td><center><b>Team</b></center></td>
		<td><center><b>Player's Name</b></center></td>
		<td><center><b>Position</b></center></td>
	</tr>
	<xsl:for-each select="GFHL/DB/Player[TEAM!='fa']">
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


		<td class="no"><center>
                    <xsl:value-of select="TEAM"/>
                </center></td>
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
		<td class="no">
		<center>
                    <xsl:value-of select="POS"/>
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

