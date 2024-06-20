<%-- 
    Document   : afficher.jsp
    Created on : 7 juin 2024, 16:20:55
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informations sur la Crèche</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }
        h1 {
            text-align: center;
            color: #007BFF;
        }
        h2 {
            text-align: center;
            color: #C71585;
        }
        .creche-info {
            text-align: center;
            margin-bottom: 30px;
        }
        .creche-info p {
            text-align: justify;
            font-weight: 500;
            line-height: 1.6;
            text-align: center;
        }
        .photos {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
        }
        .photos img {
            max-width: 150px;
            height: auto;
            border-radius: 10px;
        }
        .activities, .inscriptions {
            margin-bottom: 30px;
        }
        .activities ul {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            list-style-type: none;
            padding: 0;
        }
        .activities li {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            flex: 1 1 calc(33% - 40px);
            box-sizing: border-box;
        }
        .activities img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .inscriptions ul {
            list-style-type: none;
            padding: 0;
        }
        .inscriptions li {
            background-color: #fff;
            margin-bottom: 10px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .button-container {
            text-align: center;
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
        <h1>Your Kid</h1>

    <div class="creche-info">
        <h2>Bienvenue à notre Crèche</h2>
        <p>Notre crèche offre un environnement sûr et stimulant pour les enfants. Nous nous engageons à favoriser le développement physique, émotionnel et social de chaque enfant grâce à des activités adaptées à leur âge et à leurs intérêts. Nos activités incluent des jeux éducatifs, des ateliers créatifs, des séances de lecture, et des jeux en plein air.</p>
    </div>

    <div class="photos">
        <img src="https://th.bing.com/th/id/OIP.donySo1XgYExDtMyEYeJigHaE7?rs=1&pid=ImgDetMain" alt="Enfant 1">
        <img src="https://www.womanonly.cz/wp-content/uploads/2014/05/deti-kruh.jpg" alt="Enfant 2">
        <img src="https://th.bing.com/th/id/R.95454508cf5412ff447456e3266a3cda?rik=mwrVOb6Lemf9fQ&riu=http%3a%2f%2fviaorganica.org%2fwp-content%2fuploads%2fni%C3%B1os-felices1.jpg&ehk=gJBKrhKMKMgWeBf%2bN5n988xdQB8D9TynXBjtHS%2b5UVM%3d&risl=&pid=ImgRaw&r=0" alt="Enfant 3">
    </div>

    <div class="activities">
        <h2>Activités pour les Enfants</h2>
        <ul>
            <li>
                <img src="https://2.bp.blogspot.com/-CAUomoDSiu0/WD2PIYG531I/AAAAAAAAA0M/_6EXFGpmBLYEbdFhNiux0PDIEZXSnDczACLcB/s1600/DSC06135.JPG" alt="Jeux éducatifs">
                <p>Jeux éducatifs</p>
            </li>
            <li>
                <img src="https://img.cdn.schooljotter2.com/sampled/11644110/900/0/nocrop/" alt="Ateliers créatifs">
                <p>Ateliers créatifs</p>
            </li>
            <li>
                <img src="https://img1.wsimg.com/isteam/stock/74pag1V/:/cr=t:0%25,l:5.58%25,w:88.84%25,h:88.84%25" alt="Séances de lecture">
                <p>Séances de lecture</p>
            </li>
            <li>
                <img src="https://th.bing.com/th/id/OIP.FW6QxPEkmUJ_Gl5bJwegMQHaE8?w=5760&h=3842&rs=1&pid=ImgDetMain" alt="Jeux en plein air">
                <p>Jeux en plein air</p>
            </li>
            <li>
                <img src="https://www.jilcdubai.com/wp-content/uploads/2023/04/kids-learning-islam-in-JILC.jpg" alt="Activités musicales">
                <p>Activités du Quran</p>
            </li>
            <li>
                <img src="https://th.bing.com/th/id/OIP._v2pB17F6VfyVPxTkYWt_gHaEv?rs=1&pid=ImgDetMain" alt="Initiation aux langues étrangères">
                <p>Initiation aux langues étrangères</p>
            </li>
        </ul>
    </div>

    <div class="inscriptions">
        <h2>Liste des Inscrits</h2>
         <ul>
      <c:forEach items="${users}" var="utilisateur">
        <li>
          ${utilisateur.nom} ${utilisateur.prenom} - ${utilisateur.dateNaissance} - ${utilisateur.telephone}
        </li>
      </c:forEach>
    </ul>
    </div>

    <div class="button-container">
        <button onclick="location.href='index.jsp'">Retour</button>
    </div>
    </body>
</html>
