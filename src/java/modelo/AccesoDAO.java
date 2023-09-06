package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccesoDAO {

    Connection conexion;

    public AccesoDAO() {
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }


    public boolean ingresoEstudiante(String _nombre, String _contraseña) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            String nombre = null;
            String contraseña = null;
            ps = conexion.prepareStatement("Select nombre, contraseña from acceso where nombre=? and contraseña=?");
            ps.setString(1, _nombre);
            ps.setString(2, _contraseña);
            rs = ps.executeQuery();
            while (rs.next()) {
                nombre = rs.getString("Nombre");
                contraseña = rs.getString("Contraseña");
            }
            return _nombre.equals(nombre) && _contraseña.equals(contraseña);
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;

        }
    }

}
