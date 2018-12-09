<%@ page import="include.DatosCuenta" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controladorDatosCuenta" %><%

    int id_usuario = 0;
    String usuario = request.getParameter("usuario");
    String password = request.getParameter("password");

    try {
        id_usuario = Integer.parseInt(request.getParameter("idusuario"));
    } catch (NumberFormatException e){

    }

    DatosCuenta nuevaDatosCuenta = new DatosCuenta(id_usuario, usuario, password);

    controladorDatosCuenta cdc = new controladorDatosCuenta();
    if(cdc.actualizarDatosCuenta(nuevaDatosCuenta)) {
        response.sendRedirect("datoc.jsp");
    } else {
        response.sendRedirect("m_datos.jsp?idusuario=" + id_usuario);
    }
%>