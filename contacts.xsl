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
  <tr>
    <td class="no"><img height="75" width="113" src="Boston" border="0"/></td>
    <td class="no">
      <p class="contact">Boston Bruins - Wally - E-mail: <a href="mailto:walman197209@gmail.com">walman197209@gmail.com</a></p>
      <p class="season">Since Season 7</p>
      <p class="award">Kassandra Cup Finalist - Season 17</p>
      <p class="award">Kassandra Cup Champs - Season 17</p>
    </td>
  </tr>
  
  <tr>  
    <td class="no"><img height="75" width="113" src="Buffalo" border="0"/></td>
    <td class="no">
      <p class="contact">Buffalo Sabres - Jacob - E-mail: <a href="mailto:jacobmcgraw2005@gmail.com">jacobmcgraw2005@gmail.com</a></p>
      <p class="season">Since Season 24</p>
    </td>
  </tr>
  
  <tr>
    <td class="no"><img height="75" width="113" src="Carolina" border="0"/></td>
    <td class="no">
      <p class="contact">Carolina Hurricanes - Brent - E-mail: <a href="mailto:mcgrawbrent@gmail.com">mcgrawbrent@gmail.com</a></p>
      <p class="season">Since Season 22</p>
      <p class="award">Eastern Conference Champs - Season 22, 23, 24, 25</p>
      <p class="award">President`s Trophy - Season 23</p>
      <p class="award">Kassandra Cup Finalist - Season 23, 24</p>
  </td>
  </tr>
  
  <tr><td class="no"><img height="75" width="113" src="Columbus" border="0"/></td>
  <td class="no">
  <p class="contact">Columbus Blue Jackets - Jin - E-mail: <a href="mailto:jinpark78@yahoo.com">jinpark78@yahoo.com</a></p>
  <p class="season">Since Season 3</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Detroit" border="0"/></td>
  <td class="no">
  <p class="contact">Detriot Red Wings - Austin - E-mail: <a href="mailto:Amharlow31@gmail.com">Amharlow31@gmail.com</a></p>
  <p class="season">Since Season 26</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Florida" border="0"/></td>
  <td class="no">
  <p class="contact">Florida Panthers - John - E-mail: <a href="mailto:cupskeyj@yahoo.com">cupskeyj@yahoo.com</a></p>
  <p class="season">Since Season 19</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Montreal" border="0"/></td>
  <td class="no">
  <p class="contact">Montreal Canadiens - Dan - E-mail: <a href="mailto:cdndan@msn.com">cdndan@msn.com</a></p>
  <p class="season">Since Season 3</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="NewJersey" border="0"/></td>
  <td class="no">
  <p class="contact">New Jersey Devils - Ryan - E-mail: <a href="mailto:rsmcna89@gmail.com">rsmcna89@gmail.com</a></p>
  <p class="season">Since Season 21</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="NewYorkIslanders" border="0"/></td>
  <td class="no">
  <p class="contact">New York Islanders - Gregg - E-mail: <a href="mailto:ghuculak@hotmail.com">ghuculak@hotmail.com</a></p>
  <p class="season">Since Season 21</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="NewYorkRangers" border="0"/></td>
  <td class="no">
  <p class="contact">New York Rangers - Francois - E-mail: <a href="mailto:francoistalbot77@hotmail.com">francoistalbot77@hotmail.com</a></p>
  <p class="season">Since Season 11</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Ottawa" border="0"/></td>
  <td class="no">
  <p class="contact">Ottawa Senators - Dave - E-mail: <a href="mailto:davidw.wishart@gmail.com">davidw.wishart@gmail.com</a></p>
  <p class="season">Since Season 25</p>
  <p class="offense"></p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Philadelphia" border="0"/></td>
  <td class="no">
  <p class="contact">Philadelphia Flyers - Jeff - E-mail: <a href="mailto:jeffsbeck77@yahoo.com">jeffsbeck77@yahoo.com</a></p>
  <p class="season">Since Season 15</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Pittsburgh" border="0"/></td>
  <td class="no">
  <p class="contact">Pittsburgh Penguins - Blake - E-mail: <a href="mailto:mcgrawblake0@gmail.com">mcgrawblake0@gmail.com</a></p>
  <p class="season">Since Season 22</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="TampaBay" border="0"/></td>
  <td class="no">
  <p class="contact">Tampa Bay Lighting - Brent - E-mail: <a href="mailto:brent08@live.com">brent08@live.com</a></p>
  <p class="season">Since Season 24</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Toronto" border="0"/></td>
  <td class="no">
  <p class="contact">Toronto Maple Leafs - Kevin - E-mail: <a href="mailto:onyx_bluedevil@yahoo.com">onyx_bluedevil@yahoo.com</a></p>
  <p class="season">Since Season 1</p>
  <p class="award">Eastern Conference Champs - Season 3, 10, 13, 15, 21</p>
  <p class="award">President`s Trophy - Season 10, 13, 14, 15, 21</p>
  <p class="award">Kassandra Cup Finalist - Season 1, 2, 6, 8, 13, 14, 15, 21, 25</p>
  <p class="award">Kassandra Cup Champs - Season 8, 25</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Washington" border="0"/></td>
  <td class="no">
  <p class="contact">Washington Capitals - Ed - E-mail: <a href="mailto:gfhlwashingtoned@gmail.com">gfhlwashingtoned@gmail.com</a></p>
  <p class="season">Since Season 5</p>
  <p class="award">Kassandra Cup Finalist - Season 22</p>
  </td></tr>
  
  </table>
  </div>
  <br />
  <div class="text">
  <b><h2>Western Conference</h2></b>
  <table class="contactnoborder">
  
  <tr><td class="no"><img height="75" width="113" src="Anaheim" border="0"/></td>
  <td class="no">
  <p class="contact">Anaheim Ducks - Tim - E-mail: <a href="mailto:timjhamilton@hotmail.com">timjhamilton@hotmail.com</a></p>
  <p class="season">Since Season 25</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Calgary" border="0"/></td>
  <td class="no">
  <p class="contact">Calgary Flames - Jason - E-mail: <a href="mailto:jachan87@gmail.com">jachan87@gmail.com</a></p>
  <p class="season">Since Season 3</p>
  <p class="award">Western Conference Champs - Season 8, 16, 17, 25</p>
  <p class="award">President`s Trophy - Season 16, 17, 25</p>
  <p class="award">Kassandra Cup Finalist - Season 16</p>
  <p class="award">Kassandra Cup Champs - Season 16</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Chicago" border="0"/></td>
  <td class="no">
  <p class="contact">Chicago Blackhawks - John - E-mail: <a href="mailto:jdfitz12@yahoo.com">jdfitz12@yahoo.com</a></p>
  <p class="season">Since Season 1</p>
  <p class="award">Western Conference Champs - Season 3, 4</p>
  <p class="award">President`s Trophy - Season 3, 4</p>
  <p class="award">Kassandra Cup Finalist - Season 2, 6</p>
  <p class="award">Kassandra Cup Champs - Season 6</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Colorado" border="0"/></td>
  <td class="no">
  <p class="contact">Colorado Avalanche - Shannon - E-mail: <a href="mailto:hektormcdonnell@gmail.com">hektormcdonnell@gmail.com</a></p>
  <p class="season">Since Season 10</p>
  <p class="award">Western Conference Champs - Season 13</p>
  <p class="award">Kassandra Cup Finalist - Season 14</p>
  <p class="award">Kassandra Cup Champs - Season 14</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Dallas" border="0"/></td>
  <td class="no">
  <p class="contact">Dallas Stars - Simon - E-mail: <a href="mailto:simonyu84@gmail.com"> simonyu84@gmail.com </a></p>
  <p class="season">Since Season 3</p>
  <p class="award">Western Conference Champs - Season 5, 6, 7, 20</p>
  <p class="award">President`s Trophy - Season 5, 7</p>
  <p class="award">Kassandra Cup Finalist - Season 7</p>
  <p class="award">Kassandra Cup Champs - Season 7</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Edmonton" border="0"/></td>
  <td class="no">
  <p class="contact">Edmonton Oilers - Mikey - E-mail: <a href="mailto:mjohns05@outlook.com">mjohns05@outlook.com</a></p>
  <p class="season">Since Season 2</p>
  <p class="award">Western Conference Champs - Season 18, 19, 23</p>
  <p class="award">President`s Trophy - Season 18</p>
  <p class="award">Kassandra Cup Finalist - Season 5, 13, 18, 19</p>
  <p class="award">Kassandra Cup Champs - Season 13, 18</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="LosAngeles" border="0"/></td>
  <td class="no">
  <p class="contact">Los Angeles Kings - Tom - E-mail: <a href="mailto:tblain1@gmail.com">tblain1@gmail.com</a></p>
  <p class="season">Since Season 20</p>
  <p class="award">Kassandra Cup Finalist - Season 15, 22, 24</p>
  <p class="award">Kassandra Cup Champs - Season 15, 22, 24</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Minnesota" border="0"/></td>
  <td class="no">
  <p class="contact">Minnesota Wild - Paul - E-mail: <a href="mailto:leduc_paul@hotmail.com">leduc_paul@hotmail.com</a></p>
  <p class="season">Since Season 2</p>
  <p class="award">Western Conference Champs - Season 21, 22</p>
  <p class="award">President`s Trophy - Season 22</p>
  <p class="award">Kassandra Cup Finalist - Season 8, 21, 25</p>
  <p class="award">Kassandra Cup Champs - Season 21</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Nashville" border="0"/></td>
  <td class="no">
  <p class="contact">Nashville Predators - Brett - E-mail: <a href="mailto:bharwood84@hotmail.com">bharwood84@hotmail.com</a></p>
  <p class="season">Since Season 6</p>
  <p class="award">Western Conference Champs - Season 24</p>
  <p class="award">President`s Trophy - Season 24</p>
  <p class="award">Kassandra Cup Finalist - Season 23</p>
  <p class="award">Kassandra Cup Champs - Season 23</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="SanJose" border="0"/></td>
  <td class="no">
  <p class="contact">San Jose Sharks - Phil - E-mail: <a href="mailto:bealls77corvette@gmail.com">bealls77corvette@gmail.com</a></p>
  <p class="season">Since Season 17</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Seattle" border="0"/></td>
  <td class="no">
  <p class="contact">Seattle Kraken - Neil - E-mail: <a href="mailto:nspaeth@hotmail.com">nspaeth@hotmail.com</a></p>
  <p class="season">Since Season 5</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="StLouis" border="0"/></td>
  <td class="no">
  <p class="contact">St. Louis Blues - Mike - E-mail: <a href="mailto:cultsuperhero@gmail.com">cultsuperhero@gmail.com</a></p>
  <p class="season">Since Season 20</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Utah" border="0"/></td>
  <td class="no">
  <p class="contact">Utah Hockey Club - Gary - E-mail: <a href="mailto:gbunn19@gmail.com">gbunn19@gmail.com</a></p>
  <p class="season">Since Season 9</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Vancouver" border="0"/></td>
  <td class="no">
  <p class="contact">Vancouver Canucks - Talen - E-mail: <a href="mailto:mcgrawtalen@gmail.com">mcgrawtalen@gmail.com</a></p>
  <p class="season">Since Season 22</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Vegas" border="0"/></td>
  <td class="no">
  <p class="contact">Vegas Golden Knight - Marty - E-mail: <a href="mailto:martybaroni@gmail.com">martybaroni@gmail.com</a></p>
  <p class="season">Since Season 17</p>
  </td></tr>
  
  <tr><td class="no"><img height="75" width="113" src="Winnipeg" border="0"/></td>
  <td class="no">
  <p class="contact">Winnipeg Jets - Kyle - E-mail: <a href="mailto:kyle.gartner@gmail.com">kyle.gartner@gmail.com</a></p>
  <p class="season">Since Season 15</p>
  </td></tr>
  
  </table>
  </div>
  
  </div>
  
  
</body>

</html>
</xsl:template>
</xsl:stylesheet>
