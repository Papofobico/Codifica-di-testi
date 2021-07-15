<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/shtml" xmlns:tei="http://www.tei-c.org/ns/1.0">

    <xsl:output method="html" version="4.0" indent="yes" />


    <xsl:template match="/">
        <html>
            <head>
                <link href="progetto.css" rel="stylesheet" />
                <script src="progetto.js"/>
                <title>
                    <xsl:value-of select="TEI/teiHeader/fileDesc/sourceDesc/bibl/title" />
                </title>
            </head>
            <body>
                <div class="iniziale">
                <h1>
                    <xsl:text>Morphologié di Ferdinand De Saussure</xsl:text>
                </h1>
                <h2 class="incipit">
                    <xsl:text>
                        Codifica delle pagine 10 e 11
                </xsl:text>
                    <br />
                    <xsl:text>    
                        Responsabile: Davide Pellegrino
                    </xsl:text>
                </h2>
                <div class="primoParagrafo">
                    <p class="intro">
                        <xsl:apply-templates select="//projectDesc" />
                    </p>
                </div>
                </div>
                <div class="pagina.10">
                <h1>
                    <xsl:text>Immagine e codifica della pagina: </xsl:text>
                    <xsl:apply-templates select="//opener[@xml:id='opener10']" />
                </h1>
                <div id="testoAFronte10">

                    <img src="Morphologié_pag.22.jpg" class="immagine10"></img>

                    <xsl:value-of select="img" />
                    <div class="pagina_10">
                        <div class="visible10" id="Interpretativa10">
                            <h2>
                                <xsl:text>Edizione Diplomatica-Interpretativa</xsl:text>
                            </h2>
                            <p>
                                <xsl:apply-templates mode="interpretativa_10" select="//div[@xml:id='div_pagina10']" />

                            </p>
                        </div>
                        <div class="invisible" id="Dichiarativa10">
                            <h2>
                                <xsl:text>Edizione diplomatica </xsl:text>
                            </h2>
                            <p>
                                <xsl:apply-templates mode="diplomatica_10" select="//div[@xml:id='div_pagina10']" />
                            </p>
                        </div>
                    </div>
                </div>
                <div class="bottoni">
                <button class="bottone" id="bottonePaginaDi10">Edizione diplomatica</button>
                <button class="bottone" id="bottonePaginaIn10">Edizione interpretativa</button>
            </div>
        </div>
                <h1>
                    <xsl:text>Immagine e codifica della pagina: </xsl:text>
                    <xsl:apply-templates select="//opener[@xml:id='opener11']" />
                </h1>
                <div id="testoAFronte11">

                    <img src="Morphologié_pag.26.jpg" class="immagine11"></img>
                    <div id="pagina_11">


                        <div class="visible11" id="Interpretativa11">
                            <h2>
                                <xsl:text>Edizione Diplomatica-Interpretativa</xsl:text>
                            </h2>
                            <p>

                                <xsl:apply-templates mode="interpretativa_11" select="//div[@xml:id='div_pagina11']" />

                            </p>
                        </div>
                        <div class="invisible" id="Dichiarativa11">
                            <h2>
                                <xsl:text>Edizione Diplomatica della pagina 11</xsl:text>
                            </h2>
                            <p>
                                <xsl:apply-templates mode="diplomatica_11" select="//div[@xml:id='div_pagina11']" />
                            </p>

                        </div>

                    </div>
                </div>
                <div class="bottoni">
                <button class="bottone" id="bottonePaginaDi11">Edizione diplomatica</button>
                <button class="bottone" id="bottonePaginaIn11">Edizione interpretativa</button>
            </div>
                
                <div class="glossario">
                    <h2 style="text-align:center">Glossario dei termini tecnici</h2>
                    <xsl:apply-templates select="//standOff" />
                </div>
            </body>
        </html>
    </xsl:template>
   
    <xsl:template match="//projectDesc">
        <xsl:value-of select="p" />
    </xsl:template>


    <xsl:template match="//opener[@xml:id='opener10']">
        <xsl:value-of select="num" />
    </xsl:template>

    <xsl:template match="//opener[@xml:id='opener11']">
        <xsl:value-of select="num" />
    </xsl:template>
    
    <!-- le due edizioni di pagina 10  -->
    <xsl:template mode="interpretativa_10" match="//p[@xml:id='paragrafoPag10']/choice/abbr | //p[@xml:id='paragrafoPag10']/choice/orig | //p[@xml:id='paragrafoPag10']/choice/orig/choice/abbr | //p[@xml:id='paragrafoPag10']/choice/orig/choice/orig | ./opener/num" />

    <xsl:template mode="diplomatica_10" match="//p[@xml:id='paragrafoPag10']/choice/expan | //p[@xml:id='paragrafoPag10']/choice/corr | //p[@xml:id='paragrafoPag10']/choice/orig/choice/expan | //p[@xml:id='paragrafoPag10']/choice/orig/choice/corr | ./opener/num" />
    
    <!-- le due edizioni di pagina 11 -->
    <xsl:template mode="interpretativa_11" match=" /unclear | //p[@xml:id='paragrafoPag11']/choice/abbr | //p[@xml:id='paragrafoPag11']/choice/orig | //p[@xml:id='paragrafoPag11']/choice/orig/choice/abbr | //p[@xml:id='paragrafoPag11']/choice/orig/choice/orig |  ./opener/num | //p[@xml:id='paragrafoPag11']/c" />

    <xsl:template mode="diplomatica_11" match="/unclear | //p[@xml:id='paragrafoPag11']/choice/expan | //p[@xml:id='paragrafoPag11']/choice/corr | //p[@xml:id='paragrafoPag11']/choice/orig/choice/expan | //p[@xml:id='paragrafoPag11']/choice/orig/choice/corr |  ./opener/num | //p[@xml:id='paragrafoPag11']/c" />

    <!-- il glossario con i termini -->
    <xsl:template match="//standOff">
        <xsl:for-each select="listNym/nym">
            <h3 class="termini">
                <xsl:value-of select="@xml:id" />
                <br />
            </h3>
            <xsl:for-each select="def">
                <p  class="semantica">
                    &#8211;
                    <xsl:value-of select="." />
                </p>
            </xsl:for-each>
        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>