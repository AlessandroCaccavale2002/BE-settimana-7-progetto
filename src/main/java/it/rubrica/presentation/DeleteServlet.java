package it.rubrica.presentation;

import java.io.IOException;

import it.rubrica.business.RubricaEjb;
import it.rubrica.data.Contatto;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteservlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	RubricaEjb rubricaEjb;
    public DeleteServlet() {
        
    }

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.valueOf(request.getParameter("id"));
		Contatto c = new Contatto();
		c.setId(id);
		rubricaEjb.deleteContatto(c);
		
	}

}
