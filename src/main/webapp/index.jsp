<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>


<%@page import="net.daw.helper.EstadoHelper"%>
<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<%@page import="net.daw.helper.AppInformationHelper"%>
<%UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Ajax Yield</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Metro Bootstrapt -->
        <link rel="stylesheet" href="css/metro-bootstrap.min.css">
        <link rel="stylesheet" href="css/metro-bootstrap-responsive.min.css">
        <link href="css/iconFont.min.css" rel="stylesheet">

        <% if (user != null) {%>
        <link rel="stylesheet" href="css/skin/<%=user.getSkin()%>.css"> 
        <% } else {%>
        <link rel="stylesheet" href="css/skin/main.css">
        <% }%>
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:100' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dancing+Script:700' rel='stylesheet' type='text/css'>
        
        <!-- <link rel="stylesheet" href="css/jquery-ui.css"> -->
        
        <!-- FAlTA --><link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/bootstrapValidator.min.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css"  />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!--[if lt IE 7]>
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

        <!-- Fixed navbar -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand btn btn-inverse view" href="jsp?ob=usuario&op=menu"><i class="icon-home"></i></a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="app" class="navbar-brand" href="jsp"><%=AppInformationHelper.getAppName()%></a>
                </div>
                <div class="collapse navbar-collapse">

                    <ul class="nav navbar-nav">
                        <%if (user != null) {%>
                        <jsp:include page="jsp/menuSuperior.jsp" /> 
                        <% }%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <jsp:include page="jsp/usuario/infologin.jsp" />
                    </ul>

                </div><!--/.nav-collapse -->
            </div>
        </div>


        <% if (user != null) {%>


        <div class="row">
            <!--<div class="col-md-2" id="menuLateral">
            <jsp:include page="jsp/menuLateral.jsp" />
        </div>-->
            <div class="col-md-10 col-md-offset-1 metro">
                <div id="indexContenido"></div>
                <div id="indexContenidoJsp">
                    <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" id="contenidoParseado"></div>   
        </div>
        <div class="row">
            <div class="col-md-12"><hr><footer><p class="pull-right">&copy; <%=EstadoHelper.getAutor()%>: <%=EstadoHelper.getMailAutor()%> (<%=EstadoHelper.getAnyo()%>) - <%=EstadoHelper.getLicenciaLink()%></p></footer></div> 
        </div>


        <% } else {%>


        <div class="row">
            <div class="col-md-12">
                <div id="indexContenidoJsp">
                    <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" id="contenidoParseado"></div>   
        </div>
        <div class="row">
            <div class="col-md-12"><hr><footer><p class="pull-right">&copy; <%=EstadoHelper.getAutor()%>: <%=EstadoHelper.getMailAutor()%> (<%=EstadoHelper.getAnyo()%>) - <%=EstadoHelper.getLicenciaLink()%></p></footer></div>   
        </div>



        <% }%>

        <!-- carga de javascript   -->

        <script type="text/javascript"  src="./js/vendor/jquery-1.11.1.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/bootstrap.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

        <script type="text/javascript"  src="./js/vendor/moment.js"></script>
        <script type="text/javascript"  src="./js/vendor/moment.locale.es.js"></script>
        <script type="text/javascript"  src="./js/vendor/bootstrap-datetimepicker.min.js"></script>

        <script type="text/javascript"  src="./js/vendor/path.min.js"></script> 
        <script type="text/javascript"  src="./js/vendor/bootstrapValidator.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/language/es_ES.js"></script>
        <script type="text/javascript"  src="./js/vendor/creole-parser.js"></script>
        
        <script type="text/javascript"  src="./js/vendor/metro.min.js"></script>


        <!--
        <script type="text/javascript"  src="./js/vendor/jquery-ui.js"></script>
        <script src="./js/vendor/jquery.validate.min.js"></script>
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        -->


        <script src="js/generic/view.js" charset="UTF-8"></script>    
        <script src="js/generic/param.js" charset="UTF-8"></script>
        <script src="js/generic/ajax.js" charset="UTF-8"></script>
        <script src="js/generic/util.js" charset="UTF-8"></script>
        <script src="js/generic/model.js" charset="UTF-8"></script>        
        <script src="js/generic/control.js" charset="UTF-8"></script> 
        <script src="js/generic/initialization.js" charset="UTF-8"></script>

        <script type="text/javascript">
            var path = '<%=request.getContextPath()%>';
        </script>

        <script src="js/specific/usuario/control.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/model.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/view.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/routes.js" charset="UTF-8"></script>

        <script src="js/specific/tipousuario/control.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/model.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/view.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/routes.js" charset="UTF-8"></script>

        <script type="text/javascript">

            //path = '<%=request.getContextPath()%>';

            $(document).ready(function () {

                //$('#indexContenidoJsp').addClass('animated slideInDown');
                //$('#menuSuperior').addClass('animated slideInLeft');
                //$('#menuLateral').addClass('animated slideInRight');

                inicializacion();

                fUsuarioRoutes();
                fTipousuarioRoutes();

                Path.listen();

            });

        </script>
    </body>
</html>

