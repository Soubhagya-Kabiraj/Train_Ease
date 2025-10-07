package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.StationDao;
import master.dto.StationDto;
import master.dto.TrainDto;

/**
 * Servlet implementation class AddStationServe
 */
@WebServlet("/AddStationServe")
public class AddStationServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tnum=request.getParameter("tnum");
		int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
		int dfs=Integer.parseInt(request.getParameter("dfs"));
		String atime=request.getParameter("atime");
		String dtime=request.getParameter("dtime");
		
		StationDto sdto=new StationDto();
		sdto.setTnum(tnum);
		sdto.setSid(sid);
		sdto.setSname(sname);
		sdto.setDfs(dfs);
		sdto.setAtime(atime);
		sdto.setDtime(dtime);
		
		StationDao sdao = new StationDao();
		sdao.insertData(sdto);
		
		String action = request.getParameter("action");
		if ("ADD ONE MORE STATION".equals(action)) {
			response.sendRedirect("AddStations.jsp");
		} else if ("CLICK TO DONE".equals(action)) {
			response.sendRedirect("TrainDetails.jsp");
		}	
	}
}
