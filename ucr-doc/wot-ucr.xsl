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
                    <script src="//www.w3.org/Tools/respec/respec-w3c-common" async="async" class="remove"></script>
                    <script class="remove">
                        var respecConfig = {
                        specStatus: "unofficial",
                        shortName:  "WoT-UCR",
                        editors: [
                        {   name:       "Johannes Hund",
                            company:    "Siemens",
                            companyURL: "http://www.siemens.com/" },
                        {   name:       "Erik Wilde",
                            url:        "http://dret.net/netdret/",
                            company:    "Siemens",
                            companyURL: "http://www.siemens.com/" }
                        ],
                        otherLinks: [{
                            key: "GitHub",
                            data: [{
                                value: "Master branch on GitHub",
                                href: "https://github.com/w3c/wot/tree/master"
                                },{
                                value: "Project Pages branch on GitHub",
                                href: "https://github.com/w3c/wot/tree/gh-pages" }]}
                        ],
                        };
                    </script>
            </head>
            <body>
                <section id="abstract">
                    <p>This document describes Use Cases and Requirements for the Web of Things.</p>
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
          <h3>Domain: <xsl:value-of select="@domain" /></h3>
          <xsl:for-each select="key('domain', @domain)">
            <section id="{@id}">
                <xsl:apply-templates select="title, p, ul">
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
