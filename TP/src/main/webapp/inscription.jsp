<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Connect - Inscription</title>
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

        .register-container {
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 100%;
            max-width: 500px;
            position: relative;
        }

        .register-header {
            background: linear-gradient(135deg, var(--secondary) 0%, #ff9268 100%);
            padding: 2.5rem 2rem;
            text-align: center;
            color: white;
        }

        .register-icon {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            display: inline-block;
            width: 100px;
            height: 100px;
            line-height: 100px;
            background-color: white;
            color: var(--secondary);
            border-radius: 50%;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .register-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin: 0 0 0.5rem 0;
        }

        .register-subtitle {
            font-size: 1rem;
            opacity: 0.9;
            margin: 0;
        }

        .register-body {
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

        .password-guidelines {
            background-color: #f5f2ff;
            border-radius: 0.5rem;
            padding: 1.2rem;
            margin-bottom: 1.5rem;
            border-left: 4px solid var(--primary);
        }

        .password-guidelines h3 {
            color: var(--primary);
            margin-top: 0;
            margin-bottom: 0.8rem;
            font-size: 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .guidelines-list {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .guidelines-list li {
            position: relative;
            padding-left: 1.5rem;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            color: #555;
        }

        .guidelines-list li::before {
            content: "\f00c";
            font-family: "Font Awesome 6 Free";
            font-weight: 900;
            position: absolute;
            left: 0;
            color: var(--primary);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            background-color: var(--secondary);
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
            background-color: #ff5722;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .register-steps {
            display: flex;
            justify-content: space-between;
            margin-bottom: 2rem;
        }

        .step {
            flex: 1;
            text-align: center;
            padding: 0.5rem;
            position: relative;
        }

        .step:not(:last-child)::after {
            content: "";
            position: absolute;
            top: 1.8rem;
            right: -15%;
            width: 30%;
            height: 2px;
            background-color: var(--gray);
            z-index: 1;
        }

        .step-number {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 2.5rem;
            height: 2.5rem;
            background-color: var(--gray);
            color: white;
            border-radius: 50%;
            margin: 0 auto 0.5rem;
            font-weight: 600;
            position: relative;
            z-index: 2;
        }

        .step-active .step-number {
            background-color: var(--secondary);
        }

        .step-label {
            font-size: 0.8rem;
            color: #666;
            margin: 0;
        }

        .step-active .step-label {
            color: var(--secondary);
            font-weight: 600;
        }

        .register-footer {
            padding: 1.5rem 2rem;
            text-align: center;
            border-top: 1px solid var(--gray);
            background-color: #fcfcfc;
        }

        .register-footer p {
            margin: 0;
            color: #666;
        }

        .register-footer a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
        }

        .register-footer a:hover {
            text-decoration: underline;
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
            <a href="${pageContext.request.contextPath}/connexion" class="navbar-link">
                <i class="fa-solid fa-right-to-bracket"></i> Connexion
            </a>
            <a href="${pageContext.request.contextPath}/sujets" class="navbar-link">
                <i class="fa-solid fa-hashtag"></i> Sujets
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="register-container">
        <div class="register-header">
            <i class="fa-solid fa-user-plus register-icon"></i>
            <h1 class="register-title">Inscription</h1>
            <p class="register-subtitle">Rejoignez notre communauté en quelques étapes simples</p>
        </div>

        <div class="register-body">
            <div class="register-steps">
                <div class="step step-active">
                    <div class="step-number">1</div>
                    <p class="step-label">Créer un compte</p>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <p class="step-label">Se connecter</p>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <p class="step-label">Explorer</p>
                </div>
            </div>

            <c:if test="${not empty erreur}">
                <div class="message message-error">
                    <i class="fa-solid fa-circle-exclamation"></i> ${erreur}
                </div>
            </c:if>

            <form action="${pageContext.request.contextPath}/inscription" method="post">
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
                        <input type="password" id="motDePasse" name="motDePasse" class="form-control input-with-icon" placeholder="Créez un mot de passe sécurisé" required>
                    </div>
                </div>

                <div class="password-guidelines">
                    <h3><i class="fa-solid fa-shield-halved"></i> Conseils de sécurité</h3>
                    <ul class="guidelines-list">
                        <li>Utilisez au moins 8 caractères</li>
                        <li>Incluez des lettres majuscules et minuscules</li>
                        <li>Ajoutez des chiffres et des caractères spéciaux</li>
                        <li>Évitez les informations personnelles facilement devinables</li>
                    </ul>
                </div>

                <button type="submit" class="btn">
                    <i class="fa-solid fa-user-plus"></i> Créer mon compte
                </button>
            </form>
        </div>

        <div class="register-footer">
            <p>Déjà inscrit? <a href="${pageContext.request.contextPath}/connexion">Se connecter</a></p>
        </div>
    </div>
</div>

<footer class="footer">
    <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
</footer>
</body>
</html>