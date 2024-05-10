<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>



  <!-- Template to match the saga element -->
  <xsl:template match="/saga">
  <html>
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Saga</title>	
	<script src="./script/script.js"></script>
	<link rel="stylesheet" href="./css/style.css"/>
</head>
<body>
		<!--  header  and meun  -->
  	<header>
		<div class="top">
							
		</div>

		<nav>
			<div class="container">
				<a href="#" class="logo">
					<img src="./images/logo.png"/>
				</a>
				
				<input type="checkbox" id="menu"/>
				<label for="menu"><i class="fas fa-bars"></i></label>
				<ul class="menuList">
					<li><a href="./php/Transformations/demons souls.php">Demon's Souls</a></li>
					<li><a href="./php/Transformations/dark souls1.php">Dark Souls I</a></li>
					<li><a href="./php/Transformations/dark souls2.php">Dark Souls II</a></li>
					<li><a href="./php/Transformations/dark souls3.php">Dark Souls III</a></li>
					<li><a href="./php/Transformations/bloodborne.php">Bloodborne</a></li>
					<li><a href="../php/Transformations/eldenring.php">Elden Ring</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<main>
   <section>
      <h2>Last 6 Bosses Added</h2>
      <!-- Apply templates to select the last 6 bosses -->
      <xsl:apply-templates select="bosses/boss[position() > last() - 6]"/>
    </section>
  

		<!--  main section to add here a xslt transformation as cards  -->


	</main>
  	<!--  footer  -->
	<footer>


	</footer>
  </body>

  </html>

  
  </xsl:template>

  <!-- Template to match boss elements -->
  <xsl:template match="boss">
    <div>
      <h3><xsl:value-of select="nombre"/></h3>
      <p><strong>Game:</strong> <xsl:value-of select="../juegos/juego[@id=current()/@juego]/titulo"/></p>
      <p><strong>Description:</strong> <xsl:value-of select="descripcion"/></p>
      <p><strong>Location:</strong> <xsl:value-of select="localizacion"/></p>
      <p><strong>Gender:</strong> <xsl:value-of select="genero"/></p>
      <p><strong>Weapons:</strong> <xsl:for-each select="armas/arma"><xsl:value-of select="."/><xsl:if test="position() != last()">, </xsl:if></xsl:for-each></p>
      <img src="{imagen}" alt="{nombre}"/>
    </div>
  </xsl:template>

</xsl:stylesheet>
