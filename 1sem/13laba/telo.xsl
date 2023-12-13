<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <h2>Аттестация студентов</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Фамилия</th>
                        <th>ОПИ</th>
                        <th>КЯР</th>
                        <th>АЛОЦВМ</th>
                        <th>ОАП</th>
                    </tr>
                    <xsl:for-each select="spiski/cd">
                        <xsl:sort select="ycheniki" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="ycheniki"/>
                            </td>
                            <!-- ОПИ -->
                            <xsl:choose>
                                <xsl:when test="ozenka &gt; 8">
                                    <td bgcolor="green">
                                        <xsl:value-of select="ozenka"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="ozenka &lt; 4">
                                            <td bgcolor="red">
                                                <xsl:value-of select="ozenka"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="ozenka"/>
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                            <!--ОПИ-->
                            <xsl:choose>
                                <xsl:when test="ozenka2 &gt; 8">
                                    <td bgcolor="green">
                                        <xsl:value-of select="ozenka2"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="ozenka2 &lt; 4">
                                            <td bgcolor="red">
                                                <xsl:value-of select="ozenka2"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="ozenka2"/>
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                            <!--ОАП-->
                            <xsl:choose>
                                <xsl:when test="ozenka3 &gt; 8">
                                    <td bgcolor="green">
                                        <xsl:value-of select="ozenka3"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="ozenka3 &lt; 4">
                                            <td bgcolor="red">
                                                <xsl:value-of select="ozenka3"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="ozenka3"/>
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                            <!--АЛОЦВМ-->
                            <xsl:choose>
                                <xsl:when test="ozenka4 &gt; 8">
                                    <td bgcolor="green">
                                        <xsl:value-of select="ozenka4"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="ozenka4 &lt; 4">
                                            <td bgcolor="red">
                                                <xsl:value-of select="ozenka4"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="ozenka4"/>
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 