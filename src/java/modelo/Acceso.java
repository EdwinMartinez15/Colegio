package modelo;

public class Acceso {

    private int edad;
    private String nombre, cedula, contraseña, cargo;

    public Acceso(int edad, String nombre, String cedula, String contraseña, String cargo) {
        this.edad = edad;
        this.nombre = nombre;
        this.cedula = cedula;
        this.contraseña = contraseña;
        this.cargo = cargo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

}