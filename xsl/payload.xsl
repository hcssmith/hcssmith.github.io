<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/resp:response/payload:payload" 
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:payload="https://hcssmith.com/xsd/payload"
  >
  <xsl:apply-templates />
  </xsl:template>

  <xsl:template 
  match="payload:image"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <div class="image">
    <img width="500">
      <xsl:attribute name="src">
        <xsl:value-of select="./@src" />
      </xsl:attribute>
      <xsl:attribute name="alt">
        <xsl:value-of select="./@caption" />
      </xsl:attribute>
    </img>
    <span><xsl:value-of select="./@caption" /></span>
  </div>
  </xsl:template>
  
  <xsl:template 
  match="payload:paragraph"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <xsl:choose>
    <xsl:when test="@type='code'">
      <pre>
        <code>
          <xsl:attribute name="class">
            language-<xsl:value-of select="./@lang" />
          </xsl:attribute>
        <xsl:apply-templates />
      </code>
      </pre>

  </xsl:when>
  <xsl:otherwise>
  <p>
    <xsl:apply-templates />
  </p>
</xsl:otherwise>
  </xsl:choose>
  </xsl:template>
  <xsl:template 
  match="payload:anchor"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <a>
    <xsl:attribute name="href">
      <xsl:value-of select="./@xlink:href" />
    </xsl:attribute>
    <xsl:apply-templates />
  </a>
  </xsl:template>
  
  <xsl:template 
  match="payload:heading"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <xsl:choose>
    <xsl:when test="@type='large'">
      <h2>
        <xsl:apply-templates />
      </h2>
    </xsl:when>
    <xsl:otherwise>
      <h4>
        <xsl:apply-templates />
      </h4>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

  <xsl:template 
  match="payload:article"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <div class="article">
    <xsl:apply-templates />
    <a>
      <xsl:attribute name="href">
        /blog/<xsl:value-of select="./@id" />
      </xsl:attribute>
      [Read More...]
    </a>
  </div>
  </xsl:template>

  <xsl:template 
  match="payload:title"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <h4>
    <xsl:apply-templates />
  </h4>
  </xsl:template>

</xsl:stylesheet>
