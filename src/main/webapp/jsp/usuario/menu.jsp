

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación.</h4>
<% } else {%>

<div class="margen-superior">
<% if (oUsuario.getId_tipousuario() == 1) { %>
    
<% }%>
</div>

<% }%>

