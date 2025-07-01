package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBConnect {
    public Connection con;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    // 생성자
    public JDBConnect() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");

            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id = "jun";
            String password = "jsp2025";
            con = DriverManager.getConnection(url, id, password);

            System.out.println("DB 연결 성공 (생성자)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 자원 해체 메서드
    public void close() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();
            System.out.println("JDBC 자원 해체");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
