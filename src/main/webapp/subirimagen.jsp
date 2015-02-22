<%-- 
    Document   : subirimagen
    Created on : 22-feb-2015, 22:06:08
    Author     : worten
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subir imagen</title>
    </head>
    <body>
<form action="FileUploadHandler" method="post" enctype="multipart/form-data">
            <input type="file" name="file" />
            <input type="submit" value="upload" />
</form> 
    </body>
</html>
