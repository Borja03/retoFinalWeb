<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" encoding="UTF-8" />

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Dashboard</title>
        <script src="../../script/script.js"></script>
       <!-- <link rel="stylesheet" href="../../css/styled.css"></link> -->
        <style>
          body {
            display: flex;
            margin: 0;
            padding: 0;
            background-color: #1d2634;
            color: #9e9ea4;
            font-family: 'Montserrat', sans-serif;
          }
          aside {
            width: 200px;
            background-color: #263043;
            padding-top: 30px;
            position: fixed;
            height: 100%;
            overflow-y: auto;
          }
          .main {
            margin-left: 200px; /* Same as the width of the sidebar */
            padding: 20px;
            width: calc(100% - 200px);
          }
          .main-title {
            display: flex;
            justify-content: space-between;
            color: white;
          }
          .container {
            display: flex;
            justify-content: space-around;
            padding: 20px;
          }
          .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            text-align: center;
            width: 20%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            color: white;
          }
          .card h2 {
            margin-top: 0;
          }
          .card:first-child {
            background-color: #98a;
          }
          .card:nth-child(2) {
            background-color: #d07f44;
          }
          .card:nth-child(3) {
            background-color: #3e7f41;
          }
          ul.sidebar-list {
            list-style-type: none;
            padding: 0;
          }
          ul.sidebar-list li {
            padding: 20px;
            font-size: 18px;
            color: #9e9ea4;
          }
          ul.sidebar-list li a {
            text-decoration: none;
            color: #9e9ea4;
          }
          ul.sidebar-list li:hover {
            background-color: rgba(255, 255, 255, 0.2);
            cursor: pointer;
          }
        </style>
      </head>
      <body>
        <!-- Sidebar -->
        <aside>
          <div class="sidebar-title">
            <h2 class="sidebar-brand"> Dash-Menu</h2>
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
