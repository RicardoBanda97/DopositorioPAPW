<%@page import="java.sql.*, java.net.*"%>
<%@page import="java.util.ArrayList"%>
<%@ include file='Manipulador.jsp'%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Manipulador Conn = new Manipulador();
    Conn.session=request.getSession();

    try {
        if(Conn.IniciarSession(request.getParameter("user"), request.getParameter("password"))==true)
        {
   out.println(Conn.Query);
        }

        else
        {
   out.println(Conn.Query);
        }
    } catch (Exception e) {
        //TODO: handle exception
    }

%>