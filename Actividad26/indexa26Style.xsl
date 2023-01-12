<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
    <!ENTITY copy "entity-value">
]>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Lo País</title>
                <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/"/>
                <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
                <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180"/>
                <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png"/>
                <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png"/>
                <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json"/>
                <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9"/>
                <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico"/>
                <style>
          .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
          }
    
          @media (min-width: 768px) {
            .bd-placeholder-img-lg {
              font-size: 3.5rem;
            }
          }
    
          .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
          }
    
          .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
          }
    
          .bi {
            vertical-align: -.125em;
            fill: currentColor;
          }
    
          .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
          }
    
          .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
          }
                </style>
            </head>

            <body>
                <!--Cabecera de color gris oscuro, lo utilizo como información personal y contextualización del trabajo-->
                <header>
                    <div class="collapse bg-dark" id="navbarHeader">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-md-7 py-4">
                                    <h4 class="text-white">Información</h4>
                                    <p class="text-muted">Actividad 26 de Lenguaje de Marcas, 1r Dam. El objetivo es transformar un archivo RSS en un HTML utilizando XSL para que se vea como la portada de un periódico</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>

                <main>
                    <section class="py-5 text-center container">
                        <div class="row py-lg-5">
                            <div class="col-lg-6 col-md-8 mx-auto">
                                <!--Zona del título, contiene el título, la descripción, fecha y otros datos únicos-->
                                <h1 class="fw-light">
                                    <xsl:value-of select="rss/channel/title"/>
                                </h1>
                                <p class="lead text-muted">
                                    <xsl:value-of select="rss/channel/description"/>
                                </p>
                                <p>
                                    <a href="{rss/channel/link}" class="btn btn-secondary my-2">Página Principal</a>
                                    <br/>
                                    <p>
                                        <xsl:value-of select="rss/channel/lastBuildDate"/>
                                        <xsl:value-of select="rss/channel/language"/>
                                    </p>
                                </p>
                            </div>
                        </div>
                    </section>

                    <div class="album py-5 bg-light">
                        <div class="container">
                            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                                <xsl:for-each select="rss/channel/item">
                                    <div class="col">
                                        <div class="card shadow-sm">
                                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                                <title>Placeholder</title>
                                                <rect width="100%" height="100%" fill="#55595c"/>
                                                <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text>
                                                <image src="{@url}" alt="{media:description}" width="100%" height="100%"/>
                                            </svg>
                                            <div class="card-body">
                                                <p class="card-text">
                                                    <xsl:value-of select="title"/>
                                                </p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <a href="{link}">Leer más</a>
                                                    </div>
                                                    <small class="text-muted">
                                                        <xsl:value-of select="pubDate"/>
                                                    </small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </main>

                <footer class="text-muted py-5">
                </footer>
                <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>