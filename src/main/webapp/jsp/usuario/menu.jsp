

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else {%>

<div class="margen-superior">
<% if (oUsuario.getId_tipousuario() == 1) { %>
    <div class="tile-group six">
        <div class="tile-group-title fg-black">Trabajo</div>
        <div class="tile double bg-cyan">
            <div class="tile-content icon">
                <i class="icon-user-3"></i>
            </div>
            <div class="tile-status">
                <span class="name">Empleados</span>
            </div>
        </div> <!-- end tile -->

        <a class="tile double bg-violet">
            <div class="tile-content icon">
                <i class="icon-briefcase"></i>
            </div>
            <div class="brand">
                <div class="label">Centros</div>
            </div>
        </a> <!-- end tile -->

        <div class="tile  bg-brown">
            <div class="tile-content icon">
                <i class="icon-folder"></i>
            </div>
            <div class="brand">
                <div class="label">Clientes</div>
            </div>
        </div> <!-- end tile -->

        <!-- small tiles -->
        <a href="#" class="tile half bg-darkRed">
            <div class="tile-content icon">
                <span class="icon-cart"></span>
            </div>
        </a>

        <a href="#" class="tile half bg-darkOrange">
            <div class="tile-content icon">
                <span class="icon-calendar"></span>
            </div>
        </a>

        <a href="#" class="tile half bg-green">
            <div class="tile-content icon">
                <span class="icon-printer"></span>
            </div>
        </a>

        <a href="#" class="tile half bg-darkPink" data-click="transform">
            <div class="tile-content icon">
                <span class=" icon-accessibility-2"></span>
            </div>
        </a>
        <!-- end small tiles -->

        <a class="tile double double-vertical bg-steel" data-click="transform">
            <div class="tile-content" style="background: url(images/clouds2.png)">
                <div class="padding10">
                    <h1 class="fg-white ntm">26&deg;</h1>
                    <h2 class="fg-white no-margin">Valencia</h2>
                    <h5 class="fg-white no-margin">Nublado</h5>
                    <p class="tertiary-text fg-white no-margin">Hoy</p>
                    <p class="tertiary-text fg-white">63&deg;/55&deg; Mas despejado</p>
                    <p class="tertiary-text fg-white no-margin">Mañana</p>
                    <p class="tertiary-text fg-white">64&deg;/54&deg; Mas despejado</p>
                </div>

            </div>
            <div class="tile-status">
                <div class="label">Weather</div>
            </div>
        </a> <!-- end tile -->

        <div class="tile double bg-darkPink">
            <div class="tile-content icon">
                <i class="icon-bookmark-4"></i>
            </div>
        </div> <!-- end tile -->

        <a href="#" class="tile bg-lightBlue" data-click="transform">
            <div class="tile-content icon">
                <span class="icon-IE"></span>
            </div>
            <div class="brand">
                <div class="label">Internet Explorer</div>
            </div>
        </a>

        <a href="#" class="tile bg-darkOrange" data-click="transform">
            <div class="tile-content icon">
                <span class="icon-help"></span>
            </div>
            <div class="brand">
                <div class="label">Help+Tips</div>
            </div>
        </a>

        <a class="tile double bg-lightBlue" data-click="transform">
            <div class="tile-content icon">
                <i class="icon-play"></i>
            </div>
            <div class="brand">
                <div class="label">Rutina</div>
            </div>
        </a>

        <a class="tile double bg-darkGreen" data-click="transform">
            <div class="tile-content icon">
                <span class="icon-cart-2"></span>
            </div>
            <div class="brand">
                <div class="label">Cobros</div>
            </div>
        </a>
    </div> <!-- End group -->

    <div class="tile-group double">
        <div class="tile-group-title fg-black">Panel de Administracion</div>
        <a class="tile half bg-darkBlue" href="jsp#/usuario">
            <div class="tile-content icon">
                <i class="icon-cc-by"></i>
            </div>
        </a>
        <a class="tile half bg-darkGreen">
            <div class="tile-content icon">
                <i class="icon-address-book"></i>
            </div>
        </a>
        <a class="tile half bg-darkPink">
            <div class="tile-content icon">
                <i class="icon-cube"></i>
            </div>
        </a>
        <a class="tile half bg-orange">
            <div class="tile-content icon">
                <i class="icon-glasses"></i>
            </div>
        </a>
        <a class="tile half bg-lightBlue">
            <div class="tile-content icon">
                <i class="icon-stats-2"></i>
            </div>
        </a>
        <a class="tile half bg-darkRed">
            <div class="tile-content icon">
                <i class="icon-cone"></i>
            </div>
        </a>
    </div> <!-- End tile group -->
<% }%>
</div>

<% }%>

