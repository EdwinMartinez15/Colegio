package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EstudianteDAO {

    Connection conexion;

    public EstudianteDAO() {
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }

    public List<Estudiante> listarEstudiante() {
        PreparedStatement ps;
        ResultSet rs;
        List<Estudiante> lista = new ArrayList<>();
        try {
            ps = conexion.prepareStatement("Select * from estudiante");
            rs = ps.executeQuery();
            while (rs.next()) {

                int Cedula = rs.getInt("Cedula");
                String Nombre = rs.getString("Nombre");
                String Apellido = rs.getString("Apellido");
                int Edad = rs.getInt("Edad");
                String Curso = rs.getString("Curso");

                Estudiante estudiante = new Estudiante(Cedula, Nombre, Apellido, Edad, Curso);
                lista.add(estudiante);

            }
            return lista;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;

        }
    }

    public Estudiante MostrarEstudiante(int _Cedula) {
        PreparedStatement ps;
        ResultSet rs;
        Estudiante estudiante = null;
        try {
            ps = conexion.prepareStatement("Select *  from estudiante where Cedula=?");
            ps.setInt(1, _Cedula);
            rs = ps.executeQuery();
            while (rs.next()) {
                int Cedula = rs.getInt("Cedula");
                String Nombre = rs.getString("Nombre");
                String Apellido = rs.getString("Apellido");
                int Edad = rs.getInt("Edad");
                String Curso = rs.getString("Curso");
                estudiante = new Estudiante(Cedula, Nombre, Apellido, Edad, Curso);
            }

            return estudiante;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;

        }
    }

    public boolean Insertar(Estudiante estudiante) {
        PreparedStatement ps;

        try {
            ps = conexion.prepareStatement("INSERT INTO estudiante( Cedula, Nombre, Apellido, Edad, Curso) VALUES (?,?,?,?,?)");
            ps.setInt(1, estudiante.getCedula());
            ps.setString(2, estudiante.getNombre());
            ps.setString(3, estudiante.getApellido());
            ps.setInt(4, estudiante.getEdad());
            ps.setString(5, estudiante.getCurso());

            ps.execute();
            return true;
        } catch (SQLException e) {
            System.err.println(e.toString());
            return false;
        }
    }

    public boolean actualizar(Estudiante estudiante) {
        PreparedStatement ps;

        try {
            ps = conexion.prepareStatement("UPDATE estudiante set Nombre=?, Apellido=?,Cedula=?, Edad=?,Curso=? WHERE Cedula=? ");
            
           
            ps.setString(1, estudiante.getNombre());
            ps.setString(2, estudiante.getApellido());
            ps.setInt(3, estudiante.getCedula());
            ps.setInt(4, estudiante.getEdad());
            ps.setString(5, estudiante.getCurso());
            ps.setInt(6, estudiante.getCedula());
            ps.execute();

            return true;
        } catch (SQLException e) {
            System.err.println(e.toString());
            return false;
        }
    }

    public boolean eliminar(int _Cedula) {
        PreparedStatement ps;

        try {
            ps = conexion.prepareStatement("DELETE from estudiante where Cedula=? ");
            ps.setInt(1, _Cedula);
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.err.println(e.toString());
            return false;
        }
    }

}
