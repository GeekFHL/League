<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html lang="en">
<head>
<title>GFHL - Eastern Roster</title>

<style>
body
{
	background-color:#000000; 
        color:#FFFFFF; 	
        font-family: Arial, sans-serif;
        font-size:14px;
}
table 
{	border-width:2px;	
        font-size:14px; 	
        border-color:#FFFFFF; 	
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
    table.noborder {font-family: Arial, sans-serif;
	            font-size: 14px;
	            font-weight:bold; 
                    border-width: 0px; 
                    border-style: ridge; 
                    border-collapse: collapse;
	            } 

    td.no  {border-width: 0px; 
            border-style: ridge; 
            padding: 3px;
	    }

    td.image  {background-color:#FFFFFF;
	       border-width: 0px; 
               border-style: ridge; 
               padding: 3px; 
	    }

    td.TeamName  {background-color:#FFFFFF; 
	          border-width: 0px; 
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
    td.TeamInfo {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center;}
    td.TeamInfoBOS {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoBUF {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#003087;}
    td.TeamInfoCAR {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoCLB {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#041E42;}
    td.TeamInfoDET {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}
    td.TeamInfoFLA {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}
    td.TeamInfoMTL {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#A6192E;}
    td.TeamInfoNJ  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}
    td.TeamInfoNYI {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#003087;}
    td.TeamInfoNYR {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:##1D309E;}
    td.TeamInfoOTT {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoPHI {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#CF4520;}
    td.TeamInfoPIT {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#010101;}
    td.TeamInfoTB  {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00205B;}
    td.TeamInfoTOR {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#00205B;}
    td.TeamInfoWSH {border-width: 0px; border-style: ridge; padding: 3px; font-weight: bold; text-align: center; color:#C8102E;}

    tr.BostonFWD           {color:#FFB81C;background-color:#010101;}
    tr.BostonDEF           {color:#FFFFFF;background-color:#010101;}
    tr.BostonGLT           {color:#744F28;background-color:#010101;}
    tr.BostonFWD           td {color:#FFB81C;background-color:#010101;}
    tr.BostonDEF           td {color:#FFFFFF;background-color:#010101;}
    tr.BostonGLT           td {color:#744F28;background-color:#010101;}
	
    tr.BuffaloFWD          {color:#FFB81C;background-color:#003087;}  
    tr.BuffaloDEF          {color:#FFFFFF;background-color:#003087;}
    tr.BuffaloGLT          {color:#010101;background-color:#003087;}
    tr.BuffaloFWD          td {color:#FFB81C;background-color:#003087;}  
    tr.BuffaloDEF          td {color:#FFFFFF;background-color:#003087;}
    tr.BuffaloGLT          td {color:#010101;background-color:#003087;}
	
    tr.CarolinaFWD         {color:#C8102E;background-color:#010101;}
    tr.CarolinaDEF         {color:#FFFFFF;background-color:#010101;}
    tr.CarolinaGLT         {color:#333F48;background-color:#010101;}
    tr.CarolinaFWD         td {color:#C8102E;background-color:#010101;}
    tr.CarolinaDEF         td {color:#FFFFFF;background-color:#010101;}
    tr.CarolinaGLT         td {color:#333F48;background-color:#010101;}
	
    tr.ColumbusFWD         {color:#C8102E;background-color:#041E42;}
    tr.ColumbusDEF         {color:#FFFFFF;background-color:#041E42;}
    tr.ColumbusGLT         {tcolor:#A2AAAD;background-color:#041E42;}
    tr.ColumbusFWD         td {color:#C8102E;background-color:#041E42;}
    tr.ColumbusDEF         td {color:#FFFFFF;background-color:#041E42;}
    tr.ColumbusGLT         td {color:#A2AAAD;background-color:#041E42;}
	
    tr.DetroitFWD          {color:#010101;background-color:#C8102E;}
    tr.DetroitDEF          {color:#FFFFFF;background-color:#C8102E;}
    tr.DetroitGLT          {color:#8D9093;background-color:#C8102E;}
    tr.DetroitFWD          td {color:#010101;background-color:#C8102E;}
    tr.DetroitDEF          td {color:#FFFFFF;background-color:#C8102E;}
    tr.DetroitGLT          td {color:#8D9093;background-color:#C8102E;}
	
    tr.FloridaFWD          {color:#041E42;background-color:#C8102E;}
    tr.FloridaDEF          {color:#FFFFFF;background-color:#C8102E;}
    tr.FloridaGLT          {color:#B9975B;background-color:#C8102E;}
    tr.FloridaFWD          td {color:#041E42;background-color:#C8102E;}
    tr.FloridaDEF          td {color:#FFFFFF;background-color:#C8102E;}
    tr.FloridaGLT          td {color:#B9975B;background-color:#C8102E;}
	
    tr.MontrealFWD         {color:#001E62;background-color:#A6192E;}
    tr.MontrealDEF         {color:#FFFFFF;background-color:#A6192E;}
    tr.MontrealGLT         {color:#010101;background-color:#A6192E;}
    tr.MontrealFWD         td {color:#001E62;background-color:#A6192E;}
    tr.MontrealDEF         td {color:#FFFFFF;background-color:#A6192E;}
    tr.MontrealGLT         td {color:#010101;background-color:#A6192E;}
	
    tr.NewJerseyFWD        {color:#010101;background-color:#C8102E;}
    tr.NewJerseyDEF        {color:#FFFFFF;background-color:#C8102E;}
    tr.NewJerseyGLT        {color:#B1B3B3;background-color:#C8102E;}
    tr.NewJerseyFWD        td {color:#010101;background-color:#C8102E;}
    tr.NewJerseyDEF        td {color:#FFFFFF;background-color:#C8102E;}
    tr.NewJerseyGLT        td {color:#B1B3B3;background-color:#C8102E;}
	
    tr.NewYorkIslandersFWD {color:#FC4C02;background-color:#003087;}
    tr.NewYorkIslandersDEF {color:#FFFFFF;background-color:#003087;}
    tr.NewYorkIslandersGLT {color:#009CA6;background-color:#003087;}
    tr.NewYorkIslandersFWD td {color:#FC4C02;background-color:#003087;}
    tr.NewYorkIslandersDEF td {color:#FFFFFF;background-color:#003087;}
    tr.NewYorkIslandersGLT td {color:#009CA6;background-color:#003087;}
	
    tr.NewYorkRangersFWD   {color:#C02333;background-color:#1D309E;}
    tr.NewYorkRangersDEF   {color:#FFFFFF;background-color:#1D309E;}
    tr.NewYorkRangersGLT   {color:#010101;background-color:#1D309E;}
    tr.NewYorkRangersFWD   td {color:#C02333;background-color:#1D309E;}
    tr.NewYorkRangersDEF   td {color:#FFFFFF;background-color:#1D309E;}
    tr.NewYorkRangersGLT   td {color:#010101;background-color:#1D309E;}
	
    tr.OttawaFWD           {color:#C8102E;background-color:#010101;}  
    tr.OttawaDEF           {color:#FFFFFF;background-color:#010101;}
    tr.OttawaGLT           {color:#B9975B;background-color:#010101;}
    tr.OttawaFWD           td {color:#C8102E;background-color:#010101;}  
    tr.OttawaDEF           td {color:#FFFFFF;background-color:#010101;}
    tr.OttawaGLT           td {color:#B9975B;background-color:#010101;}
	
    tr.PhiladelphiaFWD     {color:#010101;background-color:#FA4616;}
    tr.PhiladelphiaDEF     {color:#FFFFFF;background-color:#FA4616;}
    tr.PhiladelphiaGLT     {color:#DDCBA4;background-color:#FA4616;}
    tr.PhiladelphiaFWD     td {color:#010101;background-color:#FA4616;}
    tr.PhiladelphiaDEF     td {color:#FFFFFF;background-color:#FA4616;}
    tr.PhiladelphiaGLT     td {color:#DDCBA4;background-color:#FA4616;}
	
    tr.PitsburghFWD        {color:#FFB81C;background-color:#010101;}
    tr.PitsburghDEF        {color:#FFFFFF;background-color:#010101;}
    tr.PitsburghGLT        {color:#41B6E6;background-color:#010101;}
    tr.PitsburghFWD        td {color:#FFB81C;background-color:#010101;}
    tr.PitsburghDEF        td {color:#FFFFFF;background-color:#010101;}
    tr.PitsburghGLT        td {color:#41B6E6;background-color:#010101;}
	
    tr.TampaBayFWD         {color:#010101;background-color:#00205B;}
    tr.TampaBayDEF         {color:#FFFFFF;background-color:#00205B;}
    tr.TampaBayGLT         {color:#A2AAAD;background-color:#00205B;}
    tr.TampaBayFWD         td {color:#010101;background-color:#00205B;}
    tr.TampaBayDEF         td {color:#FFFFFF;background-color:#00205B;}
    tr.TampaBayGLT         td {color:#A2AAAD;background-color:#00205B;}
	
    tr.TorontoFWD          {color:#010101;background-color:#00205B;}
    tr.TorontoDEF          {color:#FFFFFF;background-color:#00205B;}
    tr.TorontoGLT          {color:#A2AAAD;background-color:#00205B;}
    tr.TorontoFWD          td {color:#010101;background-color:#00205B;}
    tr.TorontoDEF          td {color:#FFFFFF;background-color:#00205B;}
    tr.TorontoGLT          td {color:#A2AAAD;background-color:#00205B;}
	
    tr.WashingtonFWD       {color:#041E42;background-color:#C8102E;}
    tr.WashingtonDEF       {color:#FFFFFF;background-color:#C8102E;}
    tr.WashingtonGLT       {color:#AD7C59;background-color:#C8102E;}
    tr.WashingtonFWD       td {color:#041E42;background-color:#C8102E;}
    tr.WashingtonDEF       td {color:#FFFFFF;background-color:#C8102E;}
    tr.WashingtonGLT       td {color:#AD7C59;background-color:#C8102E;}
	
a, a:link, a:visited {
	text-decoration: none; 
	font-family: Arial, sans-serif;
	color: inherit;
	}
a: hover, a: active {
	}

a.Boston {color:#010101;text-decoration:none;}
a.Boston:hover {color:#010101;text-decoration:none;}
a.Buffalo {color:#003087;text-decoration:none;}
a.Buffalo:hover {color:#003087;text-decoration:none;}
a.Carolina {color:#010101;text-decoration:none;}
a.Carolina:hover {color:#010101;text-decoration:none;}
a.Columbus {color:#041E42;text-decoration:none;}
a.Columbus:hover {color:#041E42;text-decoration:none;}
a.Detroit {color:#C8102E;text-decoration:none;}
a.Detroit:hover {color:#C8102E;text-decoration:none;}
a.Florida {color:#C8102E;text-decoration:none;}
a.Florida:hover {color:#C8102E;text-decoration:none;}
a.Montreal {color:#A6192E;text-decoration:none;}
a.Montreal:hover {color:#A6192E;text-decoration:none;}
a.NewJersey {color:#C8102E;text-decoration:none;}
a.NewJersey:hover {color:#C8102E;text-decoration:none;}
a.NewYorkIslanders {color:#003087;text-decoration:none;}
a.NewYorkIslanders:hover {color:#003087;text-decoration:none;}
a.NewYorkRangers {color:#2860A9;text-decoration:none;}
a.NewYorkRanegrs:hover {color:#2860A9;text-decoration:none;}
a.Ottawa {color:#010101;text-decoration:none;}
a.Ottawa:hover {color:#010101;text-decoration:none;}
a.Philadelphia {color:#CF4520;text-decoration:none;}
a.Philadelphia:hover {color:#CF4520;text-decoration:none;}
a.Pittsburgh {color:#010101;text-decoration:none;}
a.Pittsburgh:hover {color:#010101;text-decoration:none;}
a.TampaBay {color:#00205B;text-decoration:none;}
a.TampaBay:hover {color:#00205B;text-decoration:none;}
a.Toronto {color:#00205B;text-decoration:none;}
a.Toronto:hover {color:#00205B;text-decoration:none;}
a.Washington {color:#C8102E;text-decoration:none;}
a.Washington:hover {color:#C8102E;text-decoration:none;}

</style>
</head>

<body>

<center>
<span style="font-size:24pt;"><b>EASTERN ROSTER</b></span>
</center>
<p />
<table class="noborder">
<tr>
	<td class="no">
		<table class="noborder">
			<tr>
				<td class="image"><img src="Boston" height="100" width="150" /></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoBOS">
							BOSTON BRUINS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='BOS']">
							<tr><td class="TeamInfoBOS">
								GM - <a class='Boston' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoBOS">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='BOS']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">BostonGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">BostonDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">BostonFWD
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
									<xsl:attribute name="class">BostonGLT
									</xsl:attribute> 
				          			</xsl:when>
				          			<xsl:when test="POS='DEF'">
									<xsl:attribute name="class">BostonDEF
									</xsl:attribute> 
				          			</xsl:when>
				          			<xsl:when test="POS='FWD'">
									<xsl:attribute name="class">BostonFWD
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
				<td class="image"><img src="Buffalo" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoBUF">
							BUFFALO SABRES
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='BUF']">
							<tr><td class="TeamInfoBUF">
								GM - <a class='Buffalo' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoBUF">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='BUF']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">BuffaloGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">BuffaloDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">BuffaloFWD
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
								<xsl:attribute name="class">BuffaloGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">BuffaloDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">BuffaloFWD
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
				<td class="image"><img src="Carolina" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoCAR">
							CAROLINA HURRICANES
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='CAR']">
							<tr><td class="TeamInfoCAR">
								
								GM - <a class='Carolina' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
								
							</td></tr>
							<tr><td class="TeamInfoCAR">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='CAR']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">CarolinaGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">CarolinaDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">CarolinaFWD
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
								<xsl:attribute name="class">CarolinaGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">CarolinaDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">CarolinaFWD
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
				<td class="image"><img src="Columbus" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoCLB">
							COLUMBUS BLUEJACKETS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='CLB']">
							<tr><td class="TeamInfoCLB">
							GM - <a class='Columbus' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoCLB">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='CLB']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">ColumbusGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">ColumbusDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">ColumbusFWD
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
								<xsl:attribute name="class">ColumbusGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">ColumbusDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">ColumbusFWD
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
				<td class="image"><img src="Detroit" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoDET">
							DETROIT RED WINGS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='DET']">
							<tr><td class="TeamInfoDET">
								GM - <a class='Detroit' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoDET">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='DET']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">DetroitGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">DetroitDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">DetroitFWD
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
								<xsl:attribute name="class">DetroitGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">DetroitDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">DetroitFWD
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
				<td class="image"><img src="Florida" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoFLA">
							FLORIDA PANTHERS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='FLA']">
							<tr><td class="TeamInfoFLA">
								GM - <a class='Florida' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoFLA">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='FLA']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">FloridaGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">FloridaDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">FloridaFWD
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
								<xsl:attribute name="class">FloridaGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">FloridaDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">FloridaFWD
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
				<td class="image"><img src="Montreal" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoMTL">
							MONTREAL CANADIENS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='MTL']">
							<tr><td class="TeamInfoMTL">
								GM - <a class='Montreal' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoMTL">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='MTL']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">MontrealGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">MontrealDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">MontrealFWD
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
								<xsl:attribute name="class">MontrealGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">MontrealDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">MontrealFWD
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
				<td class="image"><img src="NewJersey" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoNJ">
							NEW JERSEY DEVILS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='NJ']">
							<tr><td class="TeamInfoNJ">
								GM - <a class='NewJersey' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoNJ">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='NJ']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">NewJerseyGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">NewJerseyDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">NewJerseyFWD
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
								<xsl:attribute name="class">NewJerseyGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">NewJerseyDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">NewJerseyFWD
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
				<td class="image"><img src="NewYorkIslanders" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoNYI">
							NEW YORK ISLANDERS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='NYI']">
							<tr><td class="TeamInfoNYI">
								GM - <a class='NewYorkIslanders' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoNYI">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='NYI']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">NewYorkIslandersGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">NewYorkIslandersDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">NewYorkIslandersFWD
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
								<xsl:attribute name="class">NewYorkIslandersGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">NewYorkIslandersDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">NewYorkIslandersFWD
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
				<td class="image"><img src="NewYorkRangers" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoNYR">
							NEW YORK RANGERS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='NYR']">
							<tr><td class="TeamInfoNYR">
								GM - <a class='NewYorkRangers' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoNYR">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='NYR']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">NewYorkRangersGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">NewYorkRangersDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">NewYorkRangersFWD
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
								<xsl:attribute name="class">NewYorkRangersGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">NewYorkRangersDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">NewYorkRangersFWD
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
				<td class="image"><img src="Ottawa" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoOTT">
							OTTAWA SENATORS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='OTT']">
							<tr><td class="TeamInfoOTT">
								GM - <a class='Ottawa' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoOTT">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='OTT']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">OttawaGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">OttawaDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">OttawaFWD
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
								<xsl:attribute name="class">OttawaGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">OttawaDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">OttawaFWD
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
				<td class="image"><img src="Philadelphia" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoPHI">
							PHILADELPHIA FLYERS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='PHI']">
							<tr><td class="TeamInfoPHI">
								GM - <a class='Philadelphia' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoPHI">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='PHI']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">PhiladelphiaGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">PhiladelphiaDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">PhiladelphiaFWD
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
								<xsl:attribute name="class">PhiladelphiaGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">PhiladelphiaDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">PhiladelphiaFWD
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
				<td class="image"><img src="Pittsburgh" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoPIT">
							PITTSBURGH PENGUINS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='PIT']">
							<tr><td class="TeamInfoPIT">
								GM - <a class='Pittsburgh' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoPIT">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='PIT']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">PitsburghGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">PitsburghDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">PitsburghFWD
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
								<xsl:attribute name="class">PittsburghGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">PittsburghDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">PittsburghFWD
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
				<td class="image"><img src="TampaBay" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoTB">
							TAMPA BAY LIGHTING
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='TB']">
							<tr><td class="TeamInfoTB">
								GM - <a class='TampaBay' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoTB">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='TB']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">TampaBayGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">TampaBayDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">TampaBayFWD
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
								<xsl:attribute name="class">TampaBayGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">TampaBayDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">TampaBayFWD
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
				<td class="image"><img src="Toronto" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoTOR">
							TORONTO MAPLES LEAFS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='TOR']">
							<tr><td class="TeamInfoTOR">
								GM - <a class='Toronto' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoTOR">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='TOR']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">TorontoGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">TorontoDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">TorontoFWD
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
								<xsl:attribute name="class">TorontoGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">TorontoDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">TorontoFWD
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
				<td class="image"><img src="Washington" height="100" width="150"/></td>
				<td class="TeamName"><center>
					<table class="noborder">
						<tr><td class="TeamInfoWSH">
							WASHINGTON CAPITALS
						</td></tr>
						<xsl:for-each select="GFHL/DB/GM[Team='WSH']">
							<tr><td class="TeamInfoWSH">
								GM - <a class='Washington' href="mailto:{Email}"><xsl:value-of select="Name"/></a>
							</td></tr>
							<tr><td class="TeamInfoWSH">
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
			<xsl:for-each select="GFHL/DB/Player[TEAM='WSH']">
				<xsl:sort select="SLOT" data-type="number" order="ascending"/>
			      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
				<tr >
					<xsl:choose>
			          	<xsl:when test="POS='GLT'">
						<xsl:attribute name="class">WashingtonGLT
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='DEF'">
						<xsl:attribute name="class">WashingtonDEF
						</xsl:attribute> 
			          	</xsl:when>
			          	<xsl:when test="POS='FWD'">
						<xsl:attribute name="class">WashingtonFWD
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
								<xsl:attribute name="class">WashingtonGLT
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='DEF'">
								<xsl:attribute name="class">WashingtonDEF
								</xsl:attribute> 
			          			</xsl:when>
			          			<xsl:when test="POS='FWD'">
								<xsl:attribute name="class">WashingtonFWD
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
