<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Juegos</title>
            </head>
            <body>
                <h1>Juegos</h1>
                <xsl:apply-templates select="//juego"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="juego">
        <div>
            <h2>
                <xsl:value-of select="titulo"/>
            </h2>
            <p>
                <xsl:value-of select="descripcion"/>
            </p>
            <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
            <p>Género: <xsl:value-of select="genero"/></p>
            <img src="{imagen}" alt="{titulo}" />
            <h3>Premios:</h3>
            <ul>
                <xsl:apply-templates select="premios/premio"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="premio">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>

</xsl:stylesheet>
