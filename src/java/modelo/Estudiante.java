package modelo;

public class Estudiante {

    String Nombre, Apellido, Curso ;
    int Edad, Cedula;

    public Estudiante( int Cedula, String Nombre, String Apellido,int Edad, String Curso) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Curso = Curso;
        this.Edad = Edad;
        this.Cedula = Cedula;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this. Apellido = Apellido;
    }

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public int getCedula() {
        return Cedula;
    }

    public void setCedula(int Cedula) {
        this.Cedula = Cedula;
    }
    
}
