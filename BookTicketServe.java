package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import master.dao.BookTicketDao;
import master.dao.StationDao;
import master.dto.BookTicketDto;

@WebServlet("/BookTicketServe")
public class BookTicketServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        // get form data
        String trainNo = request.getParameter("trainNo");
        String trainName = request.getParameter("trainName");
        String pname = request.getParameter("pname");
        String gender = request.getParameter("gender");
        String ageStr = request.getParameter("age");
        String fstation = request.getParameter("fromStation");
        String tstation = request.getParameter("toStation");
       
        StationDao sdao=new StationDao();
        double fare= sdao.calculateFare(fstation, tstation);        

        // fill dto
        BookTicketDto tdto = new BookTicketDto();
        tdto.setTrainNo(trainNo);
        tdto.setTrainName(trainName);
        tdto.setFromStation(fstation);
        tdto.setToStation(tstation);
        tdto.setPassengerName(pname);
        tdto.setAge(Integer.parseInt(ageStr));
        tdto.setGender(gender);
        tdto.setFare(fare);

        // save in DB
        BookTicketDao tdao = new BookTicketDao();
        tdao.insertData(tdto);

        // put dto in request scope
        request.setAttribute("ticket", tdto);

        // forward to JSP
        RequestDispatcher rd = request.getRequestDispatcher("ShowTicket.jsp");
        rd.forward(request, response);
    }
}
