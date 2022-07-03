package khairatDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	static Connection con;
	private static final String DB_DRIVER = "org.postgresql.Driver";
	private static final String DB_CONNECTION = "jdbc:postgresql://ec2-3-234-131-8.compute-1.amazonaws.com/d19mjejga32und";
	private static final String DB_USER = "imguxthqgzxctp";
	private static final String DB_PASSWORD = "65e0c20ac84dd080ed89ff71e0e75299aa31962e3aec8c49e4ec5216ad0f5eef";

	public static Connection getConnection() {
		try {
			try {
				//1. Load driver
				Class.forName(DB_DRIVER);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			//2. Create connection
			con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD); //(database name,db username,db password)
			System.out.println("Database connected");
		}catch(SQLException e) {
			System.out.println(e);
		}
		return con;
	}
}
