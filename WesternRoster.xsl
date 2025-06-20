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
        font-size:14px;
}
table 
{	border-width:2px;	
        font-size:14px; 	
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
                    font-size: 14px;
                    font-family: Verdana, sans-serif;
	            font-weight:bold;
                    border-style: ridge;
                    border-collapse: collapse;} 

    td.no  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    }

    td.TeamName  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    width: 260px;
	    }
	
    td.Pos  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    }
	
    td.Name  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;
	    width:325px
	    }

    tr.AnaheimFWD      td {color:#FFFFFF;}
    tr.AnaheimDEF      td {color:#CF4520;}
    tr.AnaheimGLT      td {color:#B9975B;}
    tr.CalgaryFWD      td {color:#FFFFFF;}  
    tr.CalgaryDEF      td {color:#C8102E;}
    tr.CalgaryGLT      td {color:#F1BE48;}
    tr.ChicagoFWD      td {color:#FFFFFF;}
    tr.ChicagoDEF      td {color:#C8102E;}
    tr.ChicagoGLT      td {color:#CC8A00;}
    tr.ColoradoFWD     td {color:#FFFFFF;}
    tr.ColoradoDEF     td {color:#236192;}
    tr.ColoradoGLT     td {color:#A2AAAD;}
    tr.DallasFWD       td {color:#FFFFFF;}
    tr.DallasDEF       td {color:#00843D;}
    tr.DallasGLT       td {color:#A2AAAD;}
    tr.EdmontonFWD     td {color:#FFFFFF;}
    tr.EdmontonDEF     td {color:#00205B;}
    tr.EdmontonGLT     td {color:#CF4520;}
    tr.LosAngelesFWD   td {color:#FFFFFF;}
    tr.LosAngelesDEF   td {color:#A2AAAD;}
    tr.LosAngelesGLT   td {color:#868787;}
    tr.MinnesotaFWD    td {color:#FFFFFF;}
    tr.MinnesotaDEF    td {color:#154734;}
    tr.MinnesotaGLT    td {color:#EAAA00;}
    tr.NashvilleFWD    td {color:#FFFFFF;}
    tr.NashvilleDEF    td {color:#041E42;}
    tr.NashvilleGLT    td {color:#FFB81C;}
    tr.StLouisFWD      td {color:#FFFFFF;}
    tr.StLouisDEF      td {color:#003087;}
    tr.StLouisGLT      td {color:#FFB81C;}
    tr.SanJoseFWD      td {color:#FFFFFF;}  
    tr.SanJoseDEF      td {color:#006271;}
    tr.SanJoseGLT      td {color:#F1BE48;}
    tr.SeattleFWD      td {color:#FFFFFF;}
    tr.SeattleDEF      td {color:#6BA4B8;}
    tr.SeattleGLT      td {color:#E57200;}
    tr.UtahFWD         td {color:#FFFFFF;}
    tr.UtahDEF         td {color:#69B3E7;}
    	tr.UtahGLT         td {color:#69B3E7;}
    tr.VancouverFWD    td {color:#FFFFFF;}
    tr.VancouverDEF    td {color:#00205B;}
    tr.VancouverGLT    td {color:#00205B;}
    tr.VegasFWD        td {color:#FFFFFF;}
    tr.VegasDEF        td {color:#333F48;}
    tr.VegasGLT        td {color:#B9975B;}
    tr.WinnipegFWD     td {color:#FFFFFF;}
    tr.WinnipegDEF     td {color:#004C97;}
    tr.WinnipegGLT     td {color:#A2AAAD;}
	
a, a:link, a:visited {
	text-decoration: none; 
	font-family: Verdana, sans-serif; 
	}
a:hover, a:active {
	}

a.AnaheimFWD     {color:#FFFFFF;}
a.AnaheimDEF     {color:#CF4520;}
a.AnaheimGLT     {color:#B9975B;}
a.CalgaryFWD     {color:#FFFFFF;}
a.CalgaryDEF     {color:#C8102E;}
a.CalgaryGLT     {color:#F1BE48;}
a.ChicagoFWD     {color:#FFFFFF;}
a.ChicagoDEF     {color:#C8102E;}
a.ChicagoGLT     {color:#CC8A00;}
a.ColoradoFWD    {color:#FFFFFF;}
a.ColoradoDEF    {color:#236192;}
a.ColoradoGLT    {color:#A2AAAD;}
a.DallasFWD      {color:#FFFFFF;}
a.DallasDEF      {color:#00843D;}
a.DallasGLT      {color:#A2AAAD;}
a.EdmontonFWD    {color:#FFFFFF;}
a.EdmontonDEF    {color:#00205B;}
a.EdmontonGLT    {color:#CF4520;}
a.LosAngelesFWD  {color:#FFFFFF;}
a.LosAngelesDEF  {color:#A2AAAD;}
a.LosAngelesGLT  {color:#868787;}
a.MinnesotaFWD  {color:#FFFFFF;}
a.MinnesotaDEF  {color:#154734;}
a.MinnesotaGLT  {color:#EAAA00;}
a.NashvilleFWD  {color:#FFFFFF;}
a.NashvilleDEF  {color:#041E42;}
a.NashvilleGLT  {color:#FFB81C;}
a.NashvilleFWD  {color:#FFFFFF;}
a.NashvilleDEF  {color:#041E42;}
a.NashvilleGLT  {color:#FFB81C;}
a.StLouisFWD    {color:#FFFFFF;}
a.StLouisDEF    {color:#003087;}
a.StLouisGLT    {color:#FFB81C;}
a.SanJoseFWD    {color:#FFFFFF;}  
a.SanJoseDEF    {color:#006271;}
a.SanJoseGLT    {color:#F1BE48;}
a.SeattleFWD    {color:#FFFFFF;}
a.SeattleDEF    {color:#6BA4B8;}
a.SeattleGLT    {color:#E57200;}
a.UtahFWD       {color:#FFFFFF;}
a.UtahDEF       {color:#69B3E7;}
    	a.UtahGLT         {color:#69B3E7;}
a.VancouverFWD  {color:#FFFFFF;}
a.VancouverDEF  {color:#00205B;}
a.VancouverGLT  {color:#00205B;}
a.VegasFWD      {color:#FFFFFF;}
a.VegasDEF      {color:#333F48;}
a.VegasGLT      {color:#B9975B;}
a.WinnipegFWD   {color:#FFFFFF;}
a.WinnipegDEF   {color:#004C97;}
a.WinnipegGLT   {color:#A2AAAD;}

	

a.Anaheim {color:#CF4520;text-decoration:none;}
a.Anaheim:hover {color:#CF4520;text-decoration:none;}
a.Calgary {color:#C8102E;text-decoration:none;}
a.Calgary:hover {color:#C8102E;text-decoration:none;}
a.Chicago {color:#C8102E;text-decoration:none;}
a.Chicago:hover {color:#C8102E;text-decoration:none;}
a.Colorado {color:#236192;text-decoration:none;}
a.Colorado:hover {color:#236192;text-decoration:none;}
a.Dallas {color:#00843D;text-decoration:none;}
a.Dallas:hover {color:#00843D;text-decoration:none;}
a.Edmonton {color:#00205B;text-decoration:none;}
a.Edmonton:hover {color:#00205B;text-decoration:none;}
a.LosAngeles {color:#A2AAAD;text-decoration:none;}
a.LosAngeles:hover {color:#A2AAAD;text-decoration:none;}
a.Minnesota {color:#154734;text-decoration:none;}
a.Minnesota:hover {color:#154734;text-decoration:none;}
a.Nashville {color:#FFB81C;text-decoration:none;}
a.Nashville:hover {color:#FFB81C;text-decoration:none;}
a.StLouis {color:#003087;text-decoration:none;}
a.StLouis:hover {color:#003087;text-decoration:none;}
a.SanJose {color:#006271;text-decoration:none;}
a.SanJose:hover {color:#006271;text-decoration:none;}
a.Seattle {color:#9CDBD9;text-decoration:none;}
a.Seattle:hover {color:#9CDBD9;text-decoration:none;}
a.Utah {color:#69B3E7;text-decoration:none;}
a.Utah:hover {color:#69B3E7;text-decoration:none;}
a.Vancouver {color:#00205B;text-decoration:none;}
a.Vancouver:hover {color:#00205B;text-decoration:none;}
a.Vegas {color:#B9975B;text-decoration:none;}
a.Vegas:hover {color:#B9975B;text-decoration:none;}
a.Winnipeg {color:#004C97;text-decoration:none;}
a.Winnipeg:hover {color:#004C97;text-decoration:none;}

</style>
</head>

<body>

<center>
<span style="font-size:24pt;"><b>WESTERN ROSTER</b></span>
</center>
<p />
<table class="noborder">
<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Anaheim" /></td>
				<td class="TeamName"><center>
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
						<xsl:attribute name="class">AnaheimGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">AnaheimDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">AnaheimFWD
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
								<xsl:attribute name="class">AnaheimGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">AnaheimDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">AnaheimFWD
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
						<xsl:attribute name="class">CalgaryGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">CalgaryDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">CalgaryFWD
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
								<xsl:attribute name="class">CalgaryGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">CalgaryDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">CalgaryFWD
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
						<xsl:attribute name="class">ChicagoGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">ChicagoDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">ChicagoFWD
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
								<xsl:attribute name="class">ChicagoGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">ChicagoDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">ChicagoFWD
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
						<xsl:attribute name="class">ColoradoGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">ColoradoDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">ColoradoFWD
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
								<xsl:attribute name="class">ColoradoGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">ColoradoDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">ColoradoFWD
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
<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Dallas" /></td>
				<td class="no"><center>
				<div style='color:#00843D;'><b>DALLAS STARS</b></div><br />
				<div style='color:#00843D;'><b>GM - </b><a class='Dallas' href="mailto:simonyu84@gmail.com"><b>SIMON</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='DAL']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">DallasGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">DallasDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">DallasFWD
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
								<xsl:attribute name="class">DallasGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">DallasDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">DallasFWD
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
				<td class="no"><img src="Edmonton" /></td>
				<td class="no"><center>
				<div style='color:#00205B;'><b>EDMONTON OILERS</b></div><br />
				<div style='color:#00205B;'><b>GM - </b><a class='Edmonton' href="mailto:mjohns05@outlook.com"><b>MIKEY</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='EDM']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">EdmontonGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">EdmontonDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">EdmontonFWD
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
								<xsl:attribute name="class">EdmontonGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">EdmontonDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">EdmontonFWD
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
				<td class="no"><img src="LosAngeles" /></td>
				<td class="no"><center>
				<div style='color:#A2AAAD;'><b>LOS ANGELES KINGS </b></div><br />
				<div style='color:#A2AAAD;'><b>GM - </b><a class='LosAngeles' href="mailto:tblain1@gmail.com"><b>TOM</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='LA']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">LosAngelesGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">LosAngelesDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">LosAngelesFWD
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
								<xsl:attribute name="class">LosAngelesGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">LosAngelesDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">LosAngelesFWD
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
				<td class="no"><img src="Minnesota" /></td>
				<td class="no"><center>
				<div style='color:#154734;'><b>MINNESOTA WILD</b></div><br />
				<div style='color:#154734;'><b>GM - </b><a class='Minnesota' href="mailto:leduc_paul@hotmail.com"><b>PAUL</b></a></div><br />
				<div style='color:#154734;'><b>HC: MARIAN GABORIK​</b></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='MIN']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">MinnesotaGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">MinnesotaDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">MinnesotaFWD
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
								<xsl:attribute name="class">MinnesotaGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">MinnesotaDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">MinnesotaFWD
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

<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Nashville" /></td>
				<td class="no"><center>
				<div style='color:#FFB81C;'><b>NASHVILLE PREDATORS</b></div><br />
				<div style='color:#FFB81C;'><b>GM - </b><a class='Nashville' href="mailto:bharwood84@hotmail.com"><b>BRETT</b></a></div><br />
				<div style='color:#FFB81C;'><b>HC: MIKE FISHER</b></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='NSH']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">NashvilleGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">NashvilleDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">NashvilleFWD
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
								<xsl:attribute name="class">NashvilleGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">NashvilleDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">NashvilleFWD
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
				<td class="no"><img src="SanJose" /></td>
				<td class="no"><center>
				<div style='color:#006271;'><b>SAN JOSE SHARKS</b></div><br />
				<div style='color:#006271;'><b>GM - </b><a class='SanJose' href="mailto:bealls77corvette@gmail.com"><b>PHIL</b></a></div><br />
				<div style='color:#006271;'><b>HC: MIKE RICCI​</b></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='SJ']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">SanJoseGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">SanJoseDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">SanJoseFWD
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
								<xsl:attribute name="class">SanJoseGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">SanJoseDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">SanJoseFWD
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
				<td class="no"><img src="Seattle" /></td>
				<td class="no"><center>
				<div style='color:#9CDBD9;'><b>SEATTLE KRAKEN</b></div><br />
				<div style='color:#9CDBD9;'><b>GM - </b><a class='Seattle' href="mailto:nspaeth@hotmail.com"><b>NEIL</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='SEA']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">SeattleGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">SeattleDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">SeattleFWD
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
								<xsl:attribute name="class">SeattleGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">SeattleDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">SeattleFWD
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
				<td class="no"><img src="StLouis" /></td>
				<td class="no"><center>
				<div style='color:#003087;'><b>ST LOUIS BLUES</b></div><br />
				<div style='color:#003087;'><b>GM - </b><a class='StLouis' href="mailto:cultsuperhero@gmail.com"><b>MIKE</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='STL']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">StLouisGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">StLouisDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">StLouisFWD
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
								<xsl:attribute name="class">StLouisGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">StLouisDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">StLouisFWD
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

<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="no"><img src="Utah" /></td>
				<td class="no"><center>
				<div style='color:#69B3E7;'><b>UTAH MAMMOTH</b></div><br />
				<div style='color:#69B3E7;'><b>GM - </b><a class='Utah' href="mailto:gbunn19@gmail.com"><b>GARY</b></a></div><br />
				<div style='color:#69B3E7;'><b>HC: JEREMY ROENICK​</b></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='UTA']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">UtahGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">UtahDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">UtahFWD
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
								<xsl:attribute name="class">UtahGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">UtahDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">UtahFWD
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
				<td class="no"><img src="Vancouver" /></td>
				<td class="no"><center>
				<div style='color:#00205B;'><b>VANCOUVER CANUCKS</b></div><br />
				<div style='color:#00205B;'><b>GM - </b><a class='Vancouver' href="mailto:mcgrawtalen@gmail.com"><b>TALEN</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='VAN']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">VancouverGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">VancouverDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">VancouverFWD
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
								<xsl:attribute name="class">VancouverGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">VancouverDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">VancouverFWD
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
				<td class="no"><img src="Vegas" /></td>
				<td class="no"><center>
				<div style='color:#B9975B;'><b>VEGAS GOLDEN KNIGHTS</b></div><br />
				<div style='color:#B9975B;'><b>GM - </b><a class='Vegas' href="mailto:martybaroni@gmail.com"><b>MARTY</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='VGK']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">VegasGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">VegasDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">VegasFWD
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
								<xsl:attribute name="class">VegasGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">VegasDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">VegasFWD
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
				<td class="no"><img src="Winnipeg" /></td>
				<td class="no"><center>
				<div style='color:#004C97;'><b>WINNIPEG JETS</b></div><br />
				<div style='color:#004C97;'><b>GM - </b><a class='Winnipeg' href="mailto:kyle.gartner@gmail.com"><b>KYLE</b></a></div>
				</center></td>
			</tr>
		</table>
		<table>
			<xsl:for-each select="GFHL/DB/Player[TEAM='WPG']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">WinnipegGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">WinnipegDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">WinnipegFWD
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
								<xsl:attribute name="class">WinnipegGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">WinnipegDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">WinnipegFWD
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
