<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>VECNA CORE | Sistema</title>
                <link rel="stylesheet" href="style.css" />
                <style>
                    .sistema-wrap {
                    max-width: 1400px;
                    margin: 0 auto;
                    padding: 5rem 5%;
                    }

                    .intro-sistema {
                    margin-bottom: 2.5rem;
                    text-align: center;
                    }

                    .intro-sistema p {
                    color: #f1f5f9;
                    max-width: 760px;
                    margin: 1rem auto 0;
                    }

                    .sector-panel {
                    margin-top: 2rem;
                    padding: 1.8rem;
                    border-radius: 18px;
                    background: rgba(10, 14, 24, 0.72);
                    border: 1px solid rgba(255,255,255,0.12);
                    box-shadow: 0 16px 40px rgba(0,0,0,0.35);
                    backdrop-filter: blur(10px);
                    }

                    .sector-titulo {
                    margin-bottom: 1.2rem;
                    padding-left: 14px;
                    border-left: 4px solid #ff0015;
                    color: #ff0015;
                    font-size: 1.4rem;
                    }

                    .tabla-datos {
                    width: 100%;
                    border-collapse: collapse;
                    overflow: hidden;
                    border-radius: 14px;
                    background: rgba(28, 35, 54, 0.55);
                    }

                    .tabla-datos th {
                    background: rgba(255, 0, 21, 0.16);
                    color: #ff0015;
                    padding: 14px;
                    text-align: left;
                    text-transform: uppercase;
                    font-size: 0.9rem;
                    letter-spacing: 1px;
                    border-bottom: 1px solid rgba(255, 0, 21, 0.35);
                    }

                    .tabla-datos td {
                    padding: 14px;
                    border-bottom: 1px solid rgba(255,255,255,0.08);
                    color: #f1f5f9;
                    vertical-align: middle;
                    }

                    .tabla-datos tr:hover td {
                    background: rgba(255,255,255,0.025);
                    }

                    .ip-tag {
                    display: inline-block;
                    padding: 0.3rem 0.55rem;
                    border-radius: 999px;
                    background: rgba(255,255,255,0.06);
                    border: 1px solid rgba(255,255,255,0.08);
                    color: #f1f5f9;
                    }

                    .status-tag {
                    display: inline-block;
                    padding: 0.45rem 0.75rem;
                    border-radius: 999px;
                    font-size: 0.78rem;
                    font-weight: bold;
                    letter-spacing: 0.8px;
                    }

                    .OPERATIVO,
                    .SINCRONIZADO,
                    .PROTEGIDO {
                    background: rgba(0, 255, 136, 0.15);
                    color: #00ff88;
                    border: 1px solid rgba(0,255,136,0.25);
                    }

                    .ALERTA {
                    background: rgba(255, 0, 21, 0.16);
                    color: #ff4050;
                    border: 1px solid rgba(255,0,21,0.32);
                    box-shadow: 0 0 10px rgba(255,0,21,0.2);
                    animation: blink 1s infinite;
                    }

                    @keyframes blink {
                    50% { opacity: 0.6; }
                    }

                    @media (max-width: 900px) {
                    .tabla-datos,
                    .tabla-datos thead,
                    .tabla-datos tbody,
                    .tabla-datos th,
                    .tabla-datos td,
                    .tabla-datos tr {
                    display: block;
                    width: 100%;
                    }

                    .tabla-datos thead {
                    display: none;
                    }

                    .tabla-datos tr {
                    margin-bottom: 1rem;
                    background: rgba(255,255,255,0.02);
                    border: 1px solid rgba(255,255,255,0.08);
                    border-radius: 12px;
                    overflow: hidden;
                    }

                    .tabla-datos td {
                    border-bottom: 1px solid rgba(255,255,255,0.06);
                    }

                    .tabla-datos td::before {
                    display: block;
                    margin-bottom: 0.35rem;
                    color: #94a3b8;
                    font-size: 0.8rem;
                    text-transform: uppercase;
                    letter-spacing: 1px;
                    }

                    .tabla-datos td:nth-child(1)::before { content: "ID"; }
                    .tabla-datos td:nth-child(2)::before { content: "Categoría"; }
                    .tabla-datos td:nth-child(3)::before { content: "Modelo"; }
                    .tabla-datos td:nth-child(4)::before { content: "IP"; }
                    .tabla-datos td:nth-child(5)::before { content: "Estado"; }
                    }
                </style>
            </head>

            <body>
                <nav>
                    <a href="index.html" class="logotipo">VECNA CORE</a>
                    <ul>
                        <li>
                            <a href="index.html">EL NEXO</a>
                        </li>
                        <li>
                            <a href="servicios.html">DOMINIOS</a>
                        </li>
                        <li>
                            <a href="infraestructura.html">LA COLMENA</a>
                        </li>
                        <li>
                            <a href="datos.xml" class="activo">SISTEMA</a>
                        </li>
                        <li>
                            <a href="formacion.html">ACADEMIA</a>
                        </li>
                        <li>
                            <a href="contacto.html">CONEXIÓN</a>
                        </li>
                    </ul>
                </nav>

                <main class="sistema-wrap animado">
                    <section class="intro-sistema">
                        <p class="eyebrow centrado">TERMINAL DE DATOS CRÍTICOS</p>
                        <h2 class="titulo-seccion titulo-gigante">INVENTARIO DE RED</h2>
                        <p>
                            Registro estructurado del ecosistema VECNA CORE. Cada sector contiene
                            los dispositivos esenciales para la continuidad operativa del sistema.
                        </p>
                    </section>

                    <xsl:for-each select="infraestructura/sector">
                        <section class="sector-panel">
                            <h3 class="sector-titulo">
                                <xsl:value-of select="@id" />
                                <xsl:text> · </xsl:text>
                                <xsl:value-of select="@nombre" />
                            </h3>

                            <table class="tabla-datos">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Categoría</th>
                                        <th>Modelo</th>
                                        <th>IP</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:for-each select="dispositivo">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="@id" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="@categoria" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="modelo" />
                                            </td>
                                            <td>
                                                <span class="ip-tag">
                                                    <xsl:value-of select="ip_gestion" />
                                                </span>
                                            </td>
                                            <td>
                                                <span class="status-tag {@estado}">
                                                    <xsl:choose>
                                                        <xsl:when test="estado='ALERTA'">⚠ <xsl:value-of
                                                                select="estado" /></xsl:when>
                                                        <xsl:otherwise>● <xsl:value-of
                                                                select="estado" /></xsl:otherwise>
                                                    </xsl:choose>
                                                </span>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </section>
                    </xsl:for-each>
                </main>

                <footer>
                    <p>VECNA CORE © 2026 | Terminal de Datos Críticos</p>
                    <p>Pedro Hosannah | Sergio Valiente | Hugo López</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>