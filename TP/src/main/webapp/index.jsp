<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Message Connect - Bienvenue</title>
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

    .hero {
      background: linear-gradient(135deg, var(--primary) 0%, #9969c7 100%);
      color: white;
      padding: 5rem 0;
      position: relative;
      overflow: hidden;
    }

    .hero::before {
      content: "";
      position: absolute;
      top: -100px;
      right: -100px;
      width: 400px;
      height: 400px;
      background: rgba(255,255,255,0.1);
      border-radius: 50%;
    }

    .hero::after {
      content: "";
      position: absolute;
      bottom: -150px;
      left: -150px;
      width: 500px;
      height: 500px;
      background: rgba(255,255,255,0.05);
      border-radius: 50%;
    }

    .hero-container {
      width: 90%;
      max-width: 1200px;
      margin: 0 auto;
      position: relative;
      z-index: 1;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .hero-content {
      max-width: 600px;
    }

    .hero-title {
      font-size: 3rem;
      font-weight: 800;
      margin: 0 0 1.5rem 0;
      line-height: 1.2;
    }

    .hero-subtitle {
      font-size: 1.2rem;
      opacity: 0.9;
      margin: 0 0 2rem 0;
      line-height: 1.6;
    }

    .hero-buttons {
      display: flex;
      gap: 1rem;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background-color: var(--secondary);
      color: white;
      border: none;
      border-radius: 2rem;
      padding: 0.8rem 2rem;
      font-weight: 600;
      font-size: 1rem;
      cursor: pointer;
      transition: all 0.3s ease;
      text-decoration: none;
    }

    .btn:hover {
      background-color: #ff5722;
      transform: translateY(-2px);
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .btn-outline {
      background-color: transparent;
      border: 2px solid white;
    }

    .btn-outline:hover {
      background-color: white;
      color: var(--primary);
    }

    .hero-image {
      max-width: 40%;
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hero-image img {
      max-width: 100%;
      height: auto;
      z-index: 1;
    }

    .features {
      padding: 5rem 0;
    }

    .section-title {
      text-align: center;
      font-size: 2rem;
      font-weight: 700;
      margin: 0 0 3rem 0;
      color: var(--dark);
    }

    .features-container {
      width: 90%;
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
    }

    .feature-card {
      background-color: white;
      border-radius: 1rem;
      overflow: hidden;
      box-shadow: 0 10px 20px rgba(0,0,0,0.05);
      transition: all 0.3s ease;
    }

    .feature-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 30px rgba(0,0,0,0.1);
    }

    .feature-icon {
      width: 80px;
      height: 80px;
      background-color: rgba(107, 63, 160, 0.1);
      color: var(--primary);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2.5rem;
      border-radius: 1rem;
      margin: 2rem auto 1rem;
    }

    .feature-content {
      padding: 0 1.5rem 2rem;
      text-align: center;
    }

    .feature-title {
      font-size: 1.3rem;
      font-weight: 600;
      color: var(--dark);
      margin: 1rem 0;
    }

    .feature-description {
      color: #666;
      margin: 0;
      line-height: 1.6;
    }

    .cta {
      background-color: var(--dark);
      color: white;
      padding: 5rem 0;
      text-align: center;
    }

    .cta-container {
      width: 90%;
      max-width: 800px;
      margin: 0 auto;
    }

    .cta-title {
      font-size: 2.5rem;
      font-weight: 700;
      margin: 0 0 1rem 0;
    }

    .cta-description {
      font-size: 1.1rem;
      opacity: 0.9;
      margin: 0 0 2rem 0;
      line-height: 1.6;
    }

    .footer {
      background-color: var(--dark);
      color: white;
      padding: 3rem 0 1.5rem;
    }

    .footer-container {
      width: 90%;
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 2rem;
    }

    .footer-brand {
      display: flex;
      align-items: center;
      gap: 10px;
      color: white;
      text-decoration: none;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: 1px;
      margin-bottom: 1rem;
    }

    .footer-description {
      color: rgba(255,255,255,0.7);
      line-height: 1.6;
      margin: 0;
    }

    .footer-links h3 {
      color: white;
      font-size: 1.2rem;
      margin: 0 0 1.5rem 0;
    }

    .footer-links ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .footer-links li {
      margin-bottom: 0.8rem;
    }

    .footer-links a {
      color: rgba(255,255,255,0.7);
      text-decoration: none;
      transition: color 0.3s ease;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .footer-links a:hover {
      color: white;
    }

    .copyright {
      text-align: center;
      border-top: 1px solid rgba(255,255,255,0.1);
      padding-top: 1.5rem;
      margin-top: 3rem;
      color: rgba(255,255,255,0.7);
      font-size: 0.9rem;
    }

    @media (max-width: 768px) {
      .hero-container {
        flex-direction: column;
        text-align: center;
      }

      .hero-content {
        margin-bottom: 3rem;
      }

      .hero-buttons {
        justify-content: center;
      }

      .hero-image {
        max-width: 80%;
      }
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
          <a href="${pageContext.request.contextPath}/compte" class="navbar-link">
            <i class="fa-solid fa-user-circle"></i> Mon Profil
          </a>
          <a href="${pageContext.request.contextPath}/sujets" class="navbar-link">
            <i class="fa-solid fa-hashtag"></i> Sujets
          </a>
          <a href="${pageContext.request.contextPath}/deconnexion" class="navbar-link">
            <i class="fa-solid fa-door-open"></i> Déconnexion
          </a>
        </c:when>
        <c:otherwise>
          <!-- User is not logged in -->
          <a href="${pageContext.request.contextPath}/connexion" class="navbar-link">
            <i class="fa-solid fa-right-to-bracket"></i> Connexion
          </a>
          <a href="${pageContext.request.contextPath}/inscription" class="navbar-link">
            <i class="fa-solid fa-user-plus"></i> Inscription
          </a>
          <a href="${pageContext.request.contextPath}/sujets" class="navbar-link">
            <i class="fa-solid fa-hashtag"></i> Sujets
          </a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</div>

<section class="hero">
  <div class="hero-container">
    <div class="hero-content">
      <h1 class="hero-title">Bienvenue sur Message Connect</h1>
      <p class="hero-subtitle">Notre plateforme vous permet de communiquer facilement et de manière sécurisée. Rejoignez notre communauté dès aujourd'hui !</p>
      <div class="hero-buttons">
        <a href="${pageContext.request.contextPath}/inscription" class="btn">
          <i class="fa-solid fa-user-plus"></i> S'inscrire
        </a>
        <a href="${pageContext.request.contextPath}/connexion" class="btn btn-outline">
          <i class="fa-solid fa-right-to-bracket"></i> Se connecter
        </a>
      </div>
    </div>
    <div class="hero-image">
      <i class="fa-solid fa-comments" style="font-size: 180px; color: rgba(255,255,255,0.2);"></i>
    </div>
  </div>
</section>

<section class="features">
  <h2 class="section-title">Nos Fonctionnalités</h2>
  <div class="features-container">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fa-solid fa-lock"></i>
      </div>
      <div class="feature-content">
        <h3 class="feature-title">Sécurité Renforcée</h3>
        <p class="feature-description">Vos messages sont protégés par un système de sécurité avancé garantissant la confidentialité de vos communications.</p>
      </div>
    </div>

    <div class="feature-card">
      <div class="feature-icon">
        <i class="fa-solid fa-users"></i>
      </div>
      <div class="feature-content">
        <h3 class="feature-title">Communauté Active</h3>
        <p class="feature-description">Rejoignez une communauté dynamique et participez à des discussions enrichissantes sur divers sujets.</p>
      </div>
    </div>

    <div class="feature-card">
      <div class="feature-icon">
        <i class="fa-solid fa-bolt"></i>
      </div>
      <div class="feature-content">
        <h3 class="feature-title">Rapidité et Fiabilité</h3>
        <p class="feature-description">Notre plateforme est conçue pour être rapide et fiable, vous permettant de communiquer sans interruption.</p>
      </div>
    </div>
  </div>
</section>

<section class="cta">
  <div class="cta-container">
    <h2 class="cta-title">Prêt à nous rejoindre ?</h2>
    <p class="cta-description">Créez un compte en quelques clics et commencez à communiquer dès maintenant.</p>
    <a href="${pageContext.request.contextPath}/inscription" class="btn">
      <i class="fa-solid fa-rocket"></i> Commencer
    </a>
  </div>
</section>

<footer class="footer">
  <div class="footer-container">
    <div>
      <a href="${pageContext.request.contextPath}/accueil" class="footer-brand">
        <i class="fa-solid fa-comments"></i>
        <span>Message Connect</span>
      </a>
      <p class="footer-description">Plateforme de messagerie sécurisée et conviviale pour tous vos besoins de communication.</p>
    </div>

    <div class="footer-links">
      <h3>Navigation</h3>
      <ul>
        <li><a href="${pageContext.request.contextPath}/accueil"><i class="fa-solid fa-home"></i> Accueil</a></li>
        <li><a href="${pageContext.request.contextPath}/sujets"><i class="fa-solid fa-hashtag"></i> Sujets</a></li>
        <li><a href="${pageContext.request.contextPath}/connexion"><i class="fa-solid fa-right-to-bracket"></i> Connexion</a></li>
        <li><a href="${pageContext.request.contextPath}/inscription"><i class="fa-solid fa-user-plus"></i> Inscription</a></li>
      </ul>
    </div>

    <div class="footer-links">
      <h3>Liens Utiles</h3>
      <ul>
        <li><a href="#"><i class="fa-solid fa-circle-info"></i> À propos</a></li>
        <li><a href="#"><i class="fa-solid fa-shield-halved"></i> Confidentialité</a></li>
        <li><a href="#"><i class="fa-solid fa-file-contract"></i> Conditions d'utilisation</a></li>
        <li><a href="#"><i class="fa-solid fa-headset"></i> Support</a></li>
      </ul>
    </div>
  </div>

  <div class="copyright">
    <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
  </div>
</footer>
</body>
</html>