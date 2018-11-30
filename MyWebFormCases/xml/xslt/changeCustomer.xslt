<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="GRP">
    <xsl:copy>
      <!--copy the data from ADD - CN to the GRP so it can be used in the mapping to set the delivery address from end customer-->
      <xsl:for-each select ="./ADD">
       
         
        
          <xsl:copy-of select="city"/>
         
          
          
        <CONTACT_NUMBER>
     
          <xsl:copy-of select="contact/number/node()|contact/number/@*"/>
        </CONTACT_NUMBER>
      </xsl:for-each>
      <!--copy all other nodes-->
    
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
