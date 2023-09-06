package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.xml.bind.DatatypeConverter.parseString;
import modelo.Estudiante;
import modelo.EstudianteDAO;

@WebServlet(name = "EstudianteController", urlPatterns = {"/EstudianteController"})
public class EstudianteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EstudianteDAO estudianteDAO = new EstudianteDAO();

        String accion;
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");

        if (accion == null || accion.isEmpty()) {
            dispatcher = request.getRequestDispatcher("estudiante/index.jsp");
            List<Estudiante> listaEstudiante = estudianteDAO.listarEstudiante();
            request.setAttribute("lista", listaEstudiante);
        } else if ("Nuevo".equals(accion)) {
            dispatcher = request.getRequestDispatcher("estudiante/Nuevo.jsp");

        } else if ("Insertar".equals(accion)) {

            int Cedula = Integer.parseInt(request.getParameter("Cedula"));
            String Nombre = request.getParameter("Nombre");
            String Apellido = request.getParameter("Apellido");
            int Edad = Integer.parseInt(request.getParameter("Edad"));
            String Curso = request.getParameter("Curso");

            Estudiante estudiante = new Estudiante(Cedula, Nombre, Apellido, Edad, Curso);

            estudianteDAO.Insertar(estudiante);

            dispatcher = request.getRequestDispatcher("estudiante/index.jsp");
            List<Estudiante> listarEstudiante = estudianteDAO.listarEstudiante();
            request.setAttribute("lista", listarEstudiante);

        } else if ("modificar".equals(accion)) {

            dispatcher = request.getRequestDispatcher("estudiante/modificar.jsp");
            int Cedula =Integer.parseInt(request.getParameter("Cedula"));
            Estudiante estudiante = estudianteDAO.MostrarEstudiante(Cedula);
            request.setAttribute("estudiante", estudiante);

        } else if ("actualizar".equals(accion)) {

            int Cedula =Integer.parseInt(request.getParameter("Cedula"));
            String Nombre = request.getParameter("Nombre");
            String Apellido = request.getParameter("Apellido");
            int Edad = Integer.parseInt(request.getParameter("Edad"));
            String Curso = request.getParameter("Curso");

            Estudiante estudiante = new Estudiante(Cedula, Nombre, Apellido, Edad, Curso);
            estudianteDAO.Insertar(estudiante);

            dispatcher = request.getRequestDispatcher("estudiante/index.jsp");
            List<Estudiante> listaEstudiante = estudianteDAO.listarEstudiante();
            request.setAttribute("lista", listaEstudiante);

        } else if ("eliminar".equals(accion)) {

            int _Cedula = Integer.parseInt(request.getParameter("Cedula"));
            estudianteDAO.eliminar(_Cedula);

            dispatcher = request.getRequestDispatcher("estudiante/index.jsp");
            List<Estudiante> listaEstudiante = estudianteDAO.listarEstudiante();
            request.setAttribute("lista", listaEstudiante);
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
