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

    

        
}
%>