<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Message Connect - Mon Profil</title>
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

    .profile-header {
      background: linear-gradient(135deg, #6b3fa0 0%, #9969c7 100%);
      border-radius: 1rem;
      padding: 2.5rem;
      margin-bottom: 2rem;
      color: white;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      position: relative;
      overflow: hidden;
    }

    .profile-header-content {
      position: relative;
      z-index: 2;
    }

    .profile-header::before {
      content: "";
      position: absolute;
      top: -50%;
      right: -50%;
      width: 100%;
      height: 200%;
      background: radial-gradient(ellipse at center, rgba(255,255,255,0.2) 0%, rgba(255,255,255,0) 70%);
      transform: rotate(30deg);
      z-index: 1;
    }

    .profile-avatar {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      background-color: white;
      color: var(--primary);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3rem;
      margin-bottom: 1.5rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    }

    .profile-name {
      font-size: 2rem;
      font-weight: 700;
      margin: 0 0 0.5rem 0;
    }

    .profile-description {
      font-size: 1.1rem;
      opacity: 0.9;
      margin: 0;
      max-width: 600px;
    }

    .card {
      background-color: white;
      border-radius: 1rem;
      overflow: hidden;
      box-shadow: 0 10px 20px rgba(0,0,0,0.05);
      margin-bottom: 2rem;
    }

    .card-header {
      background: linear-gradient(135deg, var(--primary) 0%, #9969c7 100%);
      color: white;
      padding: 1.5rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .card-header h2 {
      margin: 0;
      font-size: 1.4rem;
      font-weight: 600;
    }

    .card-body {
      padding: 1.5rem;
    }

    .message-table {
      width: 100%;
      border-collapse: collapse;
    }

    .message-table th,
    .message-table td {
      padding: 1rem;
      text-align: left;
    }

    .message-table th {
      background-color: #f5f2ff;
      color: var(--primary);
      font-weight: 600;
      border-bottom: 2px solid var(--primary);
    }

    .message-table tr {
      border-bottom: 1px solid var(--gray);
      transition: background-color 0.3s ease;
    }

    .message-table tr:last-child {
      border-bottom: none;
    }

    .message-table tr:hover {
      background-color: #f5f2ff;
    }

    .message-table .subject {
      font-weight: 600;
      color: var(--primary);
    }

    .message-table .content {
      color: var(--dark);
      line-height: 1.6;
    }

    .empty-state {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 3rem 1.5rem;
      text-align: center;
      color: #9f9f9f;
    }

    .empty-state i {
      font-size: 3rem;
      margin-bottom: 1rem;
      color: var(--gray);
    }

    .empty-state p {
      font-size: 1.1rem;
      margin: 0;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background-color: var(--secondary);
      color: white;
      border: none;
      border-radius: 2rem;
      padding: 0.6rem 1.5rem;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: all 0.3s ease;
      text-decoration: none;
    }

    .btn:hover {
      background-color: #ff5722;
      transform: translateY(-2px);
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .btn-danger {
      background-color: var(--danger);
    }

    .btn-danger:hover {
      background-color: #d32f2f;
    }

    .session-info {
      margin-top: 2rem;
      background-color: rgba(42, 36, 56, 0.03);
      border-radius: 0.5rem;
      padding: 1rem;
      font-size: 0.85rem;
      color: #666;
      border-left: 3px solid var(--primary);
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
      <a href="${pageContext.request.contextPath}/sujets" class="navbar-link">
        <i class="fa-solid fa-hashtag"></i> Sujets
      </a>
      <a href="${pageContext.request.contextPath}/deconnexion" class="navbar-link">
        <i class="fa-solid fa-door-open"></i> Déconnexion
      </a>
    </div>
  </div>
</div>

<div class="container">
  <div class="profile-header">
    <div class="profile-header-content">
      <div class="profile-avatar">
        <i class="fa-solid fa-user"></i>
      </div>
      <h1 class="profile-name">${sessionScope.utilisateur.prenom} ${sessionScope.utilisateur.nom}</h1>
      <p class="profile-description">Bienvenue sur votre espace personnel. Vous pouvez consulter tous vos messages privés et gérer votre activité.</p>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <i class="fa-solid fa-envelope"></i>
      <h2>Mes Messages</h2>
    </div>
    <div class="card-body">
      <c:choose>
        <c:when test="${empty messages}">
          <div class="empty-state">
            <i class="fa-solid fa-inbox"></i>
            <p>Vous n'avez pas encore de messages.</p>
          </div>
        </c:when>
        <c:otherwise>
          <table class="message-table">
            <thead>
            <tr>
              <th><i class="fa-solid fa-bookmark"></i> Sujet</th>
              <th><i class="fa-solid fa-file-lines"></i> Contenu</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="message" items="${messages}">
              <tr>
                <td class="subject">${message.sujet}</td>
                <td class="content">${message.contenu}</td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </c:otherwise>
      </c:choose>
    </div>
  </div>

  <div class="session-info">
    <i class="fa-solid fa-key"></i> Session ID: <%= session.getId() %> |
    <i class="fa-regular fa-calendar"></i> Créée le: <%= new java.util.Date(session.getCreationTime()) %> |
    <i class="fa-regular fa-clock"></i> Expire dans: <%= session.getMaxInactiveInterval() / 60 %> minutes
  </div>
</div>

<footer class="footer">
  <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
</footer>
</body>
</html>