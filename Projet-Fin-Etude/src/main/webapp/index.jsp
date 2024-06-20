<%-- 
    Document   : index.jsp
    Created on : 7 juin 2024, 16:16:03
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crèche</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #007BFF;
        }
        img {
            max-width: 50%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .button-container {
            display: flex;
            gap: 20px;
        }
        button {
            padding: 15px 30px;
            font-size: 1.2em;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            background-color: #FFD700;
            color: black;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #FFC300;
        }
    </style>
    </head>
    <body>
        <h1>Your Kid</h1>
    <img alt="la photo de la creche" src="https://img.freepik.com/vector-premium/educacion-pequenos-estudiantes_29937-3085.jpg?w=2000">
    <div class="button-container">
        
        <a href="inscrire.jsp"><button>S'inscrire</button></a>
        <a href="afficher.jsp"><button>Afficher</button></a>
    </div>
    </body>
</html>
