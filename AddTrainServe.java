package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.TrainDao;
import master.dto.TrainDto;

/**
 * Servlet implementation class AddTrainServe
 */
@WebServlet("/AddTrainServe")
public class AddTrainServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    		response.setContentType("text/html");
    		int sno=Integer.parseInt(request.getParameter("sno"));
    		String tnum=request.getParameter("tnum");
    		String tname=request.getParameter("tname");
    		String sstn=request.getParameter("sstn");
    		String estn=request.getParameter("estn");

    		TrainDto tdto=new TrainDto();
    		tdto.setSno(sno);
    		tdto.setTnum(tnum);
    		tdto.setTname(tname);
    		tdto.setSstn(sstn);
    		tdto.setEstn(estn);
    		TrainDao tdao=new TrainDao();
    		tdao.insertData(tdto);
    		response.sendRedirect("AddStations.jsp");
	}

}
