<%@page import="include.TipoUsuario" %>
<%@page import="controller.controladorTipoUsuario" %>
<%@page import="controller.controladorDatosCuenta" %>
<%@page import="include.DatosCuenta" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="views/header.jsp"></jsp:include>

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
    <form class="col s12" action="/crearPersonales.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h3>NUEVOS DATOS PERSONALES</h3>
            </div>
            <div class="row margin">
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="iddatos">ID DATOS</label>
                    <input type="text" placeholder="ID DATOS" name="id_datos" id="iddatos" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="nombre">NOMBRE</label>
                    <input type="text" placeholder="NOMBRE" name="nombre" id="nombre" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="apaterno">APELLIDO PATERNO</label>
                    <input type="text" placeholder="APELLIDO PATERNO" name="a_paterno" id="apaterno" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="amaterno">APELLIDO MATERNO</label>
                    <input type="text" placeholder="APELLIDO MATERNO" name="a_materno" id="amaterno" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="edad">EDAD</label>
                    <input type="number" placeholder="EDAD"  name="edad" id="edad" required>
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
            <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s2">
            <a class="btn col s2" href="personales.jsp">Regresar</a>
        </div>
    </form>
</div>
<jsp:include page="views/footer.jsp"></jsp:include>
