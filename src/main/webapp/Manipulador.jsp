<%! 
public class Manipulador 
{
    //infromacion necesaria para conectar la base de datos 
    private String driver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://us-cdbr-iron-east-01.cleardb.net/heroku_06cf15874030348";
    private String usuario="b0e32b87cc7f53";
    private String clave="0b77eb87286b540 ";

    private Connection Conexion =null;
    private ResultSet Resultado= null;
    private Statement Sentencia = null;
    public HttpSession session;

      public Manipulador()
        {
            try
            {Conexion = DriverManager.getConnection(url,usuario,clave);}

            catch (Exception e)
            {System.out.println("Error "+ e);}
        }

    public boolean IniciarSession(String correo, String contra)
        {
            try {
                    String Query = "CALL Iniciar('"+correo+"')";
                    Sentencia = Conexion.createStatement();
                    Resultado = Sentencia.executeQuery(Query);

                    while(Resultado.next())
                    {       
                
                     if(Resultado.getString("Contrasena_Usuario").equals(base64DataString))  
                        {   
                            session.setAttribute("ID", Resultado.getString("idUsuario"));
                            session.setAttribute("FotoPerfil", Resultado.getBlob("Usuario_Perfil"));
                            session.setAttribute("Alias", Resultado.getString("Alias_Usuario"));
                            Resultado.close();
                            Sentencia.close();
                            return true;
                        }
                        else{
                            Resultado.close();
                            Sentencia.close();
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