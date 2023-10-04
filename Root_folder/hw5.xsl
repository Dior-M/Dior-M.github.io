<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>Product List</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            padding: 0.5em 1em; /* Adjust padding using em */
            text-align: left;
            box-shadow: 0.2em 0.2em 0.5em rgba(0, 0, 0, 0.2); /* Adjust box-shadow using em */
          }
          th {
            background-color: #e6e6fa; /* Lavender */
            color: #000;
            font-weight: bold;
          }
          tr:not(:first-child) {
            background-color: transparent; /* Transparent background for all rows except the first */
          }
        </style>
      </head>
      <body>
        <h1>Product List</h1>
        <table>
          <tr>
            <th>ProdID</th>
            <th>Name</th>
            <th>Color</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Location</th>
          </tr>
          <xsl:apply-templates select="Products/Prod" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Prod">
    <tr>
      <td><xsl:value-of select="@ProdID" /></td>
      <td><xsl:value-of select="Details/Short_Desc" /></td>
      <td><xsl:value-of select="Color" /></td>
      <td><xsl:value-of select="Unit_Price" /></td>
      <td><xsl:value-of select="Quantity" /></td>
      <td><xsl:value-of select="Loc" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

