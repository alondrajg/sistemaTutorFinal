<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.DatosCuenta" %>
<%@ page import="controller.controladorDatosCuenta" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3 class="brown-text">Datos Cuenta</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="datos.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>ID USUARIO</th>
                    <th>USUARIO</th>
                    <th>PASSWORD</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladorDatosCuenta cdc = new controladorDatosCuenta();
                    int contador = 0;
                    ArrayList<DatosCuenta> datosCuentas = new ArrayList<DatosCuenta>();
                    datosCuentas = cdc.obtenerDatosCuentas();
                    if(datosCuentas.size() > 0){
                        for(int a=0; a<datosCuentas.size();a++){
                            htmlcode += "<tr><td>" + datosCuentas.get(a).getId_usuario()
                                    + "</td><td>" + datosCuentas.get(a).getUsuario()
                                    + "</td><td>" + datosCuentas.get(a).getPassword()
                                    + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_datos.jsp?idusuario="+datosCuentas.get(a).getId_usuario()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"eliminarDatosCuenta("+datosCuentas.get(a).getId_usuario()+")\"><i class=\"material-icons\">delete</i></a>"
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
