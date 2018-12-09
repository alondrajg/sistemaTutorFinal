package include;

public class TipoUsuario {
    private int id_tipo;
    private String nombre_tipo_usuario;

    public TipoUsuario(int id_tipo, String nombre_tipo_usuario){
        this.id_tipo=id_tipo;
        this.nombre_tipo_usuario=nombre_tipo_usuario;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    public String getNombre_tipo_usuario() {
        return nombre_tipo_usuario;
    }

    public void setNombre_tipo_usuario(String nombre_tipo_usuario) {
        this.nombre_tipo_usuario = nombre_tipo_usuario;
    }
}
