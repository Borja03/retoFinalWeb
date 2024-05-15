<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" encoding="UTF-8" />

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Dashboard</title>
        <script src="../../script/script.js"></script>
        <link rel="stylesheet" href="../../css/styled.css"></link>
        <style>
        </style>
      </head>
      <body>
        <!-- Sidebar -->
        <aside>
          <div class="sidebar-title">
            <h2 class="sidebar-brand">Dash-Menu</h2>
          </div>
          <ul class="sidebar-list">
            <li>
              <a href="../../html/add_new_boss_form.html">
                <span>Add Boss</span>
              </a>
            </li>
            <li>
              <a href="../../html/modify_boss_form.html">
                <span>Modify Boss</span>
              </a>
            </li>
            <li>
              <a href="../../html/delete_boss_form.html">
                <span>Delete Boss</span>
              </a>
            </li>
          </ul>
        </aside>
        <!-- End Sidebar -->

        <!-- Main -->
        <div class="main">
          <div class="main-title">
            <h2>DASHBOARD</h2>
          </div>

          <div class="container">
            <div class="card">
              <h2>Games</h2>
              <p>Number of games: <xsl:value-of select="count(/saga/juegos/juego)" /></p>
            </div>
            <div class="card">
              <h2>Bosses</h2>
              <p>Number of bosses: <xsl:value-of select="count(/saga/bosses/boss)" /></p>
            </div>
            <div class="card">
              <h2>Weapons</h2>
              <p>Number of weapons: <xsl:value-of select="count(/saga/bosses/boss/armas/arma)" /></p>
            </div>
          </div>
        </div>
        <!-- End Main -->

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
