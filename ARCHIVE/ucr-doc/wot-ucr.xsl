<?xml version="1.0" encoding="UTF-8"?>
<!-- Copied from https://github.com/dret/W3C/blob/master/WoTIG/WoT-UCR.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xsd" version="2.0">
    <xsl:output method="xhtml" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <xsl:key name="domain" match="usecase" use="@domain" />
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html>&#xa;</xsl:text>
        <html>
            <head>
                <title>Use Cases and Requirements for the Web of Things</title>
                <meta charset="utf-8"/>
                    <script src="https://www.w3.org/Tools/respec/respec-w3c-common" async="async" class="remove"></script>
                    <script class="remove">
                        var respecConfig = {
                        specStatus: "unofficial",
                        shortName:  "WoT-UCR",
                        editors: [
                        {   name:       "Johannes Hund",
                            company:    "Siemens AG",
                            companyURL: "http://www.siemens.com/" }
                        ],
                        otherLinks: [
                        {
                            key: "Repository",
                            data: [{
									value: "We are on GitHub",
									href: "https://github.com/w3c/wot/tree/master/ucr-doc"
                                },{
									value: "File a bug",
									href: "https://github.com/w3c/wot/issues"
                                }
                                ]
                            }
                        ],
                        };
                    </script>
            </head>
            <body>
                <section id="abstract">
                    <p>
                        The Web of Things (WoT) Interest Group (IG) is collecting concepts and technologies to enable discovery and interoperability of Internet of Things (IoT) services on a worldwide basis.
                        This document is used to collect IoT use cases from different domains for the Standardisation work in the W3C WoT groups.
                        The domain use cases are dissaminated to identify so-called <b>building-blocks</b>
                        that are common across the different domains as well as <b>non-functional</b> requirements. <br/>
                        The identified <b>building blocks</b> are inputs to the investigation and standardisation work.<br/>
                        The technology candidates for the respective <b>building blocks</b> were moved into the <a href="https://w3c.github.io/wot/landscape.html">tech landscape</a> document. 
                    </p>
                </section>
		<section id='sotd'>
		<p>
			This section describes the status of this document at the time of its publication. Other documents may supersede this document. A list of current W3C publications and the latest revision of this technical report can be found in the W3C technical reports index at <a href="http://www.w3.org/TR/" arget="_blank">http://www.w3.org/TR/.</a>
		</p>
		<p>
			This collection of exemplary use cases is the result of discussion in the <a href="https://www.w3.org/WoT/IG/" target="_blank">Web of Things Interest Group</a>.

			The Web of Things Interest Group believes that Working Groups such as a potential The Web of Things Working Group or others will provide recommendations 
			that simplify the application development and interoperabilty for the mentioned use cases. 

			The Web of Things Interest Group may continue to discuss other areas of IoT that have not already been raised in this document, 
			as well as refine the stated use cases and requirements.
		</p><p>
			This document was published by the Web of Things Interest Group as an Interest Group Note. 

			If you wish to make comments regarding this document, please send them to <a href="mailto:public-wot-ig@w3.org">public-wot-ig@w3.org</a> 
			(<a class="sub" title="subscribe to public-wot-ig@w3.org" href="mailto:public-wot-ig-request@w3.org?subject=subscribe">subscribe</a>, <a href="https://lists.w3.org/Archives/Public/public-wot-ig/" target="_blank">archives</a>). All feedback is welcome.
			</p><p>
			Publication as an Interest Group Note does not imply endorsement by the W3C Membership. 
			This is a draft document and may be updated, replaced or obsoleted by other documents at any time. It is inappropriate to cite this document as other than work in progress.<br />

			The disclosure obligations of the Participants of this group are described in the <a href="https://www.w3.org/2016/07/wot-ig-charter.html" target="_blank">charter</a>.
		</p>
		</section>
		<section id="use-cases">
		<h2>Use Cases</h2>

                    <xsl:apply-templates select="/ucr/usecase[generate-id(.)=generate-id(key('domain',@domain)[1])]"/>
                </section>
                <section id="building-blocks">
                    <h2>Building blocks</h2>
                    <xsl:apply-templates select="/ucr/req[@type='functional']"/>
                </section>
                <section id="non-functionals">
                    <h2>Non-Functional Requirements</h2>
                    <xsl:apply-templates select="/ucr/req[@type='non-functional']"/>
                </section>
                <section id="technologies">
                    <h2>Technologies</h2>
                    <xsl:apply-templates select="/ucr/tech"/>
                </section>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="usecase">
      <section id="domain-{@domain}">
          <h3>Domain: <xsl:value-of select="translate(@domain,'_',' ')" /></h3>
          <xsl:for-each select="key('domain', @domain)">
            <section id="{@id}">
                <xsl:apply-templates select="title, p, details, ul">
                    <xsl:with-param name="position" select="position()"/>
                </xsl:apply-templates>
            </section>
          </xsl:for-each>
      </section>
    </xsl:template>
    <xsl:template match="req">
        <xsl:variable name="reqid" select="@id"/>
        <section id="{$reqid}">
            <xsl:apply-templates select="title, p">
                <xsl:with-param name="position" select="position()"/>
            </xsl:apply-templates>
            <dl>
                <dt><b>Motivated by <xsl:value-of select="count(/ucr/usecase[.//li[@reqref eq $reqid]])"/> Use Cases: </b></dt>
                <dd>
                    <ul>
                        <xsl:for-each select="/ucr/usecase//li[@reqref eq $reqid]">
                            <li>
                                <em>
                                    <a href="#{../../@id}" title="Go to complete Use Case">
                                        <xsl:value-of select="concat(../../title, ': ')"/>
                                    </a>
                                </em>
                                <a href="#{concat(../../@id, '-', $reqid)}" title="Go to Atomic Use Case">
                                    <xsl:apply-templates select="node()"/>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </dd>
                <dt><b>Covered by <xsl:value-of select="count(/ucr/tech[.//li[@reqref eq $reqid]])"/> Technologies: </b></dt>
                <dd>
                    <ul>
                        <xsl:for-each select="/ucr/tech//li[@reqref eq $reqid]">
                            <li>
                                <em>
                                    <a href="#{../../@id}" title="Go to Technology Description">
                                        <xsl:value-of select="concat(../../title, ': ')"/>
                                    </a>
                                </em>
                                <a href="#{concat(../../@id, '-', $reqid)}" title="Go to Technology Feature Description">
                                    <xsl:apply-templates select="node()"/>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </dd>
            </dl>
        </section>
    </xsl:template>
    <xsl:template match="tech">
        <section id="{@id}">
            <xsl:apply-templates select="title, p, ul">
                <xsl:with-param name="position" select="position()"/>
            </xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="title">
        <xsl:param name="position"/>
        <h2>
            <xsl:if test="exists(../@author)">
                <xsl:attribute name="title" select="concat('Authored by: ', ../@author)"/>
            </xsl:if>
            <xsl:value-of select="."/>
            <xsl:if test="exists(../@href)">
                <xsl:text> </xsl:text>
                <a href="{../@href}" title="External Link">(Link)</a>
            </xsl:if>
        </h2>
    </xsl:template>
    <xsl:template match="details">
        <div>
            <xsl:if test="exists(./title)">
                <h4>
                    <xsl:value-of select="./title"/>        
                </h4>
            </xsl:if>
            <xsl:for-each select="p">
                <p>
                <xsl:value-of select="."/> 
                </p>
            </xsl:for-each>
        </div>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates select="node()"/>
        </p>
    </xsl:template>
    <xsl:template match="a">
        <a href="{@href}">
            <xsl:if test="exists(@title)">
                <xsl:attribute name="title" select="@title"/>
            </xsl:if>
            <xsl:apply-templates select="node()"/>
        </a>
    </xsl:template>
    <xsl:template match="ul">
      <dl>
        <dt><b>Related Building Blocks</b></dt>
        <dd>
          <ul>
              <xsl:apply-templates select="li[id(@reqref)[@type='functional']]"/>
          </ul>
        </dd>
        <dt><b>Related Non-Functionals</b></dt>
        <dd>
          <ul>
              <xsl:apply-templates select="li[id(@reqref)[@type='non-functional']]"/>
          </ul>
        </dd>
      </dl>
    </xsl:template>
    <xsl:template match="li">
        <li id="{concat(../../@id, '-', @reqref)}">
            <b>
                <a href="#{@reqref}">
                    <xsl:value-of select="id(@reqref)/title"/>
                </a>
                <xsl:text>: </xsl:text>
            </b>
            <xsl:apply-templates select="node()"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
