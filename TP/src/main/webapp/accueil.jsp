<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Message Connect - Accueil</title>
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

<div class="container">
  <div class="card">
    <div class="card-header">
      <i class="fa-solid fa-envelope-open-text"></i>
      <h2>Messages Récents</h2>
    </div>
    <div class="card-body">
      <c:choose>
        <c:when test="${empty messages}">
          <div class="empty-state">
            <i class="fa-solid fa-inbox"></i>
            <p>Aucun message n'est disponible pour le moment.</p>
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
</div>

<footer class="footer">
  <p>&copy; 2025 Message Connect. Tous droits réservés.</p>
</footer>
</body>
</html>