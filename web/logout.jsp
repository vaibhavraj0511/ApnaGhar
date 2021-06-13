<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ApnaGhar.com</title>
        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">
        <script src="./Assets/JS/backNoWork.js" type="text/javascript"></script>
    </head>
    <body>
    <%  
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Expires", "0");
        response.setDateHeader("Expires", -1);
        session.invalidate();
    %>

    <script>
        alert('Successfully Logout!!');
        window.location="index.jsp";
    </script>
    </body>
</html>