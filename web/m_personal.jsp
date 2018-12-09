<%@page import="include.DatosCuenta" %>
<%@page import="controller.controladorDatosCuenta" %>
<%@page import="include.TipoUsuario" %>
<%@page import="controller.controladorTipoUsuario" %>
<%@page import="controller.controladorDatosPersonales" %>
<%@page import="include.DatosPersonales" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="views/header.jsp"></jsp:include>

<%
    int id_datos=0;
    try {
        id_datos = Integer.parseInt(request.getParameter("iddatos"));
    } catch (NumberFormatException e){
        response.sendRedirect("index.jsp");
    }
    controladorDatosPersonales cdp = new controladorDatosPersonales();
    ArrayList<DatosPersonales> datosPersonales = new ArrayList<DatosPersonales>();
    datosPersonales = cdp.obtenerDatosPersonal(id_datos);

%>

<%
    controladorTipoUsuario ctp = new controladorTipoUsuario();
    ArrayList<TipoUsuario> tipoUsuarios = new ArrayList<TipoUsuario>();
    tipoUsuarios = ctp.obtenerTipoUsuarios();


    String htmlselect = "";
    htmlselect += "<select name=\"id_tipo\">\n" +"<option value=\"\" selected disabled>Elige el tipo de Usuario"+"</option>\n";
    for(int a=0; a<tipoUsuarios.size();a++){
        htmlselect += "<option value='"+tipoUsuarios.get(a).getId_tipo()+"'>"+tipoUsuarios.get(a).getNombre_tipo_usuario()+"</option>\n";
    }
    htmlselect += "</select>";
%>

<%
    controladorDatosCuenta cdc = new controladorDatosCuenta();
    ArrayList<DatosCuenta> datosCuentas = new ArrayList<DatosCuenta>();
    datosCuentas = cdc.obtenerDatosCuentas();

    String htmlselect1="";
    htmlselect1 += "<select name=\"id_usuario\">\n" +"<option value=\"\" select disable>Elige el nombre del usuario"+"</option>\n";
    for (int b=0; b<datosCuentas.size(); b++){
        htmlselect1 += "<option value='"+datosCuentas.get(b).getId_usuario()+"'>"+datosCuentas.get(b).getUsuario()+"</option>\n";
    }
    htmlselect1 +="</select>";
%>
<div class="container">
    <form class="col s12" action="/modificar_personal.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h3 class="purple-text">MODIFICA LOS DATOS PERSONALES</h3>
            </div>
            <div class="row margin">
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="iddatos">ID DATOS</label>
                    <input type="text" readonly="readonly" value="<%out.print(datosPersonales.get(0).getId_datos());%>" name="id_datos" placeholder="ID DATOS" id="iddatos" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="nombre">NOMBRE</label>
                    <input type="text" value="<%out.print(datosPersonales.get(0).getNombre());%>" name="nombre" placeholder="NOMBRE" id="nombre" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="apaterno">APELLIDO PATERNO</label>
                    <input type="text" value="<%out.print(datosPersonales.get(0).getA_paterno());%>" name="a_paterno" placeholder="APELLIDO PATERNO" id="apaterno" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="amaterno">APELLIDO MATERNO</label>
                    <input type="text" value="<%out.print(datosPersonales.get(0).getA_materno());%>" name="a_materno" placeholder="APELLIDO MATERNO" id="amaterno" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="edad">EDAD</label>
                    <input type="number" value="<%out.print(datosPersonales.get(0).getEdad());%>" name="edad" placeholder="EDAD"  id="edad" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1"></div>
                <div class="col s10">
                    <%
                        out.print(htmlselect);
                    %>
                </div>
                <div class="col s1"></div>
                <div class="row margin"></div>
                <div class="col s1"></div>
                <div class="col s10">
                    <%
                        out.print(htmlselect1);
                    %>
                </div>
                <div class="col s1"></div>
            </div>
            <div class="col s4">
            </div>
            <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s2">
            <a class="btn col s2" href="personales.jsp">Regresar</a>
        </div>
    </form>
</div>
<jsp:include page="views/footer.jsp"></jsp:include>
