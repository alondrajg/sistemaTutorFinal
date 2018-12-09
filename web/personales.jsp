<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.DatosPersonales" %>
<%@ page import="controller.controladorDatosPersonales" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Datos Personales</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="personal.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>ID DATOS</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO PATERNO</th>
                    <th>APELLIDO MATERNO</th>
                    <th>EDAD</th>
                    <th>ID TIPO</th>
                    <th>ID USUARIO</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladorDatosPersonales cdp = new controladorDatosPersonales();
                    int contador = 0;
                    ArrayList<DatosPersonales> datosPersonales = new ArrayList<DatosPersonales>();
                    datosPersonales = cdp.obtenerDatosPersonales();
                    if(datosPersonales.size() > 0){
                        for(int b=0; b<datosPersonales.size();b++){
                            htmlcode += "<tr><td>" + datosPersonales.get(b).getId_datos()
                                    + "</td><td>" + datosPersonales.get(b).getNombre()
                                    + "</td><td>" + datosPersonales.get(b).getA_paterno()
                                    + "</td><td>" + datosPersonales.get(b).getA_materno()
                                    + "</td><td>" + datosPersonales.get(b).getEdad()
                                    + "</td><td>" + datosPersonales.get(b).getId_tipo()
                                    + "</td><td>" + datosPersonales.get(b).getId_usuario()
                                    + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_personal.jsp?iddatos="+datosPersonales.get(b).getId_datos()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"eliminarDatosPersonales("+datosPersonales.get(b).getId_datos()+")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen datos</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
