<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="/source/publisher" /></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1/new.min.css" />
        <link rel="stylesheet" href="https://fonts.xz.style/serve/inter.css" />
        <style>
          table tr th {
          min-width:100px;
          }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/source/publisher" /></h1>
        <h2><xsl:value-of select="/source/publisherurl" /></h2>
        <div class="Jobllist">
          <xsl:for-each select="/source/job">
            <table>
              <tr>
                <th>Element</th>
                <th>Content</th>
                <th>Notes</th>
              </tr>
              <tr>
                <td>Title</td>
                <td><xsl:value-of select="title" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Date</td>
                <td><xsl:value-of select="date" /></td>
                <td>required - <a href="https://en.wikipedia.org/wiki/ISO_8601">format</a></td>
              </tr>
              <tr>
                <td>Reference Number</td>
                <td><xsl:value-of select="referencenumber" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Requisition Id</td>
                <td><xsl:value-of select="requisitionid" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>API Job Id</td>
                <td><xsl:value-of select="apijobid" /></td>
                <td>not required</td>
              </tr>
              <tr>
                <td>URL</td>
                <td><xsl:value-of select="url" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Company</td>
                <td><xsl:value-of select="company" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Source Name</td>
                <td><xsl:value-of select="sourcename" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>City</td>
                <td><xsl:value-of select="city" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>State</td>
                <td><xsl:value-of select="state" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Country</td>
                <td><xsl:value-of select="country" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Postcode</td>
                <td><xsl:value-of select="postalcode" /></td>
                <td>required if on client side</td>
              </tr>
              <tr>
                <td>Address</td>
                <td><xsl:value-of select="address" /></td>
                <td>required if on client side</td>
              </tr>
              <tr>
                <td>Email</td>
                <td><xsl:value-of select="email" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Description</td>
                <td><xsl:value-of select="description" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Salary</td>
                <td><xsl:value-of select="salary" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Education</td>
                <td><xsl:value-of select="education" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Job Type</td>
                <td><xsl:value-of select="jobtype" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Category</td>
                <td><xsl:value-of select="category" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Experience</td>
                <td><xsl:value-of select="experience" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Expriy Date</td>
                <td><xsl:value-of select="expirationdate" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Remote Type</td>
                <td><xsl:value-of select="remotetype" /></td>
                <td>required</td>
              </tr>
              <tr>
                <td>Indeed Apply URL</td>
                <td><xsl:value-of select="indeed-apply-data" /></td>
                <td>required</td>
              </tr>

            </table>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
