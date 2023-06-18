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
    <img>
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
  <p>
    <xsl:apply-templates />
  </p>
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
</xsl:stylesheet>
