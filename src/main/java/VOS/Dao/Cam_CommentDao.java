package VOS.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VOS.Cam_Board.Cam_Comment;
import conn.DBConnect;

public class Cam_CommentDao {
	private DBConnect db;
	
	public Cam_CommentDao() {
		db = DBConnect.getInstance();
	}
	
	public void insert(Cam_Comment cc) {
		Connection conn = db.conn();
		String sql = "INSERT INTO cam_comment VALUES(seq_comment.nextval, ?, ?, ?, sysdate)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cc.getBody());
			pstmt.setInt(2, cc.getBnum());
			pstmt.setString(3, cc.getWriter());
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + " 개의 댓글 추가");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<Cam_Comment> selectByBnum(int bnum) {
		Connection conn = db.conn();
		String sql = "SELECT * FROM cam_comment WHERE bnum=? ORDER BY cnum";
		ArrayList<Cam_Comment> list = new ArrayList<Cam_Comment>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Cam_Comment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getDate(5)));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public void delComment(int cnum) {
		Connection conn = db.conn();
		String sql = "DELETE cam_comment WHERE cnum=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cnum);
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + " 개의 댓글 삭제");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
