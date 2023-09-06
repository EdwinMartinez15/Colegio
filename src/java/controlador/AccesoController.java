package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Acceso;
import modelo.AccesoDAO;

@WebServlet(name = "AccesoController", urlPatterns = {"/AccesoController"})
public class AccesoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AccesoDAO AccesoDAO = new AccesoDAO();
        String accion;
        RequestDispatcher dispatcher = null;
        String nombreAcceso = null;
        accion = request.getParameter("accion");
  
        if (accion == null || accion.isEmpty()) {
            dispatcher = request.getRequestDispatcher("Acceso/login.jsp");
            request.setAttribute("mensaje", "");
        }  else if ("ingreso".equals(accion)) {
            String nombre = request.getParameter("nombre");
            String cedula = request.getParameter("cedula");
            if (AccesoDAO.ingresoEstudiante(nombre, cedula)) {
                dispatcher = request.getRequestDispatcher("estudiante/index.jsp");
            } else {
                dispatcher = request.getRequestDispatcher("Acceso/login.jsp");
                request.setAttribute("mensaje", "Usuario o contraseña incorrectos");
            }
        } else if ("regreso".equals(accion)) {
            dispatcher = request.getRequestDispatcher("index.html");
        } else {
            dispatcher = request.getRequestDispatcher("Acceso/login.jsp");
        }
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
