<%@ page import="controller.controladorDatosCuenta" %>
<%@ page import="include.DatosCuenta" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="views/header.jsp"></jsp:include>
<%
    int id_usuario=0;
    try {
        id_usuario = Integer.parseInt(request.getParameter("idusuario"));
    } catch (NumberFormatException e){
        response.sendRedirect("index.jsp");
    }
        controladorDatosCuenta cdc = new controladorDatosCuenta();
    ArrayList<DatosCuenta> datosCuenta = new ArrayList<DatosCuenta>();
    datosCuenta = cdc.obtenerDatosCuenta(id_usuario);

%>

<div class="container">
    <form class="col s12" action="/modificar_datos.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h3>ACTUALIZAR DATOS</h3>
            </div>
            <div class="row margin">
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="idusuario">ID USUARIO</label>
                    <input type="text" readonly="readonly" value="<% out.print(datosCuenta.get(0).getId_usuario()); %>" name="idusuario"  placeholder="ID USUARIO" id="idusuario"  required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="usuario">USUARIO</label>
                    <input type="text" value="<% out.print(datosCuenta.get(0).getUsuario()); %>" name="usuario" placeholder="USUARIO" id="usuario" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="password">PASSWORD</label>
                    <input type="password" value="<% out.print(datosCuenta.get(0).getPassword()); %>" name="password" placeholder="PASSWORD" id="password" required>
                </div>
                <div class="col s1">
                </div>
            </div>
            <div class="col s4">
            </div>
            <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s2">
            <a class="btn col s2" href="datoc.jsp">Regresar</a>
        </div>
    </form>
</div>
<jsp:include page="views/footer.jsp"></jsp:include>
