package master.dao;
import java.sql.*;

import master.dto.TrainDto;
import master.utilities.ConnectionFactory;

public class TrainDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="INSERT INTO TRAIN VALUES(?,?,?,?,?)";
    private String delete_sql="DELETE FROM TRAIN WHERE TNUMBER=?"; //private String
	 //update_sql="UPDATE FOOD SET FNAME = ?, PRICE = ? WHERE FID = ?"; p
	private String find_sql="SELECT DISTINCT t1.SERIAL_NO, t1.TNUMBER, t1.TNAME,t1.START_STATION, t1.END_STATION " +
            "FROM MAIN t1 " +
            "JOIN MAIN t2 ON t1.TNUMBER = t2.TNUMBER " +
            "WHERE t1.SNAME = ? " +
            "AND t2.SNAME = ? " +
            "AND t1.SID < t2.SID";
	public ResultSet findTname(String sstn1, String estn1){
		try{
			master.utilities.ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn(); 
			ps=cn.prepareStatement(find_sql);
			ps.setString(1,sstn1); 
			ps.setString(2,estn1); 
			rs=ps.executeQuery();//execute the query and store thedata into resultset 
		}
	   catch(SQLException se) { 
		   se.printStackTrace(); 
	   } 
	   return rs; 
	}
	
	public void insertData(TrainDto tdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setInt(1, tdto.getSno());
			ps.setString(2, tdto.getTnum());
			ps.setString(3, tdto.getTname());
			ps.setString(4, tdto.getSstn());
			ps.setString(5, tdto.getEstn());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}	
	
	  public void deleteData(TrainDto tdto) {
		  try {
			  master.utilities.ConnectionFactory cf=new ConnectionFactory();
			  cn=cf.getConn();
			  ps=cn.prepareStatement(delete_sql);
			  ps.setString(1,tdto.getTnum()); 
			  ps.executeUpdate(); 
		  } 
		  catch(SQLException se) {
				  se.printStackTrace(); 
		  } 
	  }
	  
	 /* public void updateData(FoodDto fdto) { try {
	 * master.utilities.ConnectionFactory cf=new ConnectionFactory();
	 * cn=cf.getConn(); ps=cn.prepareStatement(update_sql); ps.setString(1,
	 * fdto.getFname()); ps.setDouble(2, fdto.getPrice()); ps.setString(3,
	 * fdto.getFid()); ps.executeUpdate(); //STORING DATA } catch(SQLException se) {
	 * se.printStackTrace(); } }
	 */
}
