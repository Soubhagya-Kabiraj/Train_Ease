package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.BookTicketDao;
import master.dto.BookTicketDto;



@WebServlet("/CancelTicketServe")
public class CancelTicketServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pname = request.getParameter("passengerName");
		int id = Integer.parseInt(request.getParameter("id"));

		BookTicketDao bdao = new BookTicketDao();
		bdao.deleteData(id,pname);
		
		response.sendRedirect("TicketHistory.jsp");
	}

}
