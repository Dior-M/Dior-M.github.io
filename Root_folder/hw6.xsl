<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Members Information</title>
        <style>
          h1 {
            text-align: center;
            color: #ff69b4; /* Soft pink color */
            font-size: 150%; /* 1.5em equivalent for accessibility */
          }
          .member {
            background-color: #ffe6f0; /* Softer pink color */
            padding: 1.5em; /* padding */
            margin: 1.5em; /* margin */
            box-shadow: 0.2em 0.2em 0.5em #888888; /* shadow */
          }
          table {
            width: 100%;
          }
          td {
            padding: 0.75em; /* padding */
          }
        </style>
      </head>
      <body>
        <h1>Members Information</h1>
        <xsl:apply-templates select="Members/Member"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Member">
    <div class="member">
      <h2 style="color: #ff69b4; font-size: 120%;">Member Details</h2> <!-- 1.2em equivalent for accessibility -->
      <table>
        <tr>
          <td style="font-weight: bold; width: 9em;">Name:</td> <!-- 9em is roughly equivalent to 150px -->
          <td><xsl:value-of select="Name"/></td>
        </tr>
        <tr>
          <td style="font-weight: bold;">Age:</td>
          <td><xsl:choose>
            <xsl:when test="Age">
              <xsl:value-of select="Age"/>
            </xsl:when>
            <xsl:otherwise>21</xsl:otherwise>
          </xsl:choose></td>
        </tr>
        <tr>
          <td style="font-weight: bold;">Job:</td>
          <td><xsl:value-of select="Job"/></td>
        </tr>
        <tr>
          <td style="font-weight: bold;">Date:</td>
          <td><xsl:value-of select="Date"/></td>
        </tr>
        <tr>
          <td style="font-weight: bold;">Phone:</td>
          <td><xsl:value-of select="Phone"/></td>
        </tr>
      </table>
    </div>
  </xsl:template>
</xsl:stylesheet>
