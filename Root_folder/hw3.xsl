<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>List of Clients</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
            box-shadow: 0em 0em 0.3125em rgba(0, 0, 0, 0.3); /* Add shadow effect */
          }
          th {
            border: 0.0625em solid #0073e6; /* Border color is blue (#0073e6) */
            padding: 0.5em;
            background-color: #f0f0f0; /* Background color for header row is light gray (#f0f0f0) */
          }
          th.name {
            text-align: left; /* Align the Name column to the left */
          }
          th.phone {
            text-align: center; /* Align the Phone column to the center */
          }
          th.email {
            text-align: left; /* Align the Email column to the left */
          }
          td {
            border: 0.0625em solid #0073e6; /* Border color is blue (#0073e6) */
            padding: 0.5em;
          }
          td.account {
            text-align: right; /* Align the Account Total column to the right */
          }
          td.account.red {
            color: red;
            font-weight: bold;
          }
          td.phone {
            text-align: center; /* Align the Phone column to the center */
          }
          body {
            font-size: 1em; /* Set the base font size in em */
          }
        </style>
      </head>
      <body>
        <h1>List of Clients</h1>
        <table>
          <tr>
            <th class="name">Name</th>
            <th class="phone">Phone</th>
            <th class="email">Email</th>
            <th>Account Total</th>
          </tr>
          <xsl:for-each select="Accounts/Client">
            <xsl:sort select="Name/Last"/> <!-- Sort clients by last name -->
            <tr>
              <td class="name">
                <xsl:value-of select="Name/First"/>
                <xsl:text> </xsl:text> <!-- Add a space character -->
                <xsl:value-of select="Name/Last"/>
              </td>
              <td class="phone"><xsl:value-of select="Phone"/></td>
              <td class="email"><xsl:value-of select="E-mail"/></td>
              <xsl:variable name="accountTotal" select="number(Account_Total)"/>
              <xsl:choose>
                <xsl:when test="$accountTotal &lt;= 80000">
                  <td class="account red">$<xsl:value-of select="format-number($accountTotal, '#,###')"/></td>
                </xsl:when>
                <xsl:otherwise>
                  <td class="account">$<xsl:value-of select="format-number($accountTotal, '#,###')"/></td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
