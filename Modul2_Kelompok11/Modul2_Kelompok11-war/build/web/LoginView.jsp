<%-- 
    Document   : LoginView
    Created on : Oct 3, 2019, 10:04:40 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HELLO</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body style="background-color: rosybrown">
    <header>
      <h1 style="text-align:center">WELCOME TO DIPONEGORO UNIVERSITY STUDENT DATABASE</h1>
    </header>
    <main style="display:flex;justify-content:center;flex-direction: column;">
        <% String stat = (String)request.getAttribute("status");
            if(stat != "true"){%>
            <form action="Login" method="post" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
             <label for="nama" style="margin-bottom:5px">Please Login your Account First</label>
                <label for="nama" style="margin-bottom:5px">Name</label>
                 <input id="nama" type="text" name="nama" placeholder="Student Name">
                <span style="color:brown">${namaEr}</span>
                <br>
                <label for="nim" style="margin-bottom:5px">NIM </label>
                <input id="nim" type="text" name="nim" placeholder="Student NIM">
                <span style="color:brown">${nimEr}</span>
                <span style="color:brown">${userEr}</span>
                <br>
                <input type="submit" name="submit" value="Login" style="width:150px">
                <br>
            </form>
            <%} else {%>
                <form action="Login" method="get" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
                    <label for="namasearch" style="margin-bottom:5px">Please Enter your Name/NIM</label>
                    <input id="namasearch" type="text" name="namasearch" placeholder="Nama/NIM">
                    <span style="color:brown">${hasil}</span>
                    <br>
                    <input type="submit" name="keluar" value="Search" style="width:150px">
                    <br>
                </form>
                <form action="Login" method="get" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
                    <input type="submit" name="keluar" value="Back" style="width:150px">
                </form>
            <%}%>
    </main><br>
    <footer style="text-align:center">&copy; Copyright Praktikum Rekayasa Perangkat Lunak 2019</footer>
  </body>
</html>
                
