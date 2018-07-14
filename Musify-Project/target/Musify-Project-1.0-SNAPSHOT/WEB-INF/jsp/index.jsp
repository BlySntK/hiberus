<%-- 
    Document   : index
    Created on : 11-jul-2018, 17:38:42
    Author     : Mario Herrero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musify Project by Mario Herrero</title>
    </head>
    <style>
        * {
            background-color: darkblue;
        }
        
        #header {
            padding: 5px;
            color: white;
        }
        
        #a {
            text-shadow: 2px 2px 5px white;
            color: white;
            font-size: 20px; 
            position: absolute; 
            top: 40%;
            left: 41%;  
        }
        #b {
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            position: absolute;
            top: 50%;
            left: 46%;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        #b:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }
        
        @keyframes b {
            from {box-shadow: none;}
            to {box-shadow: black;}
        }
        
        #c {
            position: absolute;
            color: white;
            top: 90%;
            left: 35.5%;
        }
        
        #image {
            position: absolute;
            width: 250px;
            height: 100px;
            top: 82%;
            left: 2%;
        }
        
        #banner1 {
            position: absolute;
            left: 0;
            top: 25%;
            width: 100%;
            height: 25px;
            background: black;
        }
        
        #banner2 {
            position: absolute;
            left: 0;
            top: 75%;
            background: black;
            width: 100%;
            height: 25px;
        }
    </style>
    <body>
        <h1 align="center" id="header">${Welcome}</h1>
        <div id="banner1"></div>
        <label id="a">${Content}</label>
        <div id="banner2"></div>
        
        <form action="/Musify-Project/registerApplication" method="post">
            <input type="submit" id="b" value="Go NOW"/>
        </form>
        <img id="image" src="images/hiberus.png"/>
        
        <footer id="c"><strong>${Author} ${Year}</strong></footer>
    </body>
</html>
