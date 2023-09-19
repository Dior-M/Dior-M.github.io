<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>ABC Financial Startup</title>
            </head>
            <body>
                <h1>ABC Financial Startup</h1>
                <img src="financialstartup.jpg" alt="Company Logo" style="display: block; margin: 0 auto;" />
                <p>We are very young financial manager company and we are proud of our clients</p>
                <p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(//Client)" /> clients!</p>
                <p>These are our clients:
                    <xsl:for-each select="//Client">
                        <xsl:value-of select="Name" />
                        <xsl:if test="position() &lt; last() - 1">, </xsl:if>
                        <xsl:if test="position() = last() - 1"> , and </xsl:if>
                    </xsl:for-each>.
                </p>
                <p><xsl:value-of select="count(//Client[Years > 7])" /> of our clients are with us for more than 7 years!</p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
