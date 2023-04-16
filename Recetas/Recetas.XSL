<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="Recetas.css" />
        <title>Recetas</title>
      </head>
      <body>
        <div id="header">
          <h3>
              <h2>
                  <img src="../Imagenes/Logo-Delicias.png" width="auto" height="auto"/>
              </h2>
          </h3>
          <ul class="sticky">
              <p class="sticky"><a href="../index/index.html">INICIO</a></p>
              <p class="sticky">SOBRE MI</p>
              <p class="sticky"><a href="../Recetas/Recetas.xml">RECETAS</a></p>
              <p class="sticky"><a href="../Formulario/Formulario.html">CONTACTOS</a></p>
              <p class="sticky">OTRAS COSAS</p>
          </ul>
          <titulo1>Recetas</titulo1>
      </div>
      <div id="trunk">
        <aside1></aside1>    
        <aside2></aside2>
        <xsl:apply-templates/>
      </div>
        <div id="footer">
          <ul1 class="footer">
              <p class="footer">FACEBOOK</p>
              <p class="footer">TWITTER</p>
              <p class="footer">INSTAGRAM</p>
              <p class="footer">PINTEREST</p>
              <p class="footer">EMAIL</p>
          </ul1>
      </div>
      
      </body>
    </html>
  </xsl:template>

  <xsl:template match="section">
    <h4><xsl:value-of select="titulo"/></h4>
    <imag><img src="{caracteristicas/descripciones/Imagen}" alt="Imagen de la receta" width="100px"  height="100px"/></imag>
    <lista>
      <li><xsl:value-of select="caracteristicas/descripciones/Tiempo"/></li>
      <li><xsl:value-of select="caracteristicas/descripciones/Dificultad"/></li>
      <li><xsl:value-of select="caracteristicas/descripciones/Celiacos"/></li>
      <li><xsl:value-of select="caracteristicas/descripciones/Vegano"/></li>
      <li><xsl:value-of select="caracteristicas/descripciones/Autor"/></li>
    </lista>
  </xsl:template>

</xsl:stylesheet>
