<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Connect - Connexion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #6b3fa0;
            --secondary: #ff6b35;
            --dark: #2a2438;
            --light: #f8f7ff;
            --gray: #d8d5db;
            --success: #4caf50;
            --danger: #f44336;
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--light);
            color: var(--dark);
            min-height: 100vh;
        }

        .navbar {
            background: linear-gradient(135deg, var(--primary) 0%, #9969c7 100%);
            padding: 1rem 0;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .navbar-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            color: white;
            text-decoration: none;
            font-weight: 700;
            font-size: 1.5rem;
            letter-spacing: 1px;
        }

        .brand i {
            font-size: 1.8rem;
        }

        .navbar-links {
            display: flex;
            gap: 1.5rem;
        }

        .navbar-link {
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            padding: 0.5rem 1rem;
            border-radius: 2rem;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .navbar-link:hover {
            background-color: rgba(255,255,255,0.15);
            border-color: white;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
            display: flex;
            justify-content: center;
        }

        .login-container {
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 100%;
            max-width: 450px;
            margin-top: 1rem;
            position: relative;
        }

        .login-header {
            background: linear-gradient(135deg, var(--primary) 0%, #9969c7 100%);
            padding: 2.5rem 2rem;
            text-align: center;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .login-header::after {
            content: "";
            position: absolute;
            bottom: -30px;
            left: 0;
            right: 0;
            height: 60px;
            background: white;
            border-radius: 100% 100% 0 0;
        }

        .login-icon {
            font-size: 4rem;
            margin-bottom: 1rem;
            display: inline-block;
            color: white;
            background-color: rgba(255,255,255,0.2);
            width: 100px;
            height: 100px;
            line-height: 100px;
            border-radius: 50%;
            text-align: center;
        }

        .login-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin: 0;
        }

        .login-body {
            padding: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: var(--dark);
        }

        .form-control {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 2px solid var(--gray);
            border-radius: 0.5rem;
            font-size: 1rem;
            transition: all 0.3s ease;
            background-color: #f8f7ff;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(107, 63, 160, 0.1);
        }

        .input-group {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--primary);
        }

        .input-with-icon {
            padding-left: 3rem;
        }

        .message {
            padding: 1rem;
            margin-bottom: 1.5rem;
            border-radius: 0.5rem;
            font-weight: 500;
        }

        .message-error {
            background-color: rgba(244, 67, 54, 0.1);
            color: var(--danger);
            border-left: 4px solid var(--danger);
        }

        .message-success {
            background-color: rgba(76, 175, 80, 0.1);
            color: var(--success);
            border-left: 4px solid var(--success);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            background-color: var(--primary);
            color: white;
            border: none;
            border-radius: 0.5rem;
            padding: 0.8rem 1.5rem;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            width: 100%;
        }

        .btn:hover {
            background-color: #5a359b;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .login-footer {
            padding: 1.5rem 2rem;
            text-align: center;
            border-top: 1px solid var(--gray);
        }

        .login-footer p {
            margin: 0;
            color: #666;
        }

        .login-footer a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
        }

        .login-footer a:hover {
            text-decoration: underline;
        }

        .circles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        .circles li {
            position: absolute;
            display: block;
            list-style: none;
            width: 20px;
            height: 20px;
            background: rgba(255, 255, 255, 0.1);
            animation: animate 25s linear infinite;
            bottom: -150px;
            border-radius: 50%;
        }

        .circles li:nth-child(1) {
            left: 25%;
            width: 80px;
            height: 80px;
            animation-delay: 0s;
        }

        .circles li:nth-child(2) {
            left: 10%;
            width: 20px;
            height: 20px;
            animation-delay: 2s;
            animation-duration: 12s;
        }

        .circles li:nth-child(3) {
            left: 70%;
            width: 20px;
            height: 20px;
            animation-delay: 4s;
        }

        .circles li:nth-child(4) {
            left: 40%;
            width: 60px;
            height: 60px;
            animation-delay: 0s;
            animation-duration: 18s;
        }

        .circles li:nth-child(5) {
            left: 65%;
            width: 20px;
            height: 20px;
            animation-delay: 0s;
        }

        @keyframes animate {
            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 1;
                border-radius: 0;
            }

            100% {
                transform: translateY(-1000px) rotate(720deg);
                opacity: 0;
                border-radius: 50%;
            }
        }

        .footer {
            background-color: var(--dark);
            color: white;
            text-align: center;
            padding: 1.5rem 0;
            margin-top: 3rem;
        }

        .footer p {
            margin: 0;
            font-size: 0.9rem;
            opacity: 0.8;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="navbar-container">
        <a href="${pageContext.request.contextPath}/accueil" class="brand">
            <i class="fa-solid fa-comments"></i>
            <span>Message Connect</span>
        </a>
        <div class="navbar-links">
            <a href="${pageContext.request.contextPath}/accueil" class="navbar-link">
                <i class="fa-solid fa-house"></i> Accueil
            </a>
            <a href="${pageContext.request.contextPath}/inscription" class="navbar-link">
                <i class="fa-solid fa-user-plus"></i> Inscription
            </a>
            <a href="${pageContext.request.contextPath}/sujets" class="navbar-link">
                <i class="fa-solid fa-hashtag"></i> Sujets
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="login-container">
        <div class="login-header">
            <i class="fa-solid fa-user-lock login-icon"></i>
            <h1 class="login-title">Connexion</h1>

            <ul class="circles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>

        <div class="login-body">
            <c:if test="${not empty erreur}">
                <div class="message message-error">
                    <i class="fa-solid fa-circle-exclamation"></i> ${erreur}
                </div>
            </c:if>

            <c:if test="${not empty message}">
                <div class="message message-success">
                    <i class="fa-solid fa-circle-check"></i> ${message}
                </div>
            </c:if>

            <form action="${pageContext.request.contextPath}/connexion" method="post">
                <div class="form-group">
                    <label class="form-label" for="nom">Nom</label>
                    <div class="input-group">
                        <i class="fa-solid fa-user input-icon"></i>
                        <input type="text" id="nom" name="nom" class="form-control input-with-icon" placeholder="Entrez votre nom" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="prenom">Prénom</label>
                    <div class="input-group">
                        <i class="fa-solid fa-user input-icon"></i>
                        <input type="text" id="prenom" name="prenom" class="form-control input-with-icon" placeholder="Entrez votre prénom" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="motDePasse">Mot de passe</label>
                    <div class="input-group">
                        <i class="fa-solid fa-lock input-icon"></i>
                        <input type="password" id="motDePasse" name="motDePasse" class="form-control input-with-icon" placeholder="Entrez votre mot de passe" required>
                    </div>
                </div>

                <button type="submit" class="btn">
                    <i class="fa-solid fa-right-to-bracket"></i> Se connecter
                </button>
            </form>
        </div>

        <div class="login-footer">
            <p>Pas encore de compte? <a href="${pageContext.request.contextPath}/inscription">Créer un compte</a></p>
        </div>
    </div>
</div>

<footer class="footer">
    <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
</footer>
</body>
</html>