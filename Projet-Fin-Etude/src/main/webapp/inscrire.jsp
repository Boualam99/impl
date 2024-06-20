<%-- 
    Document   : inscrire.jsp
    Created on : 7 juin 2024, 16:18:12
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
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
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 300px;
        }
        label {
            font-size: 1.2em;
            margin-bottom: 5px;
        }
        input {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 1em;
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
        <h1>Inscription</h1>
        <form action="inscrire" method="post">
        <label for="nom">Nom de l'enfant:</label>
        <input type="text" id="nom" name="nom" required>

        <label for="prenom">Prénom de l'enfant:</label>
        <input type="text" id="prenom" name="prenom" required>

        <label for="date_naissance">Date de naissance:</label>
        <input type="date" id="date_naissance" name="date_naissance" required>

        <label for="telephone">Numéro de téléphone des parents:</label>
        <input type="tel" id="telephone" name="telephone" required>

        <div class="button-container">
            <button type="submit">Valider</button>
            <button type="button" onclick="location.href='index.jsp'">Retour</button>
        </div>
    </form>
    </body>
</html>
