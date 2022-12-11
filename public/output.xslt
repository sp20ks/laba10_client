
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <h1>Result</h1>
    <div id="result">
        <xsl:value-of select="hash"/>
    </div>
</xsl:template>

</xsl:stylesheet>