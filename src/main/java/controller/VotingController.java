package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AutDao;
import dao.VotingDao;
import model.Authorization;
import model.Votos;

@WebServlet("/votar")
public class VotingController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public VotingController() 
    {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String titulo = (String) request.getParameter("user");
		String candidato = (String) request.getParameter("voto");
		if(titulo == null) titulo = (String) session.getAttribute("titulo");

		Authorization controle = new AutDao().find(titulo);

		if(controle != null)
		{
			if(controle.getPodeVotar() == 'Y' && controle.getJaVotou() == 'N')
			{				
				Votos voto = new Votos();
				voto.setCandidato(Integer.parseInt(String.valueOf(candidato)));
				voto.setTitulo(controle.getTitulo());

				new VotingDao().save(voto);

				controle.setJaVotou('Y');
				new AutDao().save(controle);

				int tipo = (int) Integer.parseInt(String.valueOf(session.getAttribute("tipo")));
				session.setAttribute("titulo", titulo);
				session.setAttribute("tipo", tipo);
				
				request.getRequestDispatcher("../Eleicao").forward(request, response);	
				response.getWriter().flush();	
			}
			else
			{				
				request.getRequestDispatcher("../Eleicao").forward(request, response);	
				response.getWriter().flush();		
			}
		}else{				
			request.getRequestDispatcher("../Eleicao").forward(request, response);	
			response.getWriter().flush();		
		}
	}
}
