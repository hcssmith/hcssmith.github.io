<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
  
<xsl:variable name="date">Date when this job was first published. Must be in the format of <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a></xsl:variable>
<xsl:variable name="referencenumber">Unique identifying number for this instance of the job, which Indeed uses to identify each job. The same job posted in multiple locations must have a unique value for this element. Do not change the number after you set it.</xsl:variable>
<xsl:variable name="requisitionid">Requisition ID for a job, which was formerly the external job ID.
Your system likely uses this value to track the original role and its applicants. Might be the identifier that appears on your public-facing career page.
Must be the same for each posting of a job across different feeds and different locations. Might not be unique.</xsl:variable>
<xsl:variable name="apijobid">Job ID.

Provide a value for this element only when <![CDATA[ <apijobid> is different from <requisitionid>.]]> </xsl:variable>
<xsl:variable name="url">URL for this job listing on your site.Use the URL for the job description page, not the application page. Include the source=Indeed token to track clicks from Indeed. </xsl:variable>
<xsl:variable name="company">Company name that appears in search results.

For example, if subsidiaries or franchises have multiple branded locations in the same company, <![CDATA[ <company>]]> is the simplest version of the business unit or brand name that job seekers can easily understand. </xsl:variable>
<xsl:variable name="sourcename">Parent organization hiring for the role.

For example, if subsidiaries or franchises have multiple branded locations in the same company, the <![CDATA[ <sourcename> ]]>is the same for all those jobs. </xsl:variable>
<xsl:variable name="city">City where this job is located. </xsl:variable>
<xsl:variable name="state">State where this job is located.

Use the appropriate postal abbreviation. If your job is located outside the US, use the corresponding geographic designation such as province or region.</xsl:variable>
<xsl:variable name="country">Country where this job is located.</xsl:variable>
<xsl:variable name="postalcode"> Postal code where this job is located.</xsl:variable>
<xsl:variable name="streetaddress">Street address of the job's primary work location. Include the street name and number. If possible, provide the full address including city, state, and postal code. Indeed might use the street address to improve the precision of location-based job search and to show to job seekers.</xsl:variable>
<xsl:variable name="email">Email account associated with the Indeed account for this client.

To verify the business entity that posts the job, the Indeed Search Quality team requires the client's contact email address.</xsl:variable>
<xsl:variable name="description">Description for this job listing that is the source of the raw text that appears to job seekers on Indeed. Ensure the information in this element matches the details on the <![CDATA[<url>]]> page, including all job-related information in the same order as the source website, and including text that can also appear in other fields in the XML, such as education or experience.

Indeed might apply filters to this information to omit items such as buttons or link text that does not make sense in the context of Indeed.

<a href="https://developer.indeed.com/docs/indeed-apply/references/xml-feed/#formatting-guidelines">Formatting Guidelines</a>
</xsl:variable>
<xsl:variable name="salary"> Salary offered for this job.

For best practices, see Indeed pay transparency &amp; salary estimates.</xsl:variable>

<xsl:variable name="education">Education level desired for this job.</xsl:variable> 
<xsl:variable name="jobtype"> Type of job, full- or part-time.

Indeed might also extract this information directly from other provided job content.</xsl:variable> 
<xsl:variable name="category">Comma-delimited list of job categories.

While this element is not required, it’s highly recommended that you include it as a way to help clients sponsor jobs based on a category.

For example, include facility or department information in this element.</xsl:variable> 
<xsl:variable name="experience">Experience desired for this job.</xsl:variable> 
<xsl:variable name="expirationdate"> Date when active hiring for a role concludes.

After this date, Indeed might remove the job from search results. By default, data is interpreted by using the CST time zone.</xsl:variable> 
<xsl:variable name="tracking_url">Unique URL for the job, which Indeed uses to track clicks on this job.</xsl:variable> 
<xsl:variable name="remotetype">
	

Type of remote work. A valid value is:

    Fully remote. The employee works remotely or from home. Fully remote might not have a more specific residency requirement than the nationwide level because remote jobs appear nationwide.

    Hybrid remote. The employee works both in-office and remotely on a consistent basis.

    COVID-19. The employee works remotely temporarily due to COVID-19-related circumstances. Eventually, the employee will work in-office on either a part- or full-time basis.

For more information about remote jobs, see these sections in the How to post a remote job on Indeed article:

    If your job appears on Indeed but is posted on your career site or ATS
    XML file users

For additional text that you can include in the job, see XML feed FAQ. </xsl:variable> 
<xsl:variable name="lastactivitydate">Most recent timestamp of any action that your system made to this job.

This action can include candidate review, job update, and so on.</xsl:variable> 
<xsl:variable name="indeed-apply-data"></xsl:variable> 
<xsl:variable name="vars" select="document('')/*/xsl:variable" />
  
  <xsl:template match="/" xmlns="http://www.w3.org/1999/xhtml">
    <html>
      <head>
        <style>
          .job ul li::before {
          content: attr(data-attr-id) ':';
          }
        </style>
      </head>
      <body>
        <h1>Indeed XML feed</h1>
        <div class="job-list">
          <xsl:for-each select="/source/job">
            <div class="job">

              <h3><xsl:value-of select="title" /></h3>
              <ul>
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">date</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">referencenumber</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">requisitionid</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">apijobid</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">url</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">company</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">sourcename</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">city</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">state</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">country</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">postalcode</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">streetaddress</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">email</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">description</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">salary</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">education</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">jobtype</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">category</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">experience</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">expirationdate</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">tracking_url</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">remotetype</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">lastactivitydate</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
                <xsl:call-template name="job-field">
                  <xsl:with-param name="field">indeed-apply-data</xsl:with-param>
                  <xsl:with-param name="required">yes</xsl:with-param>
                </xsl:call-template> 
              </ul>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="job-field" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:param name="field" /> <!--xml field name-->
    <xsl:param name="required" /><!--yes or no-->
    <li>
      <xsl:attribute name="data-attr-id">
        <xsl:value-of select="$field" />
      </xsl:attribute>

      <xsl:choose>
        <xsl:when test="not(./*[local-name() = $field])">
          <xsl:attribute name="class">required-missing</xsl:attribute>
         Element not found... 
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="class">required-found</xsl:attribute>
          <xsl:value-of select="./*[local-name() = $field]" />
        </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="description" select="$vars[@name = $field]" />
      <p class="desc"> 
          <xsl:copy-of select="$description"/>
      </p>
    </li>
  </xsl:template>
</xsl:stylesheet>
