package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTemplate {
	// DB연결을 1번만 생성하여 사용할 수 있도록함
	// 1번만 생성하는 이유는 DB부하를 줄이기 위해서..
	// 1번만 생성하는 기법은 싱글톤 디자인 패턴 기법

	public JDBCTemplate() {
		// JDBCTemplate 객체가 생성되면서 드라이버 등록을 함
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// JDBCTemplate 객체를 한번만 생성하기 위해 필요한 멤버변수(instance)
	private static JDBCTemplate instance;
	public static JDBCTemplate getConnection() {
		if(instance == null) {
			instance = new JDBCTemplate();
		}
		return instance;
	}

	public static Connection createConnection() throws SQLException{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "WASSUP";
		String password = "WASSUP";
		return DriverManager.getConnection(url,user,password);
	}

//	connection, statement, resultset연결 닫기
	public static void close(Connection conn) {
		try{
			if(conn != null & conn.isClosed()) {
				conn.close();
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try{
			if(stmt != null & stmt.isClosed()) {
				stmt.close();
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try{
			if(rset != null & rset.isClosed()) {
				rset.close();
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	// 커밋과 롤백 메소드
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
