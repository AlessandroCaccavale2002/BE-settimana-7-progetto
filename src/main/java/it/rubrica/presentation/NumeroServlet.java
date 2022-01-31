package it.rubrica.presentation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import it.rubrica.business.RubricaEjb;
import it.rubrica.data.Contatto;
import it.rubrica.data.NumeroTelefono;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/numeroservlet")
public class NumeroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @EJB
    RubricaEjb rubricaEjb;
    public NumeroServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String numTelefono = request.getParameter("numero");
		out.println("<p style='text-align:center; front-weight: bold'>Numero selezionato:" + numTelefono + "</p>");
		
		List<Contatto> lista = rubricaEjb.getContattoByNumero(numTelefono);
		
		for (Contatto c : lista) {
			ArrayList<NumeroTelefono> umTelefoni = c.getNumTelefoni();
			
			out.println("<h2>Nome : " + c.getNome()+ "<br>" + "Cognome :" + c.getCognome() + "<br>" + "</h2>");
			
			
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
