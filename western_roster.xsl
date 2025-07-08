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
{	border-width:0px;	
        font-size:14px; 	
        border-color:#000000; 	
        border-style:ridge;  
        border-collapse:collapse;
}      
td 
{	border-width:0px;
	border-color:#000000;
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
                    border-collapse: collapse;
	            } 

    td.no  {border-width: 0px; 
            border-style: ridge; 
            padding: 3px;
	    }
    td.image {border-width: 0px; 
	      border-style: ridge; 
	      padding: 3px; 
	      background-color:#FFFFFF; 
	      }
    td.TeamName  {border-width: 0px; 
                  border-style: ridge; 
                  padding: 3px; 
	          width: 260px;
		  background-color:#FFFFFF; 
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
    td.TeamInfo {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center;}
    td.TeamInfoANA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#CF4520;}
    td.TeamInfoCGY {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#F1BE48;}
    td.TeamInfoCHI {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoCOL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#236192;}
    td.TeamInfoDAL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoEDM {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#CF4520;}
    td.TeamInfoLA  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#A2AAAD;}
    td.TeamInfoMIN {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#DDCBA4;}
    td.TeamInfoNSH {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#041E42;}
    td.TeamInfoSJ  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoSEA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#9CDBD9;}
    td.TeamInfoSTL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#FFB81C;}
    td.TeamInfoUTA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoVAN {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00843D;}
    td.TeamInfoVGK {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#333F48;}
    td.TeamInfoWPG {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#004C97;}

    tr.AnaheimFWD      {color:#010101;background-color:#CF4520;}
    tr.AnaheimDEF      {color:#FFFFFF;background-color:#CF4520;}
    tr.AnaheimGLT      {color:#B9975B;background-color:#CF4520;}
    tr.AnaheimFWD      td {color:#010101;background-color:#CF4520;}
    tr.AnaheimDEF      td {color:#FFFFFF;background-color:#CF4520;}
    tr.AnaheimGLT      td {color:#B9975B;background-color:#CF4520;}
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
    tr.VancouverGLT    td {color:#00843D;}
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

a.AnaheimFWD     {color:#010101;}
a.AnaheimDEF     {color:#FFFFFF;}
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
a.VancouverGLT  {color:#00843D;}
a.VegasFWD      {color:#FFFFFF;}
a.VegasDEF      {color:#333F48;}
a.VegasGLT      {color:#B9975B;}
a.WinnipegFWD   {color:#FFFFFF;}
a.WinnipegDEF   {color:#004C97;}
a.WinnipegGLT   {color:#A2AAAD;}

a.Anaheim {color:#CF4520;text-decoration:none;}
a.Anaheim:hover {color:#CF4520;text-decoration:none;}
a.Calgary {color:#F1BE48;text-decoration:none;}
a.Calgary:hover {color:#F1BE48;text-decoration:none;}
a.Chicago {color:#010101;text-decoration:none;}
a.Chicago:hover {color:#010101;text-decoration:none;}
a.Colorado {color:#236192;text-decoration:none;}
a.Colorado:hover {color:#236192;text-decoration:none;}
a.Dallas {color:#010101;text-decoration:none;}
a.Dallas:hover {color:#010101;text-decoration:none;}
a.Edmonton {color:#CF4520;text-decoration:none;}
a.Edmonton:hover {color:#CF4520;text-decoration:none;}
a.LosAngeles {color:#A2AAAD;text-decoration:none;}
a.LosAngeles:hover {color:#A2AAAD;text-decoration:none;}
a.Minnesota {color:#DDCBA4;text-decoration:none;}
a.Minnesota:hover {color:#DDCBA4;text-decoration:none;}
a.Nashville {color:#041E42;text-decoration:none;}
a.Nashville:hover {color:#041E42;text-decoration:none;}
a.StLouis {color:#FFB81C;text-decoration:none;}
a.StLouis:hover {color:#FFB81C;text-decoration:none;}
a.SanJose {color:#010101;text-decoration:none;}
a.SanJose:hover {color:#010101;text-decoration:none;}
a.Seattle {color:#9CDBD9;text-decoration:none;}
a.Seattle:hover {color:#9CDBD9;text-decoration:none;}
a.Utah {color:#010101;text-decoration:none;}
a.Utah:hover {color:#010101;text-decoration:none;}
a.Vancouver {color:#00843D;text-decoration:none;}
a.Vancouver:hover {color:#00843D;text-decoration:none;}
a.Vegas {color:#333F48;text-decoration:none;}
a.Vegas:hover {color:#333F48;text-decoration:none;}
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
				<td class="image"><img src="Anaheim" height="100" width="150" /></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoANA">
							ANAHEIM DUCKS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='ANA']">
							<tr><td class="TeamInfoANA">
								GM - <a class='Anaheim' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoANA">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
								<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Calgary" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoCGY">
							CALGARY FLAMES
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='CGY']">
							<tr><td class="TeamInfoCGY">
								GM - <a class='Calgary' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoCGY">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Chicago" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoCHI">
							CHICAGO BLACKHAWKS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='CHI']">
							<tr><td class="TeamInfoCHI">
								GM - <a class='Chicago' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoCHI">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Colorado" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoCOL">
							COLORADO AVALANCHE
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='COL']">
							<tr><td class="TeamInfoCOL">
								GM - <a class='Colorado' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoCOL">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Dallas" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoDAL">
							DALLAS STARS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='DAL']">
							<tr><td class="TeamInfoDAL">
								GM - <a class='Dallas' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoDAL">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Edmonton" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoEDM">
							EDMONTON OILERS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='EDM']">
							<tr><td class="TeamInfoEDM">
								GM - <a class='Edmonton' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoEDM">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="LosAngeles" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoLA">
							LOS ANGELES KINGS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='LA']">
							<tr><td class="TeamInfoLA">
								GM - <a class='LosAngeles' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoLA">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Minnesota" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoMIN">
							MINNESOTA WILD
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='MIN']">
							<tr><td class="TeamInfoMIN">
								GM - <a class='Minnesota' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoMIN">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Nashville" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoNSH">
							NASHVILLE PREDATORS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='NSH']">
							<tr><td class="TeamInfoNSH">
								GM - <a class='Nashville' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoNSH">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="SanJose" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoSJ">
							SAN JOSE SHARKS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='SJ']">
							<tr><td class="TeamInfoSJ">
								GM - <a class='SanJose' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoSJ">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Seattle" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoSEA">
							SEATTLE KRAKEN
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='SEA']">
							<tr><td class="TeamInfoSEA">
								GM - <a class='Seattle' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoSEA">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="StLouis" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoSTL">
							ST. LOUIS BLUES
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='STL']">
							<tr><td class="TeamInfoSTL">
								GM - <a class='StLouis' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoSTL">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Utah" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoUTA">
							UTAH MAMMOTH
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='UTA']">
							<tr><td class="TeamInfoUTA">
								GM - <a class='Utah' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoUTA">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Vancouver" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoVAN">
							VANCOUVER CANUCKS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='VAN']">
							<tr><td class="TeamInfoVAN">
								GM - <a class='Vancouver' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoVAN">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Vegas" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoVGK">
							VEGAS GOLDEN KNIGHTS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='VGK']">
							<tr><td class="TeamInfoVGK">
								GM - <a class='Vegas' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoVGK">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
				<td class="image"><img src="Winnipeg" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoWPG">
							WINNIPEG JETS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='WPG']">
							<tr><td class="TeamInfoWPG">
								GM - <a class='Winnipeg' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoWPG">
								<xsl:choose>
									<xsl:when test="HeadCoach !=''">
								            HC: <xsl:value-of select="HeadCoach"/>
								        </xsl:when>
								        <xsl:otherwise>
								            &#160;
								        </xsl:otherwise>
								</xsl:choose>
							</td></tr>
						</xsl:for-each>
					</table>
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
							<xsl:choose>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/> *****
								</xsl:when>
								<xsl:when test="((CAPTAIN != '') and (UNPROTECTED = ''))">
									<xsl:value-of select="NAME"/> - <xsl:value-of select="CAPTAIN"/>
								</xsl:when>
								<xsl:when test="((CAPTAIN = '') and (UNPROTECTED != ''))">
									<xsl:value-of select="NAME"/> *****
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="NAME"/>
								</xsl:otherwise>
								</xsl:choose>
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
