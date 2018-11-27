<%! 
public class Manipulador 
{
    //infromacion necesaria para conectar la base de datos 
    private String driver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://us-cdbr-iron-east-01.cleardb.net/heroku_06cf15874030348";
    private String usuario="b0e32b87cc7f53";
    private String clave="0b77eb87286b540 ";


    private Connection conn =null;
    private ResultSet result= null;
    private Statement stmt = null;
    public HttpSession session;
     public String Query ;
      public Manipulador()
        {
            try
            {conn = DriverManager.getConnection(url,usuario,clave);}

            catch (Exception e)
            {System.out.println("Error "+ e);}
        }

    public boolean IniciarSession(String correo, String contra)
        {
            try {
                    Query = "CALL Iniciar('"+correo+"')";
                    stmt = conn.createStatement();
                    result = stmt.executeQuery(Query);
                    while(result.next())
                    {       
                     if(result.getString("Contrasena").equals(contra))  
                        {   
                            session.setAttribute("ID", result.getString("idUsuario"));
                            session.setAttribute("FotoPerfil", result.getBlob("Usuario_Perfil"));
                            session.setAttribute("Alias", result.getString("Alias_usuario"));
                            result.close();
                            stmt.close();
                            return true;
                        }
                        else{
                            result.close();
                            stmt.close();
                            return false;
                        }
                    }
                }
                
            catch (Exception e) 
            {System.out.println("Error "+ e);}

            return false;
        }  

        
}
%>