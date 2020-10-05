<%-- 
    Document   : index
    Created on : 5 de out de 2020, 17:37:07
    Author     : biancasobral
--%>

<%@page import="br.edu.fatec.poo.avaliacao.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String ementa;
    int ciclo;
    int nota;
    
   Disciplina disciplina = new Disciplina();
           
   
   try {
       ciclo = Integer.parseInt(request.getParameter("ciclo"));
       nota = Integer.parseInt(request.getParameter("nota"));
    } catch (Exception e) {
        ciclo = 0;
        nota = 0;
        
    }
   
   if (request.getParameter("add") != null) {
        ementa = request.getParameter("ementa");
        ciclo = Integer.parseInt(request.getParameter("ciclo"));
        nota = Integer.parseInt(request.getParameter("nota"));
        disciplina.setEmenta(ementa);
        disciplina.setCiclo(ciclo);
        disciplina.setNota(nota);
   }
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border= "1" >
            <form method="post">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
            </tr>
            <% for (int i = 0; i < disciplina.getList().size(); i++){ %>
            <tr>
                <td><%= i %></td>
                <td><%= disciplina.getList().get(i) %></td>
                <td>
                    <input type="text" name="ementa" placeholder="Ementa"/>
                    <%= disciplina.getEmenta() %>
                    <input type="submit" name="add" value="Adicionar"/> 
                </td>
                <td>
                    <input type="number" name="ciclo" placeholder="Ciclo"/>
                    <%= disciplina.getCiclo()%>
                    <input type="submit" name="add" value="Adicionar"/> 
                </td>
                <td>
                    <input type="number" name="nota" placeholder="Nota"/>
                    <%= disciplina.getNota() %>
                    <input type="submit" name="add" value="Adicionar"/> 
                </td>
            </tr>
            <% } %>
            </form>
        </table>
        
    </body>
</html>
