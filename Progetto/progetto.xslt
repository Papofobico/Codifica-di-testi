<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/shtml" xmlns:tei="http://www.tei-c.org/ns/1.0">

    <xsl:output method="html" version="4.0" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <!-- documento CSS -->
                <link href="progetto2.scss" rel="stylesheet" />
                <!-- documento javascript -->
                <script src="progetto.js" />
                <!-- titolo -->
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />
                </title>
            </head>
            <body>
                <header>
                    <!-- nome del testo e autore -->
                    <h1>
                        <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />
                        <xsl:text>di </xsl:text>
                        <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author/tei:forename" />
                        <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author/tei:surname" />
                    </h1>
                </header>
                <div class="open">
                    <div class="cIncipit">
                        <h2 class="incipit">
                            <xsl:text>
                       Specifiche del testo originario
                </xsl:text>
                        </h2>
                        <p class="incipitiPar">
                            <br />
                            <!-- Pubblicatore -->
                            <xsl:text> Distribuito da: </xsl:text>
                            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:distributor" />
                            <br />
                            <!-- dimensione -->
                            <xsl:text> Dimensione: </xsl:text>
                            <xsl:value-of select="//tei:dim" />
                            <br />
                            <!-- layout -->
                            <xsl:text> Layout: </xsl:text>
                            <xsl:value-of select="//tei:layout" />
                            <br />
                            <xsl:text> Lingua: </xsl:text>
                            <xsl:value-of select="//tei:lang" />
                            <br />
                            <xsl:text> Condizioni: </xsl:text>
                            <xsl:value-of select="//tei:condition" />
                        </p>
                    </div>

                    <div class="cCodifica">
                        <h2 class="codifica">
                            <!-- Responsabile Cofifica -->
                            <xsl:text>    
                        Responsabile: 
                    </xsl:text>
                            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name" />
                            <br />
                            <br />
                        </h2>
                        <!-- Descrizione testo e analisi  -->
                        <p class="codificaPar">
                            <xsl:text> Descrizione del lavoro svolto: </xsl:text>
                            <xsl:value-of select="//tei:progectDesc/tei:p" />
                        </p>
                        <p class="intro">
                            <xsl:apply-templates select="//tei:projectDesc" />
                        </p>
                    </div>
                </div>

                <div class="pagina.10">
                    <h1>
                        <xsl:text>Immagine e codifica della pagina: </xsl:text>
                        <xsl:apply-templates select="//tei:opener[@xml:id='opener10']" />
                    </h1>
                    <div id="testoAFronte10">
                        
                        <img src="Morphologié_pag.22.jpg" class="immagine10" id="immagine10"></img>
                        
                    </div>
                        <xsl:value-of select="img" />
                        <div class="pagina_10">
                            <div class="visible10" id="Interpretativa10">
                                <h2>
                                    <xsl:text>Edizione Diplomatica-Interpretativa</xsl:text>
                                </h2>
                                <p>
                                    <xsl:apply-templates mode="interpretativa_10" select="//tei:div[@xml:id='div_pagina10']" />

                                </p>
                            </div>
                            <div class="invisible" id="Dichiarativa10">
                                <h2>
                                    <xsl:text>Edizione Diplomatica </xsl:text>
                                </h2>
                                <p>
                                    <xsl:apply-templates mode="diplomatica_10" select="//tei:div[@xml:id='div_pagina10']" />
                                </p>
                            </div>
                        </div>

                        <div class="bottoni">
                            <button class="bottone" id="bottonePaginaDi10">Edizione diplomatica</button>
                            <button class="bottone" id="bottonePaginaIn10">Edizione interpretativa</button>
                        </div>
                    
                </div>
                <h1>
                    <xsl:text>Immagine e codifica della pagina: </xsl:text>
                    <xsl:apply-templates select="//tei:opener[@xml:id='opener11']" />
                </h1>
                <div id="testoAFronte11">

                    <img src="Morphologié_pag.26.jpg" class="immagine11" />
                    <div id="pagina_11">


                        <div class="visible11" id="Interpretativa11">
                            <h2>
                                <xsl:text>Edizione Diplomatica</xsl:text>
                            </h2>
                            <p>

                                <xsl:apply-templates mode="diplomatica_11" select="//tei:div[@xml:id='div_pagina11']" />

                            </p>
                        </div>
                        <div class="invisible" id="Dichiarativa11">
                            <h2>
                                <xsl:text>Edizione Diplomatica-Interpretativa</xsl:text>
                            </h2>
                            <p>
                                <xsl:apply-templates mode="interpretativa_11" select="//tei:div[@xml:id='div_pagina11']" />
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
                    <xsl:apply-templates select="//tei:standOff" />
                </div>

            </body>
        </html>
    </xsl:template>


    <xsl:template match="//tei:opener[@xml:id='opener10']">
        <xsl:value-of select="tei:num" />
    </xsl:template>

    <xsl:template match="//tei:opener[@xml:id='opener11']">
        <xsl:value-of select="tei:num" />
    </xsl:template>

    <!-- le due edizioni di pagina 10  -->
    <xsl:template mode="interpretativa_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:abbr | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:orig | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:orig/tei:choice/tei:abbr | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:orig/tei:choice/tei:orig | ./tei:opener/tei:num  " />

    <xsl:template mode="diplomatica_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:expan | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:corr | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:orig/tei:choice/tei:expan | //tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:orig/tei:choice/tei:corr | ./tei:opener/tei:num" />

    <!-- le due edizioni di pagina 11 -->
    <xsl:template mode="interpretativa_11" match=" /tei:unclear | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:abbr | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:orig | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:orig/tei:choice/tei:abbr | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:orig/tei:choice/tei:orig |  ./tei:opener/tei:num | //tei:p[@xml:id='paragrafoPag11']/tei:c |.//tei:del" />

    <xsl:template mode="diplomatica_11" match="/tei:unclear | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:expan | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:corr | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:orig/tei:choice/tei:expan | //tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:orig/tei:choice/tei:corr |  ./tei:opener/tei:num | //tei:p[@xml:id='paragrafoPag11']/tei:c |.//tei:del " />

    <!-- il glossario con i termini -->
    <xsl:template match="//tei:standOff">
        <xsl:for-each select="//tei:entry">
            <h3 class="termini">
                <xsl:value-of select="tei:form/tei:orth" />
                <br />
            </h3>
            <xsl:for-each select="tei:sense/tei:def">
                <p class="semantica">
                    &#8211;
                    <xsl:value-of select="." />
                </p>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


    <!-- template output in riga interpretativa 10-->
    <xsl:template mode="interpretativa_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:lb">
        <br />
    </xsl:template>

    <!-- template output in riga diplomatica 10 -->
    <xsl:template mode="diplomatica_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:lb">
        <br />
    </xsl:template>

    <!-- template output in riga interpretativa 11-->
    <xsl:template mode="interpretativa_11" match="//tei:p[@xml:id='paragrafoPag11']/tei:lb">
        <br />
    </xsl:template>

    <!-- template output in riga diplomatica 11 -->
    <xsl:template mode="diplomatica_11" match="//tei:p[@xml:id='paragrafoPag11']/tei:lb">
        <br />
    </xsl:template>


    <!-- template output abbr diplomatica 10-->
    <xsl:template mode="diplomatica_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:abbr">
        <span style="color:green">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <!-- template output expan interpretativa 10-->
    <xsl:template mode="interpretativa_10" match="//tei:p[@xml:id='paragrafoPag10']/tei:choice/tei:expan">
        <span style="color:red">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <!-- template output abbr diplomatica 11-->
    <xsl:template mode="diplomatica_11" match="//tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:abbr">
        <span style="color:green">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <!-- template output expan interpretativa 11-->
    <xsl:template mode="interpretativa_11" match="//tei:p[@xml:id='paragrafoPag11']/tei:choice/tei:expan">
        <span style="color:red">
            <xsl:value-of select="." />
        </span>
    </xsl:template>


</xsl:stylesheet>