package admin.AdminDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import khairatDB.ConnectionManager;
import user.model.Admin;
import user.model.Member;

import static java.lang.System.out;

public class AdminDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement statement = null;
	static ResultSet rs = null;
	//String dbURL = "jdbc:postgresql://ec2-3-234-131-8.compute-1.amazonaws.com/d19mjejga32und";
    //String user = "imguxthqgzxctp";
    //String pass = "65e0c20ac84dd080ed89ff71e0e75299aa31962e3aec8c49e4ec5216ad0f5eef";
    
    
    
    //connection to database
    //protected Connection getConnection() {
        //Connection con = null;
        //try {
            //Class.forName("org.postgresql.Driver");
            //con = DriverManager.getConnection(dbURL, user, pass);
        //} catch (SQLException e) {
            //e.printStackTrace();
        //} catch (ClassNotFoundException e) {
            //e.printStackTrace();
        //}
        //return con;

    //}
    
    
    //GET ADMIN BY ID
    public Admin getAdminById(int adminid) {
    	Admin a = new Admin();
    	try{
    		con = ConnectionManager.getConnection();
    		PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE adminid=?");
    		ps.setInt(1, adminid);
    		ResultSet rs = ps.executeQuery();
			rs = ps.executeQuery();
			if(rs.next()) {
				a.setAdminid(rs.getInt("adminid"));
				a.setAdmin_icnum(rs.getString("admin_icnum"));
				a.setAdd_name(rs.getString("add_name"));
				a.setAdd_age(rs.getInt("add_age"));
				a.setAdd_email(rs.getString("add_email"));
				a.setAdd_password(rs.getString("add_password"));
				a.setAdd_phonenum(rs.getString("add_phonenum"));
				a.setSupervisorid(rs.getString("supervisorid"));
			}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return a;
    }
    
    //UPDATE ADMIN
    public void updateAdmin(Admin admin) {
    	//int id = admin.getAdminid();
    	String icnum = admin.getAdmin_icnum();
    	String name = admin.getAdd_name();
    	int age = admin.getAdd_age();
    	String email = admin.getAdd_email();
    	String password = admin.getAdd_password();
    	String phonenum = admin.getAdd_phonenum();
    	
    	try
    		{
    		con = ConnectionManager.getConnection();
    		ps = con.prepareStatement("UPDATE admin SET admin_icnum=?,add_name=?,add_age=?,add_email=?,add_password=?,add_phonenum=?");
    		ps.setString(1, icnum);
    		ps.setString(2, name);
    		ps.setInt(3, age);
    		ps.setString(4, email);
    		ps.setString(5, password);
    		ps.setString(6, phonenum);
    		
    		//execute query
			ps.executeUpdate();
			System.out.println("Successfully updated");
			//close
			con.close();
    	}catch(Exception e) {
			e.printStackTrace();
		}
    }
    
    //CREATE NEW MEMBER 
    public void addMember(Member member) {
    	String name = member.getMem_name();
    	String icnum = member.getMem_icnum();
    	int age = member.getMem_age();
    	String address = member.getMem_address();
    	String email = member.getMem_email();
    	String phonenum = member.getMem_phonenum();
    	String password = member.getMem_password();
    	String repname = member.getRepresentative_icnum();
    	String repicnum = member.getRepresentative_icnum();
    	
    	try
    	{
    		con = ConnectionManager.getConnection();
    		ps = con.prepareStatement("INSERT INTO member(mem_name,mem_icnum,mem_age,mem_address,mem_email,mem_phonenum,mem_password,repname,repnnum) values(?,?,?,?,?,?,?,?,?)");
    		ps.setString(1, name);
    		ps.setString(2,icnum);
    		ps.setInt(3, age);
    		ps.setString(4, address);
    		ps.setString(5, email);
    		ps.setString(6, phonenum);
    		ps.setString(7, password);
    		ps.setString(8, repname);
    		ps.setString(9, repicnum);
    		
    		out.println(ps);
            ps.executeUpdate();
            
            con.close();
    	}
    	catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    //VIEW MEMBER LIST
    public static List<Member> getListMember(){
    	
    	List<Member> member = new ArrayList<Member>();
    	
    	try {
    		//CONNECT TO DB
    		con = ConnectionManager.getConnection();
    		//CREATE STATEMENT
    		PreparedStatement ps = con.prepareStatement("SELECT * FROM member WHERE memberid=?");
    		//EXECUTE QUERY
    		ResultSet rs = ps.executeQuery();
    		
    		while(rs.next()) {
    			Member mem = new Member();
    			mem.setMemberid(rs.getInt("memberid"));
    			mem.setMem_name(rs.getString("mem_name"));
    			mem.setMem_icnum(rs.getString("mem_icnum"));
    			mem.setMem_age(rs.getInt("mem_age"));
    			mem.setMem_address(rs.getString("mem_address"));
    			mem.setMem_email(rs.getString("mem_email"));
    			mem.setMem_phonenum(rs.getString("mem_phonenum"));
    			mem.setMem_password(rs.getString("mem_password"));
    			mem.setRepresentative_name(rs.getString("repname"));
    			mem.setRepresentative_icnum(rs.getString("repnum"));
    			
    		}
    		con.close();
    	}catch(SQLException e) {
			e.printStackTrace();
		}
    	return member;
    }
}
