<%@page import="java.sql.*, java.net.*"%>
<%@page import="java.util.ArrayList"%>
<%@ include file='Manipulador.jsp'%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

     String driver="com.mysql.jdbc.Driver";
     String url="jdbc:mysql://us-cdbr-iron-east-01.cleardb.net/heroku_06cf15874030348";
     String usuario="b0e32b87cc7f53";
     String clave="0b77eb87286b540 ";


     Connection conn =null;
     ResultSet result= null;
     Statement stmt = null;

    Manipulador Conn = new Manipulador();
    Conn.session=request.getSession();

    try {

    conn = DriverManager.getConnection(url,usuario,clave);
    String Query = "CALL Iniciar('"+request.getParameter("user")+"');";
                    stmt = conn.createStatement();
                    result = stmt.executeQuery(Query);
                    while(result.next())
                    {       
                     if(result.getString("Contrasena").equals(request.getParameter("password")))
                        {   
                            session.setAttribute("ID", result.getString("idUsuario"));
                            session.setAttribute("FotoPerfil", result.getBlob("Usuario_Perfil"));
                            session.setAttribute("Alias", result.getString("Alias_usuario"));
                            result.close();
                            stmt.close();
                        }
                        else{
                            result.close();
                            stmt.close();
                        }
                    }

    } catch (Exception e) {
System.out.println("Error "+ e);    }

%>