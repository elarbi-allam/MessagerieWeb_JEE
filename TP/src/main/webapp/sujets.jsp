<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Connect - Sujets</title>
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
        }

        .page-header {
            position: relative;
            background: linear-gradient(135deg, var(--primary) 0%, #9969c7 100%);
            color: white;
            padding: 2.5rem;
            border-radius: 1rem;
            margin-bottom: 3rem;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .page-header::before {
            content: "";
            position: absolute;
            top: -50px;
            right: -50px;
            width: 150px;
            height: 150px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
        }

        .page-header::after {
            content: "";
            position: absolute;
            bottom: -70px;
            left: -70px;
            width: 200px;
            height: 200px;
            background: rgba(255,255,255,0.05);
            border-radius: 50%;
        }

        .page-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin: 0 0 1rem 0;
            z-index: 1;
            position: relative;
        }

        .page-description {
            font-size: 1.1rem;
            max-width: 600px;
            margin: 0 auto;
            opacity: 0.9;
            z-index: 1;
            position: relative;
        }

        .info-card {
            background-color: white;
            border-radius: 1rem;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
            border-left: 5px solid var(--secondary);
        }

        .info-card-title {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--secondary);
            margin-top: 0;
            margin-bottom: 1rem;
            font-size: 1.2rem;
        }

        .info-card p {
            color: #555;
            margin: 0;
            line-height: 1.6;
        }

        .topics-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
        }

        .topic-card {
            background-color: white;
            border-radius: 1rem;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
            transition: all 0.3s ease;
            position: relative;
            display: flex;
            flex-direction: column;
            height: 100%;
        }

        .topic-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }

        .topic-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(to right, var(--primary), var(--secondary));
        }

        .topic-icon {
            font-size: 2rem;
            color: var(--primary);
            width: 70px;
            height: 70px;
            background-color: rgba(107, 63, 160, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin: 2rem auto 1rem;
        }

        .topic-content {
            padding: 1rem 2rem 2rem;
            text-align: center;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .topic-title {
            font-size: 1.3rem;
            font-weight: 600;
            color: var(--dark);
            margin: 0 0 0.5rem 0;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .topic-info {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 1.5rem;
        }

        .topic-actions {
            margin-top: auto;
        }

        .btn-outline {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            background-color: transparent;
            color: var(--primary);
            border: 2px solid var(--primary);
            border-radius: 2rem;
            padding: 0.6rem 1.5rem;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .btn-outline:hover {
            background-color: var(--primary);
            color: white;
        }

        .empty-state {
            background-color: white;
            border-radius: 1rem;
            padding: 3rem 2rem;
            text-align: center;
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
        }

        .empty-icon {
            font-size: 4rem;
            color: var(--gray);
            margin-bottom: 1.5rem;
            display: inline-block;
        }

        .empty-title {
            font-size: 1.5rem;
            color: var(--dark);
            margin: 0 0 1rem 0;
        }

        .empty-description {
            color: #666;
            max-width: 600px;
            margin: 0 auto;
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
            <c:choose>
                <c:when test="${not empty sessionScope.utilisateur}">
                    <!-- User is logged in -->
                    <a href="${pageContext.request.contextPath}/accueil" class="navbar-link">
                        <i class="fa-solid fa-house"></i> Accueil
                    </a>
                    <a href="${pageContext.request.contextPath}/compte" class="navbar-link">
                        <i class="fa-solid fa-user-circle"></i> Mon Profil
                    </a>
                    <a href="${pageContext.request.contextPath}/deconnexion" class="navbar-link">
                        <i class="fa-solid fa-door-open"></i> Déconnexion
                    </a>
                </c:when>
                <c:otherwise>
                    <!-- User is not logged in -->
                    <a href="${pageContext.request.contextPath}/accueil" class="navbar-link">
                        <i class="fa-solid fa-house"></i> Accueil
                    </a>
                    <a href="${pageContext.request.contextPath}/connexion" class="navbar-link">
                        <i class="fa-solid fa-right-to-bracket"></i> Connexion
                    </a>
                    <a href="${pageContext.request.contextPath}/inscription" class="navbar-link">
                        <i class="fa-solid fa-user-plus"></i> Inscription
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<div class="container">
    <div class="page-header">
        <h1 class="page-title">Découvrez nos sujets</h1>
        <p class="page-description">Explorez les différents sujets de discussion disponibles sur notre plateforme et trouvez ceux qui vous intéressent.</p>
    </div>

    <div class="info-card">
        <h3 class="info-card-title"><i class="fa-solid fa-info-circle"></i> À propos des sujets</h3>
        <p>Les sujets affichés ci-dessous sont issus des messages publics de notre plateforme. Ils sont mis à jour régulièrement pour refléter les discussions en cours. Cliquez sur un sujet pour voir les messages associés.</p>
    </div>

    <c:choose>
        <c:when test="${empty sujets}">
            <div class="empty-state">
                <i class="fa-solid fa-folder-open empty-icon"></i>
                <h2 class="empty-title">Aucun sujet disponible</h2>
                <p class="empty-description">Il n'y a pas encore de sujets disponibles sur la plateforme. Revenez plus tard pour découvrir de nouveaux sujets de discussion.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="topics-grid">
                <c:forEach var="sujet" items="${sujets}">
                    <div class="topic-card">
                        <div class="topic-icon">
                            <i class="fa-solid fa-hashtag"></i>
                        </div>
                        <div class="topic-content">
                            <h3 class="topic-title">${sujet}</h3>
                            <p class="topic-info">Sujet de discussion public</p>
                            <div class="topic-actions">
                                <a href="#" class="btn-outline">
                                    <i class="fa-solid fa-eye"></i> Voir les messages
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<footer class="footer">
    <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
</footer>
</body>
</html>