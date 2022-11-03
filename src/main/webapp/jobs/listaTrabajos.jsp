<%@ page import="com.example.webapphr1.Beans.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean type="java.util.ArrayList<com.example.webapphr1.Beans.Job>" scope="request" id="lista"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class='container'>

            <h1 class='mb-3'>Lista de trabajos en hr</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= request.getContextPath()%>">Home</a></li>
                    <li class="breadcrumb-item active">Trabajos</li>
                </ol>
            </nav>
            <a class="btn btn-primary mb-3" href="<%=request.getContextPath()%>/JobServlet?action=formCrear">Crear Trabajo</a>

            <table>
                <tr>
                    <th>Job ID</th>
                    <th>Job Name</th>
                    <th>Min Salary</th>
                    <th>Max Salary</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    for (Job job : lista) {
                %>
                <tr>
                    <td><%=job.getJobId()%></td>
                    <td><%=job.getJobTitle()%></td>
                    <td><%=job.getMinSalary()%></td>
                    <td><%=job.getMaxSalary()%></td>
                    <td><a href="<%=request.getContextPath()%>/JobServlet?action=editar&id=<%=job.getJobId()%>">Editar</a></td>
                    <td><a href="<%=request.getContextPath()%>/JobServlet?action=borrar&id=<%=job.getJobId()%>">Borrar</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </body>
</html>


