<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.0"/>
<xsl:template match="/">
<html lang="en">
  <head>
  <title>GeekstarFHL Contact List</title>
  <link rel="stylesheet" type="text/css" href="gfhlmain.css" />
  </head>
  <body>
  
  
  <div id="wrapper">
  <h1><center>GM Contact List</center></h1>
  <br />
  
  
  <div class="text">
  <b><h2>Commissioners</h2></b>
  <table class="contactnoborder">
  <xsl:for-each select="GFHL/DB/GM[Commissioner='Y']">
    <tr>
      <td class="no">Co-Commissioner</td>
      <td class="no"> - <xsl:value-of select="Name"/></td>
      <td class="no">e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></td>
    </tr>    
  </xsl:for-each>
  
  </table>
  </div>
  <br />
  
  <div class="text">
  <b><h2>Rules Committee</h2></b>
  <table class="contactnoborder">
  <xsl:for-each select="GFHL/DB/GM[Committee='Y']">
    <tr>
      <td class="no">Committee Member</td>
      <td class="no"> - <xsl:value-of select="Name"/></td>
      <td class="no">e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></td>
    </tr>    
  </xsl:for-each>
  </table>
  </div>
  <br />
  
  <div class="text">
  <b><h2>Eastern Conference</h2></b>
    
  <table class="contactnoborder">
  <xsl:for-each select="GFHL/DB/GM[Team='BOS']">
    <tr>
      <td class="no"><img height="75" width="113" src="Boston" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>

          <xsl:if test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:if>
          <xsl:if test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:if>
          <xsl:if test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:if>
          <xsl:if test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:if>
          <xsl:if test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:if>

      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='BUF']">
    <tr>
      <td class="no"><img height="75" width="113" src="Buffalo" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='CAR']">
    <tr>
      <td class="no"><img height="75" width="113" src="Carolina" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='CLB']">
    <tr>
      <td class="no"><img height="75" width="113" src="Columbus" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='DET']">
    <tr>
      <td class="no"><img height="75" width="113" src="Detroit" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
    
  <xsl:for-each select="GFHL/DB/GM[Team='FLA']">
    <tr>
      <td class="no"><img height="75" width="113" src="Florida" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='MTL']">
    <tr>
      <td class="no"><img height="75" width="113" src="Montreal" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='NJ']">
    <tr>
      <td class="no"><img height="75" width="113" src="NewJersey" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='NYI']">
    <tr>
      <td class="no"><img height="75" width="113" src="NewYorkIslanders" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='NYR']">
    <tr>
      <td class="no"><img height="75" width="113" src="NewYorkRangers" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  <xsl:for-each select="GFHL/DB/GM[Team='OTT']">
    <tr>
      <td class="no"><img height="75" width="113" src="Ottawa" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
    
  <xsl:for-each select="GFHL/DB/GM[Team='PHI']">
    <tr>
      <td class="no"><img height="75" width="113" src="Philadelphia" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='PIT']">
    <tr>
      <td class="no"><img height="75" width="113" src="Pittsburgh" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='TB']">
    <tr>
      <td class="no"><img height="75" width="113" src="TampaBay" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='TOR']">
    <tr>
      <td class="no"><img height="75" width="113" src="Toronto" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='WSH']">
    <tr>
      <td class="no"><img height="75" width="113" src="Washington" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
    
  </table>
  </div>
  <br />
  <div class="text">
  <b><h2>Western Conference</h2></b>
  <table class="contactnoborder">
    <xsl:for-each select="GFHL/DB/GM[Team='ANA']">
    <tr>
      <td class="no"><img height="75" width="113" src="Anaheim" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='CGY']">
    <tr>
      <td class="no"><img height="75" width="113" src="Calgary" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='CHI']">
    <tr>
      <td class="no"><img height="75" width="113" src="Chicago" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='COL']">
    <tr>
      <td class="no"><img height="75" width="113" src="Colorado" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='DAL']">
    <tr>
      <td class="no"><img height="75" width="113" src="Dallas" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
    
  <xsl:for-each select="GFHL/DB/GM[Team='EDM']">
    <tr>
      <td class="no"><img height="75" width="113" src="Edmonton" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='LA']">
    <tr>
      <td class="no"><img height="75" width="113" src="LosAngeles" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='MIN']">
    <tr>
      <td class="no"><img height="75" width="113" src="Minnesota" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='NSH']">
    <tr>
      <td class="no"><img height="75" width="113" src="Nashville" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='SJ']">
    <tr>
      <td class="no"><img height="75" width="113" src="SanJose" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  <xsl:for-each select="GFHL/DB/GM[Team='SEA']">
    <tr>
      <td class="no"><img height="75" width="113" src="Seattle" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
    
  <xsl:for-each select="GFHL/DB/GM[Team='STL']">
    <tr>
      <td class="no"><img height="75" width="113" src="StLouis" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='UTA']">
    <tr>
      <td class="no"><img height="75" width="113" src="Utah" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='VAN']">
    <tr>
      <td class="no"><img height="75" width="113" src="Vancouver" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>
  
  <xsl:for-each select="GFHL/DB/GM[Team='VGK']">
    <tr>
      <td class="no"><img height="75" width="113" src="Vegas" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>

  <xsl:for-each select="GFHL/DB/GM[Team='WPG']">
    <tr>
      <td class="no"><img height="75" width="113" src="Winnipeg" border="0"/></td>
      <td class="no">
        <p class="contact">Boston Bruins - <xsl:value-of select="Name"/> - e-mail: <a href="mailto:{Email}"><xsl:value-of select="Email"/></a></p>
        <p class="season">Since Season <xsl:value-of select="Since"/></p>
        <xsl:choose>
          <xsl:when test="PresidentTrophy!=''">
            <p class="award">President Trophy Winner - <xsl:value-of select="PresidentTrophy"/></p>
          </xsl:when>
          <xsl:when test="EastConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="EastConfChamp"/></p>
          </xsl:when>
          <xsl:when test="WestConfChamp!=''">
            <p class="award">Western Conference Champs - <xsl:value-of select="WestConfChamp"/></p>
          </xsl:when>
          <xsl:when test="Finalist!=''">
              <p class="award">Kassandra Cup Finalist - <xsl:value-of select="Finalist"/></p>
          </xsl:when>
          <xsl:when test="Champ!=''">
            <p class="award">Kassandra Cup Champs - <xsl:value-of select="Champ"/></p>
          </xsl:when>
        </xsl:choose>
      </td>
    </tr>    
  </xsl:for-each>  </table>
  </div>
  
  </div>
  
  
</body>

</html>
</xsl:template>
</xsl:stylesheet>
