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
                    font-size: 12px;
                    font-family: Verdana, sans-serif; 
                    border-style: ridge;
                    border-collapse: collapse;} 

    td.no  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    }
	
    td.Pos  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    width:85px
	    }
    td.Name  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    width:450px
	    }


    tr.colourgoalie    td {color:#FF0000;}
    tr.colourdefman    td {color:#7CFC00;}
    tr.colourfreeagent td {color:#800080;}
    tr.colourheader    td {color:#FFFF00;font-size: 18px;}

a, a:link, a:visited {
	text-decoration: none; 
	font-family: Verdana, sans-serif; 
	}
a:hover, a:active {
	}

a.colorgoalie	 {color:#FF0000;}
a.colordefman	 {color:#7CFC00;}
a.colorfreeagent {color:#800080;}
a.colorforward	 {color:#FFFFFF;}

a.Anaheim {color:#CF4520;text-decoration:none;}
a.Anaheim:hover {color:#CF4520;text-decoration:none;}
a.Calgary {color:#C8102E;text-decoration:none;}
a.Calgary:hover {color:#C8102E;text-decoration:none;}
a.Chicago {color:#C8102E;text-decoration:none;}
a.Chicago:hover {color:#C8102E;text-decoration:none;}
a.Colorado {color:#236192;text-decoration:none;}
a.Colorado:hover {color:#236192;text-decoration:none;}

</style>
</head>

<body>

<center>
<span style="font-size:18pt;"><b>WESTERN ROSTER</b></span>
</center>
<p />
<table class="noborder">
<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Anaheim" /></td>
				<td class="no"><center>
				<div style='color:#CF4520;'><b>ANAHEIM DUCKS</b></div><br />
				<div style='color:#CF4520;'><b>GM - </b><a class='Anaheim' href="mailto:timjhamilton@hotmail.com"><b>TIM</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
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
					<td class="Pos">
						<center>
						<xsl:choose>
						      <xsl:when test="SLOT = '17'">
						         <td class="Pos">ENF</td>
						      </xsl:when>
						      <xsl:when test="SLOT = '18'">
						         <td class="Pos">ENF</td>
						      </xsl:when>
						      <xsl:when test="SLOT = '21'">
						         <td class="Pos">RES</td>
						      </xsl:when>
						      <xsl:when test="SLOT = '22'">
						         <td class="Pos">RES</td>
						      </xsl:when>
						      <xsl:when test="SLOT = '23'">
						         <td class="Pos">RES</td>
						      </xsl:when>
						      <xsl:when test="SLOT = '24'">
						         <td class="Pos">RES</td>
						      </xsl:when>
						      <xsl:otherwise>
						          <td class="Pos"><xsl:value-of select="POS"/></td>
						      </xsl:otherwise>
						</xsl:choose>
			                	</center>
					</td>
					<xsl:variable name="_web" select="WEB"/>
			                <td class="Name">
						<xsl:choose>
						<xsl:when test="WEB='http://www.hockeydb.com'">
							<xsl:value-of select="NAME"/>
						</xsl:when>
						<xsl:otherwise>
							<a href="{$_web}" target="_blank">
							<xsl:choose>
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
	</td>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Calgary" /></td>
				<td class="no"><center>
				<div style='color:#C8102E;'><b>CALGARY FLAMES</b></div><br />
				<div style='color:#C8102E;'><b>GM - </b><a class='Calgary' href="mailto:jachan87@gmail.com"><b>JASON</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='CGY']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
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
	</td>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Chicago" /></td>
				<td class="no"><center>
				<div style='color:#C8102E;'><b>CHICAGO BLACKHAWKS</b></div><br />
				<div style='color:#C8102E;'><b>GM - </b><a class='Chicago' href="mailto:jdfitz12@yahoo.com"><b>JOHN</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='CHI']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
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
	</td>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Colorado" /></td>
				<td class="no"><center>
				<div style='color:#236192;'><b>COLORADO AVALANCHE</b></div><br />
				<div style='color:#236192;'><b>GM - </b><a class='Colorado' href="mailto:hektormcdonnell@gmail.com"><b>SHANNON</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='COL']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
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
	</td>
</tr>
</table>
	
</body>
</html>
</xsl:template> 
</xsl:stylesheet> 
