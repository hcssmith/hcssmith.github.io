<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template 
  match="payload:widget"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:resp="https://hcssmith.com/xsd/response"
  xmlns:payload="https://hcssmith.com/xsd/payload">
  <xsl:choose>
    <xsl:when test="./@type = 'indeed-styler'">
      <div class="widget indeed-styler">
        <h3>Style an indeed feed</h3>
        <textarea placeholder="Paste your XML here" style="width: 100%; height: 200px;" />
        <button>Submit</button>
      </div>
    </xsl:when>
    <xsl:otherwise>
      Unknown Widget
    </xsl:otherwise>
  </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
