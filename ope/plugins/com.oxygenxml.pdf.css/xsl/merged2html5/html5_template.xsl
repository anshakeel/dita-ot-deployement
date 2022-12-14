<?xml version="1.0" encoding="UTF-8"?>
<!-- This stylesheet assembles all the basic dita to 
     html transformation, the TOC, index specific 
     transformation and the user extension point.-->
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:opentopic="http://www.idiominc.com/opentopic"
  xmlns:oxy="http://www.oxygenxml.com/extensions/author"
  xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
  xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
  
  exclude-result-prefixes="#all">

  <xsl:import href="plugin:org.dita.html5:xsl/dita2html5Impl.xsl"/>
  
  <xsl:import href="html5-pdf-webhelp/html5-pdf-webhelp.xsl"/>
  <xsl:import href="html5-pdf/html5-pdf.xsl"/>
  
  <xsl:import href="../review/review-elements-to-html.xsl"/>  
    
  <!-- XSLT extension point for the HTML5 DITA processing -->
  <dita:extension id="com.oxygenxml.pdf.css.xsl.merged2html5"
                  behavior="org.dita.dost.platform.ImportXSLAction"
                  xmlns:dita="http://dita-ot.sourceforge.net"/>

  <!-- XSLT extension point defined from a publishing template file. -->
  <xsl:import href="template:xsl/com.oxygenxml.pdf.css.xsl.merged2html5"/> 
  
  <xsl:output method="xhtml"
              html-version="5.0"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>

</xsl:stylesheet>
