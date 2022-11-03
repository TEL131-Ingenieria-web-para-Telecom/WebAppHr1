<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
        <title>Crear un nuevo trabajo</title>
    </head>
    <body>
        <div class='container'>
            <h1 class='mb-3'>Crear un nuevo trabajo</h1>

            <form method="POST" action="<%=request.getContextPath()%>/JobServlet?action=crear">

                <div class="form-group">
                    <label for="jobId">Job ID</label>
                    <input type="text" class="form-control" id="jobId" name="jobId">
                </div>
                <div class="form-group">
                    <label for="jobTitle">Job Title</label>
                    <input type="text" class="form-control" id="jobTitle" name="jobTitle">
                </div>
                <div class="form-group">
                    <label for="minSalary">Min Salary</label>
                    <input type="text" class="form-control" id="minSalary" name="minSalary">
                </div>
                <div class="form-group">
                    <label for="maxSalary">Max Salary</label>
                    <input type="text" class="form-control" id="maxSalary" name="maxSalary">
                </div>
                <a href="<%=request.getContextPath()%>/JobServlet" class="btn btn-danger">Regresar</a>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </body>
</html>


