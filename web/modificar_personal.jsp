<%@ page import="include.DatosPersonales" %>
<%@ page import="controller.controladorDatosPersonales" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String nombre = request.getParameter("nombre");
    String a_paterno = request.getParameter("a_paterno");
    String a_materno = request.getParameter("a_materno");


    int id_datos = 0;
    int edad = 0;
    int id_tipo = 0;
    int id_usuario = 0;

    try {
        id_datos = Integer.parseInt(request.getParameter("id_datos"));
        edad = Integer.parseInt(request.getParameter("edad"));
        id_tipo = Integer.parseInt(request.getParameter("id_tipo"));
        id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
    } catch (NumberFormatException e){

    }

    DatosPersonales nuevoDatosPersonales = new DatosPersonales(id_datos, nombre, a_paterno, a_materno, edad, id_tipo, id_usuario);
    controladorDatosPersonales cdp = new controladorDatosPersonales();
    if(cdp.actualizarDatosPersonales(nuevoDatosPersonales)) {
        response.sendRedirect("personales.jsp");
    } else {
        response.sendRedirect("m_personal.jsp?iddatos=" +id_datos);
    }
%>
