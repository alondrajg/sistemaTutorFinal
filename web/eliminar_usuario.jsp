<%@page import="controller.controladorDatosPersonales" %>
<%
    int id_datos = 0;
    try {
        id_datos = Integer.parseInt(request.getParameter("iddatos"));
    }catch (NumberFormatException e){

    }
    controladorDatosPersonales cdp= new controladorDatosPersonales();
    if (cdp.eliminarDatosPersonales(id_datos)){
        response.sendRedirect("personales.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>
