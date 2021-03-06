<%-- 
    Document   : listadoVId.jsp
    Created on : 22-feb-2022, 1:55:32
    Author     : Benny Hammer Pérez Vásquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Página de Búsqueda de Videos</title>
        <link href="css/Estilos_listadoVid.css" rel="stylesheet" type="text/css"/>
        <link href="css/style_button.css" rel="stylesheet" media="all"/>
        <script src="https://kit.fontawesome.com/4e646a13f9.js" crossorigin="anonymous"></script>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        
        <style>
            .fondo{
                margin: 0;
                padding: 0;     
                background-image: url("");
                background-size: auto;
                background-position: center;
                font-family: sans-serif;    
                background-color: #32baf3;
               
                
            }
            
            .container1{
                background-color:silver;
                border-radius: 10px;
                padding:25px;
                margin-top: 80px
            }
            .container2{
                background-color:silver;
                
                border-radius: 10px;
                padding:25px;
                margin-top: 80px
            }
            .container3{
                background-color:silver;
                border-radius: 10px;
                padding:25px;
                margin-top: 80px
            }

        </style>
        
        
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar -->
            <nav id="sidebar">
                <div class="sidebar-header">
                   <%-- <h3>${empty userName ? '' : userName}</h3> --%>
                    <h5>Usuario: ${empty userName ? '' : userName}</h5>
                </div>
                
                <ul class="list-unstyled components  text-center">

                    <li>
                        <a href="registroVid.jsp">Subir Videos</a>
                    </li>

                    <li>
                        <a href="seguridad.jsp">Encrip & Desencrip XML</a>
                    </li>

                </ul>
                
                
                <ul class='list-unstyled CTAs  text-center'>
                    <li>
                        <a href="servletUsuarios?accion=Salir">Salir</a>
                    </li> 
                </ul>
            </nav>

            <!-- Page Content -->
            <div class="fondo   text-center" id="content">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>User profile</span>
                        </button>
                    </div>
                </nav>
                <div name="BODY" style="width:100%;" class="col-12">
                    <div>
                        <div class='list_title_header   text-center'>Videos</div>
                        
                        <% if (session.getAttribute("videos_list") == null) { %>
                            <div class='row row justify-content-md-center'>
                                <div class='container1 col-3 border border-primary m-1'>
                                    <form action="${pageContext.request.contextPath}/servletBusqVid" method="POST">
                                        <label for="author" >Autor</label>
                                        <input name="author" type="text" class="form-control" id="author" placeholder="John Doe" required>
                                        <br>
                                        <button name="action" value="search-autor" type="submit" class="button" ><i class="fa-solid fa-magnifying-glass" opacity="1"></i> Search</button>

                                    </form>
                                </div>
                                <div class='container2 col-3 border border-primary m-1   text-center'>
                                    <form action="${pageContext.request.contextPath}/servletBusqVid" method="POST">
                                        <label for="title" >Título</label>
                                        <input name="title" type="text" class="form-control" id="title" placeholder="A Random Movie 2" required>
                                        <br>
                                        <button name="action" value="search-titulo" type="submit" class="button"><i class="fa-solid fa-magnifying-glass"></i> Search</button>

                                    </form>
                                </div>
                                <div class='container3 col-3 border border-primary m-1   text-center'>
                                    <form action="${pageContext.request.contextPath}/servletBusqVid" method="POST">
                                        <label for="date" style="float: left">Fecha de Creación</label>
                                        <input name="date" type="date" class="form-control" id="start" value ="2018-07-22" min= "1900-01-01">                                   
                                        <br>
                                        <button name="action" value="search-fecha" type="submit" class="button"><i class="fa-solid fa-magnifying-glass"></i> Search</button>

                                    </form>
                                </div>
                            </div>
                        <% }else{ %>
                            <form action="${pageContext.request.contextPath}/servletBusqVid" method="post">
                                <button name="action" value="change-search" type="submit" class="btn btn-primary btn-sm m-2">Change Video Search</button>
                            </form>
                            <table class="table   text-center">
                            <thead>
                                <tr>
                                    <th scope="col">Título</th>
                                    <th scope="col">Autor</th>
                                    <th scope="col">Duracion</th>
                                    <th scope="col">Descripcion</th>
                                    <th scope="col">Reproducciones</th>
                                    <th scope="col">Formato</th>
                                    <th scope="col">Fecha de Creación</th>
                                    <th scope="col">Enlace</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="video" items="${videos_list}">
                                    <tr>
                                        <td>${video.getTitulo()}</td> 
                                        <td>${video.getAutor()}</td>
                                        <td>${video.getDuracion()}</td> 
                                        <td>${video.getDescripcion()}</td>
                                        <td>${video.getReproducciones()}</td>
                                        <td>${video.getFormato()}</td>
                                        <td>${video.getFecha_creacion()}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${video.getEnlace()!='N/A'}">
                                                    <form action="${pageContext.request.contextPath}/servletBusqVid" method="post">
                                                        <button name="action" value="play-video" data-toggle="tooltip" title="${video.getEnlace()}" type="submit" class="btn btn-primary btn-sm m-2">Play video</button>
                                                        <input type="hidden" name="videoEnlace" value="${video.getEnlace()}" />
                                                        <input type="hidden" name="videoFormato" value="${video.getFormato()}" />
                                                        <input type="hidden" name="videoTitulo" value="${video.getTitulo()}" />
                                                        <input type="hidden" name="reproducciones" value="${video.getReproducciones()}" />
                                                    </form>
                                                </c:when>
                                                <c:otherwise>
                                                    <button class="btn btn-secondary btn-sm m-2" disabled>Ruta no Definida</button>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
    
                                    </tr> 
                                </c:forEach>
                            </tbody>
                        </table>
                        <%} %>
                    </div>
                </div>
            </div>
        </div>       


        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Popper.JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('closed');
                });
            });
        </script>


        });
    </body>
</html>