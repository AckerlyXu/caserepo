<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" standalone="yes" indent="yes"/>
  <xsl:strip-space elements="*" />
  <xsl:key name="header_text" match="HeaderText" use="Text"/>
  <xsl:key name="line_text" match="LineText" use="concat(../OrderLineNum, '|', Text)"/>

  <!--<xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>-->
  <xsl:template match="/">
    <xsl:copy>
      <xsl:apply-templates ></xsl:apply-templates>
    </xsl:copy>
    
    
  </xsl:template>
  <!-- no duplilcate on HeaderText and LineText -->
  <!--<xsl:template match="HeaderText[generate-id() != generate-id(key('header_text', Text)[1])]" />
  <xsl:template match="LineText[generate-id() != generate-id(key('line_text', concat(../OrderLineNum, '|', Text))[1])]" />-->
  
  <!-- delete PackingslipId on HeaderInformation, if different at Line -->
  <xsl:template match="//Interchange/HeaderInformation/LineItem">
    <xsl:choose>
      <xsl:when test="
      count(Lines[not(PackingslipId = preceding-sibling::Lines/PackingslipId)]) = 1">

        <xsl:copy-of select="//Interchange/HeaderInformation/PackingslipId"/>
        <xsl:copy-of select="//Interchange/HeaderInformation/DeliveryDate"/>
   
        </xsl:when>
          <xsl:otherwise>            
          </xsl:otherwise>
        </xsl:choose>
  </xsl:template>

<!-- delete empty nodes -->
 <!--<xsl:template match="node()|@*">
     <xsl:copy>
       <xsl:apply-templates select="node()|@*"/>
     </xsl:copy>
 </xsl:template>

 <xsl:template match="*[not(@*|*|comment()|processing-instruction()) and normalize-space()='']"/>-->
 
</xsl:stylesheet>

