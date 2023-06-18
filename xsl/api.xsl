<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/resp:response/api:api" 
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:api="https://hcssmith.com/xsd/api"
  >
  <ul class="pure-menu-list">
    <xsl:for-each select="api:endpoint">
      <li class="pure-menu-item">
        <a class="pure-menu-link">
          <xsl:attribute name="href">
            <xsl:value-of select="api:path" />
          </xsl:attribute>
          <xsl:value-of select="api:name" />
        </a>
      </li>
    </xsl:for-each>
  </ul>
  </xsl:template>
</xsl:stylesheet>
