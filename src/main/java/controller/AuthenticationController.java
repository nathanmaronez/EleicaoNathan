package controller;

import java.io.IOException;
import java.util.List;
import com.google.gson.Gson;

import dao.AutDao;
import dao.GenericDao;
import dao.UsuarioDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import model.Authorization;

import com.google.gson.Gson;

import dao.UsuarioDao;
import model.Usuario;

@WebServlet("/autenticar")
public class AuthenticationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AuthenticationController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession(true);
			Gson gson = new Gson();
			String titulo = request.getParameter("titulo");
			String senha = request.getParameter("senha");

			UsuarioDao dao = new UsuarioDao();
			Usuario user = (Usuario) dao.find(titulo);

			if (user != null && user.getSenha().equals(senha)) {
				session.setMaxInactiveInterval(500);
				response.setStatus(HttpServletResponse.SC_OK);
				String userString = gson.toJson(user);
				session.setAttribute("usuario", user);
				session.setAttribute("titulo", user.getTitulo());
				session.setAttribute("tipo", String.valueOf(user.getTipo()));
				session.setAttribute("permissao", String.valueOf(user.getPodeVotar()));
				session.setAttribute("historico", String.valueOf(user.getJaVotou()));
				request.getRequestDispatcher("dashboards/Dashboard.view.jsp").forward(request, response);
				response.getWriter().flush();

				dao.destroy();
			} else {
				String url = request.getHeader("referer");
				request.getRequestDispatcher(url).forward(request, response);

				response.getWriter().flush();
				dao.destroy();
			}
		} catch (java.lang.IllegalStateException e) {
			try {
				Thread.sleep(1000);
				doPost(request, response);
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
		}		
	}
}
