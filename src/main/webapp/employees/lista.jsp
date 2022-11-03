<%@page import="com.example.webapphr1.Beans.Employee" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:useBean id="listaEmpleados" type="java.util.ArrayList<com.example.webapphr1.Beans.Employee>" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
        <title>Lista empleados</title>
    </head>
    <body>
        <div class='container'>
            <h1 class='mb-3'>Lista de empleados</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= request.getContextPath()%>">Home</a></li>
                    <li class="breadcrumb-item active">Empleados</li>
                </ol>
            </nav>
            <a href="<%= request.getContextPath()%>/EmployeeServlet?action=agregar" class="btn btn-primary mb-4">Agregar
                nuevo empleado</a>
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Employee</th>
                        <th>Email</th>
                        <th>Job</th>
                        <th>Salary</th>
                        <th>Commision</th>
                        <th>Manager ID</th>
                        <th>Department ID</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int i = 1;
                        for (Employee e : listaEmpleados) {
                    %>
                    <tr>
                        <td><%= i%>
                        </td>
                        <td><%= e.getFirstName() + " " + e.getLastName()%>
                        </td>
                        <td><%= e.getEmail()%>
                        </td>
                        <td><%= e.getJob().getJobTitle()%>
                        </td>
                        <td><%= e.getSalary()%>
                        </td>
                        <td><%= e.getCommissionPct() == null ? "Sin comisión" : e.getCommissionPct()%>
                        </td>
                        <td><%= e.getManager().getEmployeeId() == 0 ? "Sin jefe" : e.getManager().getFullName()%>
                        </td>
                        <td><%= e.getDepartment().getDepartmentId() == 0 ? "Sin depa" : e.getDepartment().getDepartmentName()%>
                        </td>
                        <td><a href="EmployeeServlet?action=editar&id=<%= e.getEmployeeId()%>">Editar</a></td>
                        <td><a href="EmployeeServlet?action=borrar&id=<%= e.getEmployeeId()%>">Borrar</a></td>
                    </tr>
                    <%
                            i++;
                        }
                    %>
                </tbody>


            </table>
        </div>
    </body>
</html>
