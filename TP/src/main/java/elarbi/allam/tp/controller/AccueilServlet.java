package elarbi.allam.tp.controller;

import elarbi.allam.tp.dao.DAOServices;
import elarbi.allam.tp.model.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "accueilServlet", urlPatterns = {"/accueil", "/"})
public class AccueilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Récupérer les messages publics
        List<Message> messages = DAOServices.getPublicMessages();

        // Stocker la liste dans l'attribut de la requête
        request.setAttribute("messages", messages);

        // Rediriger vers la page d'accueil
        request.getRequestDispatcher("/accueil.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}