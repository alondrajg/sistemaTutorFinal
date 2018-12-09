<jsp:include page="views/header.jsp"></jsp:include>
<div class="container">
    <form class="col s12" action="/crearDatos.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h3>NUEVA CUENTA</h3>
            </div>
            <div class="row margin">
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="idusuario">ID USUARIO</label>
                    <input type="text" name="idusuario" placeholder="ID USUARIO" id="idusuario" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="usuario">USUARIO</label>
                    <input type="text" name="usuario" placeholder="USUARIO" id="usuario" required>
                </div>
                <div class="col s1">
                </div>
                <div class="row margin"></div>
                <div class="col s1">
                </div>
                <div class="col s10">
                    <label for="password">PASSWORD</label>
                    <input type="password" name="password" placeholder="PASSWORD" id="password" required>
                </div>
                <div class="col s1">
                </div>
            </div>
            <div class="col s4">
            </div>
            <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s2">
            <a class="btn col s2" href="index.jsp">Regresar</a>
        </div>
    </form>
</div>
<jsp:include page="views/footer.jsp"></jsp:include>
