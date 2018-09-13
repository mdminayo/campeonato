<%-- 
    Document   : registrarUsuario
    Created on : 11/09/2018, 06:46:23 PM
    Author     : Danilo
--%>

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Usuario usuario= new Usuario();
    usuario.setUsuario(request.getParameter("usuario"));
    usuario.setClave(request.getParameter("clave"));
    usuario.setRol(request.getParameter("rol"));
    usuario.setFoto(request.getParameter("foto"));
    
    usuario.grabar();
    response.sendRedirect("validar.jsp");


%>