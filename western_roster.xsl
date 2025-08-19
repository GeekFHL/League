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
        font-family: Arial, sans-serif;
        font-size:16px;
}
table 
{	border-width:0px;	
        font-size:16px; 	
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
                    font-size: 16px; 
                    font-family: Arial, sans-serif; 
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
    td.TeamInfoCGY {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}
    td.TeamInfoCHI {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}
    td.TeamInfoCOL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#6F263D;}
    td.TeamInfoDAL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00843D;}
    td.TeamInfoEDM {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00205B;}
    td.TeamInfoLA  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoMIN {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#154734;}
    td.TeamInfoNSH {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#041E42;}
    td.TeamInfoSJ  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#006271;}
    td.TeamInfoSEA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#051C2C;}
    td.TeamInfoSTL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#0072CE;}
    td.TeamInfoUTA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoVAN {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00205B;}
    td.TeamInfoVGK {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#B9975B;}
    td.TeamInfoWPG {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#041E42;}

    tr.AnaheimFWD      {color:#010101;background-color:#CF4520;}
    tr.AnaheimDEF      {color:#FFFFFF;background-color:#CF4520;}
    tr.AnaheimGLT      {color:#B9975B;background-color:#CF4520;}
    tr.AnaheimFWD      td {color:#010101;background-color:#CF4520;}
    tr.AnaheimDEF      td {color:#FFFFFF;background-color:#CF4520;}
    tr.AnaheimGLT      td {color:#B9975B;background-color:#CF4520;}
	
    tr.CalgaryFWD      {color:#010101;background-color:#C8102E;}
    tr.CalgaryDEF      {color:#FFFFFF;background-color:#C8102E;}
    tr.CalgaryGLT      {color:#F1BE48;background-color:#C8102E;}
    tr.CalgaryFWD      td {color:#010101;background-color:#C8102E;}
    tr.CalgaryDEF      td {color:#FFFFFF;background-color:#C8102E;}
    tr.CalgaryGLT      td {color:#F1BE48;background-color:#C8102E;}
	
    tr.ChicagoFWD      {color:#010101;background-color:#C8102E;}
    tr.ChicagoDEF      {color:#FFFFFF;background-color:#C8102E;}
    tr.ChicagoGLT      {color:#CC8A00;background-color:#C8102E;}
    tr.ChicagoFWD      td {color:#010101;background-color:#C8102E;}
    tr.ChicagoDEF      td {color:#FFFFFF;background-color:#C8102E;}
    tr.ChicagoGLT      td {color:#CC8A00;background-color:#C8102E;}
	
    tr.ColoradoFWD     {color:#236192;background-color:#6F263D;}
    tr.ColoradoDEF     {color:#FFFFFF;background-color:#6F263D;}
    tr.ColoradoGLT     {color:#A2AAAD;background-color:#6F263D;}
    tr.ColoradoFWD     td {color:#236192;background-color:#6F263D;}
    tr.ColoradoDEF     td {color:#FFFFFF;background-color:#6F263D;}
    tr.ColoradoGLT     td {color:#A2AAAD;background-color:#6F263D;}
	
    tr.DallasFWD       {color:#010101;background-color:#00843D;}
    tr.DallasDEF       {color:#FFFFFF;background-color:#00843D;}
    tr.DallasGLT       {color:#A2AAAD;background-color:#00843D;}
    tr.DallasFWD       td {color:#010101;background-color:#00843D;}
    tr.DallasDEF       td {color:#FFFFFF;background-color:#00843D;}
    tr.DallasGLT       td {color:#A2AAAD;background-color:#00843D;}
	
    tr.EdmontonFWD     {color:#CF4520;background-color:#00205B;}
    tr.EdmontonDEF     {color:#FFFFFF;background-color:#00205B;}
    tr.EdmontonGLT     {color:#97999B;background-color:#00205B;}
    tr.EdmontonFWD     td {color:#CF4520;background-color:#00205B;}
    tr.EdmontonDEF     td {color:#FFFFFF;background-color:#00205B;}
    tr.EdmontonGLT     td {color:#97999B;background-color:#00205B;}
	
    tr.LosAngelesFWD   {color:#A2AAAD;background-color:#010101;}
    tr.LosAngelesDEF   {color:#FFFFFF;background-color:#010101;}
    tr.LosAngelesGLT   {color:#868787;background-color:#010101;}
    tr.LosAngelesFWD   td {color:#A2AAAD;background-color:#010101;}
    tr.LosAngelesDEF   td {color:#FFFFFF;background-color:#010101;}
    tr.LosAngelesGLT   td {color:#868787;background-color:#010101;}
	
    tr.MinnesotaFWD    {color:#DDCBA4;background-color:#154734;}
    tr.MinnesotaDEF    {color:#FFFFFF;background-color:#154734;}
    tr.MinnesotaGLT    {color:#EAAA00;background-color:#154734;}
    tr.MinnesotaFWD    td {color:#DDCBA4;background-color:#154734;}
    tr.MinnesotaDEF    td {color:#FFFFFF;background-color:#154734;}
    tr.MinnesotaGLT    td {color:#EAAA00;background-color:#154734;}
	
    tr.NashvilleFWD    {color:#FFB81C;background-color:#041E42;}
    tr.NashvilleDEF    {color:#FFFFFF;background-color:#041E42;}
    tr.NashvilleGLT    {color:#A2AAAD;background-color:#041E42;}
    tr.NashvilleFWD    td {color:#FFB81C;background-color:#041E42;}
    tr.NashvilleDEF    td {color:#FFFFFF;background-color:#041E42;}
    tr.NashvilleGLT    td {color:#A2AAAD;background-color:#041E42;}
	
    tr.StLouisFWD      {color:#FFB81C;background-color:#0072CE;}
    tr.StLouisDEF      {color:#FFFFFF;background-color:#0072CE;}
    tr.StLouisGLT      {color:#9A1B31;background-color:#0072CE;}
    tr.StLouisFWD      td {color:#FFB81C;background-color:#0072CE;}
    tr.StLouisDEF      td {color:#FFFFFF;background-color:#0072CE;}
    tr.StLouisGLT      td {color:#9A1B31;background-color:#0072CE;}
	
    tr.SanJoseFWD      {color:#010101;background-color:#006271;}
    tr.SanJoseDEF      {color:#FFFFFF;background-color:#006271;}
    tr.SanJoseGLT      {color:#E57200;background-color:#006271;}
    tr.SanJoseFWD      td {color:#010101;background-color:#006271;}
    tr.SanJoseDEF      td {color:#FFFFFF;background-color:#006271;}
    tr.SanJoseGLT      td {color:#E57200;background-color:#006271;}
	
    tr.SeattleFWD      {color:#9CDBD9;background-color:#051C2C;}
    tr.SeattleDEF      {color:#FFFFFF;background-color:#051C2C;}
    tr.SeattleGLT      {color:#6BA4B8;background-color:#051C2C;}
    tr.SeattleFWD      td {color:#9CDBD9;background-color:#051C2C;}
    tr.SeattleDEF      td {color:#FFFFFF;background-color:#051C2C;}
    tr.SeattleGLT      td {color:#6BA4B8;background-color:#051C2C;}
	
    tr.UtahFWD         {color:#69B3E7;background-color:#010101;}
    tr.UtahDEF         {color:#FFFFFF;background-color:#010101;}
    tr.UtahGLT         {color:#8D9093;background-color:#010101;}
    tr.UtahFWD         td {color:#69B3E7;background-color:#010101;}
    tr.UtahDEF         td {color:#FFFFFF;background-color:#010101;}
    tr.UtahGLT         td {color:#8D9093;background-color:#010101;}
	
    tr.VancouverFWD    {color:#00843D;background-color:#00205B;}
    tr.VancouverDEF    {color:#FFFFFF;background-color:#00205B;}
    tr.VancouverGLT    {color:#97999B;background-color:#00205B;}
    tr.VancouverFWD    td {color:#00843D;background-color:#00205B;}
    tr.VancouverDEF    td {color:#FFFFFF;background-color:#00205B;}
    tr.VancouverGLT    td {color:#97999B;background-color:#00205B;}
	
    tr.VegasFWD        {color:#010101;background-color:#B9975B;}
    tr.VegasDEF        {color:#FFFFFF;background-color:#B9975B;}
    tr.VegasGLT        {color:#333F48;background-color:#B9975B;}
    tr.VegasFWD        td {color:#010101;background-color:#B9975B;}
    tr.VegasDEF        td {color:#FFFFFF;background-color:#B9975B;}
    tr.VegasGLT        td {color:#333F48;background-color:#B9975B;}
	
    tr.WinnipegFWD     {color:#004C97;background-color:#041E42;}
    tr.WinnipegDEF     {color:#FFFFFF;background-color:#041E42;}
    tr.WinnipegGLT     {color:#A2AAAD;background-color:#041E42;}
    tr.WinnipegFWD     td {color:#004C97;background-color:#041E42;}
    tr.WinnipegDEF     td {color:#FFFFFF;background-color:#041E42;}
    tr.WinnipegGLT     td {color:#A2AAAD;background-color:#041E42;}
	
a, a:link, a:visited {
	text-decoration: none; 
	font-family: Arial, sans-serif; 
	}
a:hover, a:active {
	text-decoration: none; 
	font-family: Arial, sans-serif; 
	}
a.AnaheimFWD     {color:#010101;}
a.AnaheimDEF     {color:#FFFFFF;}
a.AnaheimGLT     {color:#B9975B;}
	
a.CalgaryFWD     {color:#010101;}
a.CalgaryDEF     {color:#FFFFFF;}
a.CalgaryGLT     {color:#F1BE48;}
	
a.ChicagoFWD     {color:#010101;}
a.ChicagoDEF     {color:#FFFFFF;}
a.ChicagoGLT     {color:#CC8A00;}
	
a.ColoradoFWD    {color:#236192;}
a.ColoradoDEF    {color:#FFFFFF;}
a.ColoradoGLT    {color:#A2AAAD;}
	
a.DallasFWD      {color:#010101;}
a.DallasDEF      {color:#FFFFFF;}
a.DallasGLT      {color:#A2AAAD;}
	
a.EdmontonFWD    {color:#CF4520;}
a.EdmontonDEF    {color:#FFFFFF;}
a.EdmontonGLT    {color:#97999B;}
	
a.LosAngelesFWD  {color:#A2AAAD;}
a.LosAngelesDEF  {color:#FFFFFF;}
a.LosAngelesGLT  {color:#868787;}
	
a.MinnesotaFWD  {color:#DDCBA4;}
a.MinnesotaDEF  {color:#FFFFFF;}
a.MinnesotaGLT  {color:#EAAA00;}
	
a.NashvilleFWD  {color:#FFFFFF;}
a.NashvilleDEF  {color:#041E42;}
a.NashvilleGLT  {color:#FFB81C;}
	
a.NashvilleFWD  {color:#FFB81C;}
a.NashvilleDEF  {color:#FFFFFF;}
a.NashvilleGLT  {color:#A2AAAD;}
	
a.StLouisFWD    {color:#FFB81C;}
a.StLouisDEF    {color:#FFFFFF;}
a.StLouisGLT    {color:#9A1B31;}
	
a.SanJoseFWD    {color:#010101;}  
a.SanJoseDEF    {color:#FFFFFF;}
a.SanJoseGLT    {color:#E57200;}
	
a.SeattleFWD    {color:#9CDBD9;}
a.SeattleDEF    {color:#FFFFFF;}
a.SeattleGLT    {color:#6BA4B8;}
	
a.UtahFWD       {color:#69B3E7;}
a.UtahDEF       {color:#FFFFFF;}
a.UtahGLT       {color:#8D9093;}
	
a.VancouverFWD  {color:#00843D;}
a.VancouverDEF  {color:#FFFFFF;}
a.VancouverGLT  {color:#97999B;}
	
a.VegasFWD      {color:#010101;}
a.VegasDEF      {color:#FFFFFF;}
a.VegasGLT      {color:#333F48;}
	
a.WinnipegFWD   {color:#004C97;}
a.WinnipegDEF   {color:#FFFFFF;}
a.WinnipegGLT   {color:#A2AAAD;}

a.Anaheim {color:#CF4520;text-decoration:none;}
a.Anaheim:hover {color:#CF4520;text-decoration:none;}
a.Calgary {color:#C8102E;text-decoration:none;}
a.Calgary:hover {color:#C8102E;text-decoration:none;}
a.Chicago {color:#C8102E;text-decoration:none;}
a.Chicago:hover {color:#C8102E;text-decoration:none;}
a.Colorado {color:#6F263D;text-decoration:none;}
a.Colorado:hover {color:#6F263D;text-decoration:none;}
a.Dallas {color:#00843D;text-decoration:none;}
a.Dallas:hover {color:#00843D;text-decoration:none;}
a.Edmonton {color:#00205B;text-decoration:none;}
a.Edmonton:hover {color:#00205B;text-decoration:none;}
a.LosAngeles {color:#010101;text-decoration:none;}
a.LosAngeles:hover {color:#010101;text-decoration:none;}
a.Minnesota {color:#154734;text-decoration:none;}
a.Minnesota:hover {color:#154734;text-decoration:none;}
a.Nashville {color:#041E42;text-decoration:none;}
a.Nashville:hover {color:#041E42;text-decoration:none;}
a.StLouis {color:#0072CE;text-decoration:none;}
a.StLouis:hover {color:#0072CE;text-decoration:none;}
a.SanJose {color:#006271;text-decoration:none;}
a.SanJose:hover {color:#006271;text-decoration:none;}
a.Seattle {color:#051C2C;text-decoration:none;}
a.Seattle:hover {color:#051C2C;text-decoration:none;}
a.Utah {color:#010101;text-decoration:none;}
a.Utah:hover {color:#010101;text-decoration:none;}
a.Vancouver {color:#00205B;text-decoration:none;}
a.Vancouver:hover {color:#00205B;text-decoration:none;}
a.Vegas {color:#B9975B;text-decoration:none;}
a.Vegas:hover {color:#B9975B;text-decoration:none;}
a.Winnipeg {color:#041E42;text-decoration:none;}
a.Winnipeg:hover {color:#041E42;text-decoration:none;}

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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
						      <xsl:when test="SLOT = '25'">
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
