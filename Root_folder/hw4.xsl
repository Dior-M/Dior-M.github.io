<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    /* CSS for styling */
                    body {
                        font-family: "Helvetica Neue", Arial, sans-serif;
                        background-color: #f5f5f5; /* Light gray background */
                        margin: 0;
                        padding: 0;
                        text-align: center;
                        color: #333; /* Dark gray text color */
                    }
                    header {
                        background-color: #0074cc; /* Blue header background */
                        padding: 20px;
                    }
                    h1 {
                        font-size: 2em; /* Relative font size (equivalent to 36px) */
                        margin: 20px auto; /* Center the title horizontally */
                        color: #fff; /* White text color in header */
                        padding: 20px 0 30px; /* Adjust padding space */
                    }
                    img {
                        display: block;
                        margin: 0 auto;
                        max-width: 100%;
                    }
                    main {
                        background-color: #fff; /* White background for main content */
                        padding: 20px;
                        box-shadow: 0 0.3125em 0.625em rgba(0, 0, 0, 0.1); 
                    }
                    p {
                        font-size: 1.125em; /* Relative font size (equivalent to 18px) */
                        line-height: 1.5;
                        margin: 1em 0;
                        padding: 0 1.25em;
                        text-align: left; /* Left-align text */
                        color: #555; /* Slightly darker gray text color */
                    }
                    /* Style the list of clients */
                    ul {
                        list-style: none;
                        padding: 0;
                        margin: 1.25em 0;
                        text-align: left; /* Left-align text in the list */
                    }
                    li {
                        font-size: 1.125em; /* Relative font size (equivalent to 18px) */
                        margin-bottom: 0.3125em;
                        color: #333; /* Darker text color for list items */
                    }
                </style>
                 <title>ABC Financial Startup</title> <!-- Title for your HTML page -->
            </head>
            <body>
                <header>
                    <h1>ABC Financial Startup</h1> <!-- Title centered, with padding -->
                    <div style="display: inline-block; border-radius: 50%; overflow: hidden;">
                        <img src="financialstartup.jpg" alt="Company Logo" />
                    </div>
                </header>
                <main>
                    <p>We are a very young financial manager company and we are proud of our clients</p>
                    <p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(//Client)" /> clients!</p>
                    <p>These are our clients:
                    <xsl:for-each select="//Client">
                            <xsl:value-of select="Name"/>
                            <xsl:if test="position() &lt; last() - 1">, </xsl:if>
                            <xsl:if test="position() = last() - 1">, and </xsl:if>
                        </xsl:for-each>.
                    </p>
                    <p><xsl:value-of select="count(//Client[Years > 7])" /> of our clients  are with us for more than 7 years! </p>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
