package servlet;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(
    name="Registro",
    urlPatterns={"/Registro"}
)

@MultipartConfig(maxFileSize=16177215)


public class Registro extends HttpServlet{

    private PrintWriter out;
    private String dbURL="jdbc:mysql://us-cdbr-iron-east-01.cleardb.net/heroku_06cf15874030348";
    private String dbUser ="b0e32b87cc7f53";
    private String dbPass="0b77eb87286b540";

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        out= response.getWriter();
        String nombre= request.getParameter("nombre");
        String username= request.getParameter("username");
        String email= request.getParameter("email");
        String password= request.getParameter("password");
        String city= request.getParameter("city");
        String country= request.getParameter("country");

        InputStream FotoPerfil=null;
        InputStream FotoPortada=null;

        Part Perfil=request.getPart("fotoperfil");
        Part Portada =request.getPart("fotoportada");
        
        if(Perfil != null)
        FotoPerfil= Perfil.getInputStream();

        if(Portada != null)
        FotoPortada = Portada.getInputStream();

        Connection conn= null;
        String message =null;
        
        try {

            conn= DriverManager.getConnection(dbURL, dbUser, dbPass);

            String query ="CALL Registrar(?,?,?,?,?,?,?);";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1,nombre);
            statement.setString(2,email);
            statement.setString(3,city);
            statement.setString(4,username);
            statement.setString(5,password);
            statement.setBlob(6,FotoPerfil);
            statement.setBlob(7,FotoPortada);

            int row = statement.executeUpdate();
            if(row>0){
               response.sendRedirect("https://gran-papw.herokuapp.com/");
            }

        } 
        catch (SQLException ex) {
            message ="ERROR: " + ex.getMessage();
            out.println("<h1>"+message+"</h1>");
        }
        finally {
            if(conn != null){
                try {
                    conn.close();
                } 
                catch (SQLException ex) {
                ex.printStackTrace();
                }
            }
        }

    }
}