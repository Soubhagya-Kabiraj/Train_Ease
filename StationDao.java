package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.StationDto;

import master.utilities.ConnectionFactory;

public class StationDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="INSERT INTO STATIONS VALUES(?,?,?,?,?,?)";
	private String select_sql="SELECT * FROM MAIN";
	private String details_sql="SELECT * FROM MAIN WHERE TNUMBER=?";
	public double calculateFare(String fromStation, String toStation) {
	    double baseFare = 20.0;   // minimum fare
	    double ratePerKm = 0.5;   // per km rate
	    double fare = 0.0;

	    try {
	        ConnectionFactory cf = new ConnectionFactory();
	        cn = cf.getConn();

	        // Get distance of FROM station
	        ps = cn.prepareStatement("SELECT DI_F_S FROM MAIN WHERE SNAME=?");
	        ps.setString(1, fromStation);
	        ResultSet rsFrom = ps.executeQuery();
	        int distFrom = -1;   // ✅ start with -1
	        if (rsFrom.next()) {
	            distFrom = rsFrom.getInt("DI_F_S");
	        }

	        // Get distance of TO station
	        ps = cn.prepareStatement("SELECT DI_F_S FROM MAIN WHERE SNAME=?");
	        ps.setString(1, toStation);
	        ResultSet rsTo = ps.executeQuery();
	        int distTo = -1;     // ✅ start with -1
	        if (rsTo.next()) {
	            distTo = rsTo.getInt("DI_F_S");
	        }

	        // Calculate fare only if both stations are found
	        if (distFrom != -1 && distTo != -1) {
	            int distance = Math.abs(distTo - distFrom);
	            fare = baseFare + (ratePerKm * distance);
	        }

	    } catch (SQLException se) {
	        se.printStackTrace();
	    }
	    return fare;
	}


	public ResultSet searchTnum(String tnum){ 
		try{
			master.utilities.ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn(); 
			ps=cn.prepareStatement(details_sql);
			ps.setString(1,tnum); 
			rs=ps.executeQuery();//execute the query and store thedata into resultset 
		}
	   catch(SQLException se) { 
		   se.printStackTrace(); 
	   } 
	   return rs; 
	   
	}
	public ResultSet getData(){ 
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory(); 
			cn=cf.getConn(); 
			st=cn.createStatement();
			rs=st.executeQuery(select_sql); 
		} 
		catch(SQLException se) {
			se.printStackTrace(); 
		} 
		return rs; 
	}
	public void insertData(StationDto sdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1, sdto.getTnum());
			ps.setInt(2, sdto.getSid());
			ps.setString(3, sdto.getSname());
			ps.setInt(4, sdto.getDfs());
			ps.setString(5, sdto.getAtime());
			ps.setString(6, sdto.getDtime());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
	
}
