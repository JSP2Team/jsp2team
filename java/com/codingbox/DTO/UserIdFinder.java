package com.codingbox.DTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserIdFinder {

    // Oracle DB 연결 정보
    private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:XE";
    private static final String DB_USER = "사용자_이름";
    private static final String DB_PASSWORD = "비밀_암호";

    public static String findUserId(String userName, String userTel) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String userId = null;

        try {
            // JDBC 드라이버 로드
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // 데이터베이스 연결
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL 쿼리 작성
            String sql = "SELECT userid FROM users WHERE user_name = ? AND user_tel = ?";

            // PreparedStatement 생성
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userName);
            pstmt.setString(2, userTel);

            // 쿼리 실행 및 결과 조회
            rs = pstmt.executeQuery();

            // 결과가 존재하면 user_id를 가져옴
            if (rs.next()) {
                userId = rs.getString("userid");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // 연결 및 자원 해제
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return userId;
    }

    public static void main(String[] args) {
        // 아이디 찾기 페이지에서 입력받은 사용자 이름과 전화번호를 받아옴
        String userName = "입력한_사용자_이름";
        String userTel = "입력한_사용자_전화번호";

        String userId = findUserId(userName, userTel);

        if (userId != null) {
            System.out.println("아이디: " + userId);
        } else {
            System.out.println("일치하는 정보가 없습니다.");
        }
    }
}
