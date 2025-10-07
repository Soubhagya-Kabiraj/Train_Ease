package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import master.dto.BookTicketDto;
import master.dto.TrainDto;
import master.utilities.ConnectionFactory;

public class BookTicketDao {
    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    // SQL queries
    private String insert_sql = "INSERT INTO TICKETS (TRAIN_NO, TRAIN_NAME, FROM_STATION, TO_STATION, PASSENGER_NAME, AGE, GENDER, FARE) VALUES (?,?,?,?,?,?,?,?)";
    private String show_sql="SELECT * FROM TICKETS WHERE PASSENGER_NAME=? ";
    private String delete_sql="DELETE FROM TICKETS WHERE TICKET_ID=? AND PASSENGER_NAME=?";
    private String showAll_sql="SELECT * FROM TICKETS";
    
    public ResultSet getTickets() {
        ResultSet rs = null;
        try {
            ConnectionFactory cf = new ConnectionFactory();
            cn = cf.getConn();
            ps = cn.prepareStatement(showAll_sql);     
            rs = ps.executeQuery();
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return rs;
    }
    public void deleteData(int id, String pname) {
		  try {
			  master.utilities.ConnectionFactory cf=new ConnectionFactory();
			  cn=cf.getConn();
			  ps=cn.prepareStatement(delete_sql);
			  ps.setInt(1,id);
			  ps.setString(2, pname);
			  ps.executeUpdate(); 
		  } 
		  catch(SQLException se) {
				  se.printStackTrace(); 
		  } 
	  }
    public ResultSet getTicketsByPassenger(String passengerName) {
        ResultSet rs = null;
        try {
            ConnectionFactory cf = new ConnectionFactory();
            cn = cf.getConn();
            ps = cn.prepareStatement(show_sql);
            ps.setString(1, passengerName);
            rs = ps.executeQuery();
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return rs;
    }

    public void insertData(BookTicketDto dto) {
        try {
            ConnectionFactory cf = new ConnectionFactory();
            cn = cf.getConn();

            // prepare statement with RETURN_GENERATED_KEYS
            ps = cn.prepareStatement(insert_sql, PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setString(1, dto.getTrainNo());
            ps.setString(2, dto.getTrainName());
            ps.setString(3, dto.getFromStation());
            ps.setString(4, dto.getToStation());
            ps.setString(5, dto.getPassengerName());
            ps.setInt(6, dto.getAge());
            ps.setString(7, dto.getGender());
            ps.setDouble(8, dto.getFare());

            ps.executeUpdate();

            // fetch generated ticketId
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                dto.setTicketId(rs.getInt(1));
            }

        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
