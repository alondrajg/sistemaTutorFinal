<%@ page import="controller.controladorDatosCuenta"%>
<%
int id_usuario = 0;
    try {
        id_usuario = Integer.parseInt(request.getParameter("idusuario"));
    }catch (NumberFormatException e){

    }
controladorDatosCuenta cdc = new controladorDatosCuenta();
if(cdc.eliminarDatosCuenta(id_usuario)){
response.sendRedirect("datoc.jsp");
} else {
response.sendRedirect("index.jsp");
}
%>