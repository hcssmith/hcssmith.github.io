<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output 
  method="xml" 
  omit-xml-declaration="no"
  doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" 
  doctype-public="-//W3C//DTD XHTML 1.1//EN"
  indent="yes"
  />
  <xsl:include href="/xsl/api.xsl" />
  <xsl:include href="/xsl/payload.xsl" />

  <xsl:template match="/" xmlns="http://www.w3.org/1999/xhtml" xmlns:resp="https://hcssmith.com/xsd/response">
    <html>
      <head>
        <title>
          <xsl:value-of xmlns:meta="https://hcssmith.com/xsd/meta" select="/resp:response/meta:meta/meta:title" />
          -
          <xsl:value-of xmlns:meta="https://hcssmith.com/xsd/meta" select="/resp:response/meta:meta/meta:tagline" />
        </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/base-min.css" />
        <link rel="stylesheet" href="/css/style.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" integrity="sha384-X38yfunGUhNzHpBaEBsWLO+A0HDYOQi8ufWDkZ0k9e0eXz/tH3II7uKZ9msv++Ls" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/grids-responsive-min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
<script>hljs.highlightAll();</script>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body class="pure-g">
        <div class="pure-menu pure-u-md-1-3">
          <div class="titlecard">
          <h1 class="pure-menu-heading">
            <xsl:value-of xmlns:meta="https://hcssmith.com/xsd/meta" select="/resp:response/meta:meta/meta:title" />
          </h1>
          <h3 class="pure-menu-heading" >
            <xsl:value-of xmlns:meta="https://hcssmith.com/xsd/meta" select="/resp:response/meta:meta/meta:tagline" />
          </h3>
          <xsl:apply-templates select="/resp:response/api:api" xmlns:api="https://hcssmith.com/xsd/api" />
        </div>
        </div>
        <div class="pure-u-md-14-24">
          <xsl:apply-templates select="/resp:response/payload:payload" xmlns:payload="https://hcssmith.com/xsd/payload" />
        </div>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
