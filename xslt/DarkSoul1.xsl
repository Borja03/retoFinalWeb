<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Match the root element -->
  <xsl:template match="/">
    <html>
      <head>
        <script src="../../script/script.js"></script>
        <link rel="stylesheet" href="../../css/style.css"></link>
        <title>Game Information</title>
        
      </head>
      <body>
        <header>
            <div class="top">
                <div class="container"/>
                                
            </div>
    
            <nav>
                <div class="container">
                    <a href="../../index.php" class="logo">
                      <img src="../../images/logo.png"/>
                    </a>
                    
                    <input type="checkbox" id="menu"/>
                    <label for="menu"><i class="fas fa-bars"></i></label>
                    <ul class="menuList">
                        <li><a href="../Transformations/demons souls.php">Demon's Souls</a></li>
                        <li><a href="../Transformations/dark souls1.php">Dark Souls I</a></li>
                        <li><a href="../Transformations/dark souls2.php">Dark Souls II</a></li>
                        <li><a href="../Transformations/dark souls3.php">Dark Souls III</a></li>
                        <li><a href="../Transformations/bloodborne.php">Bloodborne</a></li>
                        <li><a href="../Transformations/eldenring.php">Elden Ring</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="empty"></div>
          
        <div class="main">
        <h1>Game Information</h1>
        <xsl:apply-templates select="//juego[@id='DS1']"/>
          </div>
      </body>
    </html>
  </xsl:template>
  
  <!-- Match the specific game -->
  <xsl:template match="juego">

       <div class ="game-info">

   <div class="game-tilte"><h2><xsl:value-of select="titulo"/></h2></div>
   <div class="game-desc"> <p><strong>Description:</strong> <xsl:value-of select="descripcion"/></p></div>
   <div class="game-date"><p><strong>Release Year:</strong> <xsl:value-of select="fecha_salida"/></p></div> 
   <div class="game-gender"><p><strong>Genre:</strong> <xsl:value-of select="genero"/></p></div>
    <div class="game-image"><p><img src="{concat('../../images/', imagen)}" alt="Game Image"/></p></div>

    </div>

    <!-- Table for awards -->
    <div class ="awards">
    <h2>Awards</h2>
    <table>
      <tr>
        <th>Award</th>
        <th>Status</th>
      </tr>
      <xsl:apply-templates select="premios/premio"/>
    </table>
    </div>

    <!-- Table for bosses -->
     <div class ="bosses">
    <h3>Bosses</h3>
    <table>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Weapons</th>
        <th>Location</th>
      </tr>
      <xsl:apply-templates select="//boss[@juego=current()/@id]"/>
    </table>
    </div>
  </xsl:template>
  
  <!-- Match each award -->
  <xsl:template match="premio">
    <tr>
      <td><xsl:value-of select="."/></td>
      <td><xsl:value-of select="@estado"/></td>
    </tr>
  </xsl:template>
  
  <!-- Match each boss -->
  <xsl:template match="boss">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="descripcion"/></td>
      <td>
        <ul>
          <xsl:for-each select="armas/arma">
            <li><xsl:value-of select="."/></li>
          </xsl:for-each>
        </ul>
      </td>
      <td><xsl:value-of select="localizacion"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
