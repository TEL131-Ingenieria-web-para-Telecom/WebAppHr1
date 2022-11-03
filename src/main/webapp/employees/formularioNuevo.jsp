<%@ page import="com.example.webapphr1.Beans.Job" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.example.webapphr1.Beans.Job" %>
<%@page import="com.example.webapphr1.Beans.Employee" %>
<%@page import="com.example.webapphr1.Beans.Department" %>
<jsp:useBean id="listaTrabajos" type="ArrayList<Job>" scope="request"/>
<jsp:useBean id="listaJefes" type="java.util.ArrayList<Employee>" scope="request" />
<jsp:useBean id="listaDepartamentos" type="ArrayList<Department>" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' />
        <title>Nuevo empleado</title>
    </head>
    <body>
        <div class='container'>
            <div class="row mb-4">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h1 class='mb-3'>Nuevo usuario</h1>
                <hr>
                <form method="POST" action="EmployeeServlet?action=guardar">
                    <div class="form-group">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control form-control-sm" name="first_name" id="first_name">
                    </div>
                    <div class="form-group">
                        <label for="last_name">Last Name</label>
                        <input type="text" class="form-control form-control-sm" name="last_name" id="last_name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control form-control-sm" name="email" id="email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone number</label>
                        <input type="text" class="form-control form-control-sm" name="phone" id="phone">
                    </div>
                    <div class="form-group">
                        <label for="hire_date">Hire date</label>
                        <input type="text" class="form-control form-control-sm" name="hire_date" id="hire_date">
                    </div>
                    <div class="form-group">
                        <label for="job_id">Job</label>
                        <select name="job_id" id="job_id" class="form-control">
                            <% for(Job job: listaTrabajos){ %>
                            <option value="<%=job.getJobId()%>"><%=job.getJobTitle()%></option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="salary">Salary</label>
                        <input type="text" class="form-control form-control-sm" name="salary" id="salary">
                    </div>
                    <div class="form-group">
                        <label for="commission">Commision PCT</label>
                        <input type="text" class="form-control form-control-sm" name="commission" id="commission">
                    </div>
                    <div class="form-group">
                        <label for="manager_id">Manager</label>
                        <select name="manager_id" id="manager_id" class="form-control">
                            <option value="0">-- Sin jefe --</option>
                            <% for(Employee e: listaJefes){ %>
                            <option value="<%=e.getEmployeeId()%>"><%=e.getFullName()%></option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="department_id">Department</label>
                        <select name="department_id" id="department_id" class="form-control">
                            <option value="0">-- Sin departamento --</option>
                            <% for(Department d: listaDepartamentos){ %>
                            <option value="<%=d.getDepartmentId()%>"><%=d.getDepartmentName()%></option>
                            <% } %>
                        </select>
                    </div>
                    <a href="<%= request.getContextPath()%>/EmployeeServlet" class="btn btn-danger">Cancelar</a>
                    <input type="submit" value="Guardar" class="btn btn-primary" />
                </form>
            </div>
            <div class="col-md-3"></div>
            </div>
        </div>
    </body>
</html>
