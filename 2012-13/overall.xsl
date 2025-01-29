<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html>    

<head>      
<title>2013-14 GFHL Standings</title>      
<link rel="stylesheet" type="text/css" href="../gfhlmain.css" />
</head>    

<body>   
<center>
<h1><b>2013-14 Standings</b></h1>

<table class="noborder">
<tr>

<td valign="top" class="no">
	<div class="text"><h2><center><b>Eastern Conference</b></center></h2></div>
<br></br>
	<div class="text"><h2><center><b>Atlantic Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Atlantic']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    
<br></br>
	<div class="text"><h2><center><b>North East Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Northeast']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    
<br></br>
	<div class="text"><h2><center><b>South East Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Southeast']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>

</td>

<td valign="top" class="no">    
	<div class="text"><h2><center><b>Western Conference</b></center></h2></div>
<br></br>
	<div class="text"><h2><center><b>Central Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Central']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    
<br></br>
	<div class="text"><h2><center><b>North West Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Northwest']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    
<br></br>
	<div class="text"><h2><center><b>Pacific Division</b></center></h2></div>
<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
<!--		<td class="yes">Rank</td>	-->
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Div='Pacific']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
<!--
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
-->
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    

</td>

<td valign="top" class="no">
<div class="text"><h2><center><b>Eastern Conference</b></center></h2></div>

<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
		<td class="yes">Rank</td>	
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Conf='East']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() =1 or position() =8 or position() =9">        
			<xsl:attribute name="class">colourone</xsl:attribute>      
		</xsl:if>
		<xsl:if test="position() =2 or position() =6 or position() =7">        
			<xsl:attribute name="class">colourtwo</xsl:attribute>      
		</xsl:if>      
		<xsl:if test="position() =3 or position() =4 or position() =5">        
			<xsl:attribute name="class">colourthree</xsl:attribute>      
		</xsl:if>      
		<xsl:if test="position() &gt; 9">        
			<xsl:attribute name="class">colourother</xsl:attribute>      
		</xsl:if>   
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>

<br></br>
<div class="text"><h2><center><b>Western Conference</b></center></h2></div>

<table class="yesborder"> 	
<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
		<td class="yes">Rank</td>	
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team[Conf='West']">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() =1 or position() =8 or position() =9">        
			<xsl:attribute name="class">colourone</xsl:attribute>      
		</xsl:if>
		<xsl:if test="position() =2 or position() =6 or position() =7">        
			<xsl:attribute name="class">colourtwo</xsl:attribute>      
		</xsl:if>      
		<xsl:if test="position() =3 or position() =4 or position() =5">        
			<xsl:attribute name="class">colourthree</xsl:attribute>      
		</xsl:if>      
		<xsl:if test="position() &gt; 9">        
			<xsl:attribute name="class">colourother</xsl:attribute>      
		</xsl:if>   
                <td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">       
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>

</td>
<td valign="top" class="no">
<div class="text"><h2><center><b>League Standings</b></center></h2></div>

<table class="yesborder">    
	<tr>
	<xsl:attribute name="class">colourhead</xsl:attribute>
		<td class="yes">Rank</td>	
		<td class="yes">Team Name</td>	
		<td class="yes">Wins</td> 			
        <td class="yes">Loses</td> 	
		<td class="yes">Ties</td> 	
		<td class="yes">Points</td> 	
	</tr>     
	<xsl:for-each select="standing/Team">
      	<xsl:sort select="W*2+T" data-type="number" order="descending"/>
      	<xsl:sort select="G" data-type="number" order="descending"/>
      	<xsl:sort select="Name" data-type="text" order="ascending"/>
	<tr>      
		<xsl:if test="position() &gt; 0">        
			<xsl:attribute name="class">coloruother</xsl:attribute>      
		</xsl:if>   
		<td class="yes">        
			<xsl:value-of select="position()" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="Name" />   
		</td>      
		<td class="yes">        
			<xsl:value-of select="W" />      
		</td>      
		<td class="yes">
			<xsl:value-of select="L" /> 	
		</td>      
		<td class="yes">        
			<xsl:value-of select="T" />      
		</td>      
		<td class="yes">        
			<xsl:value-of select="W*2+T" />      
		</td>    
	</tr>
	</xsl:for-each>

</table>    

</td>
</tr>
</table>

<table class="noborder">
<tr>
<td class="no">
<a class="url" href="../2005-06/overall.xml" >2005-06</a>
</td>
<td class="no">
<a class="url" href="../2006-07/overall.xml" >2006-07</a>
</td>
<td class="no">
<a class="url" href="../2007-08/overall.xml" >2007-08</a>
</td>
<td class="no">
<a class="url" href="../2008-09/overall.xml" >2008-09</a>
</td>
<td class="no">
<a class="url" href="../2009-10/overall.xml" >2009-10</a>
</td>
<td class="no">
<a class="url" href="../2010-11/overall.xml" >2010-11</a>
</td>
<td class="no">
<a class="url" href="../2011-12/overall.xml" >2011-12</a>
</td>
</tr>
</table>

</center>   
</body> 

</html> 

</xsl:template> 
</xsl:stylesheet> 
