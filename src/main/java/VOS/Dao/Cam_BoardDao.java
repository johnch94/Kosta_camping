package VOS.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VOS.Cam_Board.Cam_Board;
import conn.DBConnect;

public class Cam_BoardDao {
	private DBConnect db;
	
	public Cam_BoardDao() {
		db = DBConnect.getInstance();
	}
	
	public void insert(Cam_Board cb) {
		Connection conn = db.conn();
		String sql = "INSERT INTO cam_board VALUES(seq_board.nextval, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cb.getWriter());
			pstmt.setString(2, cb.getArea());
			pstmt.setInt(3, cb.getPrice());
			pstmt.setString(4, cb.getTitle());
			pstmt.setString(5, cb.getContent());
			pstmt.setString(6, cb.getImg1());
			pstmt.setInt(7, cb.getFnt());
			pstmt.setString(8, cb.getImg2());
			pstmt.setString(9, cb.getImg3());
			
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + " 개 게시글 추가");
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
	
	public Cam_Board selectByNum(int bnum) {
		Connection conn = db.conn();
		String sql = "SELECT * FROM cam_board WHERE bnum = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bnum);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				return new Cam_Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),rs.getString(11));
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
		return null;
	}
	
	public ArrayList<Cam_Board> selectByArea(String area) {
		Connection conn = db.conn();
		String sql = "SELECT * FROM cam_board WHERE Area=? LIKE ? ORDER BY num";
		ArrayList<Cam_Board> list = new ArrayList<Cam_Board>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%" + area + "%");
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Cam_Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),rs.getString(11)));
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
	
	public ArrayList<Cam_Board> selectByTitle(String title) {
		Connection conn = db.conn();
		String sql = "SELECT * FROM cam_board WHERE title=? LIKE ? ORDER BY num";
		ArrayList<Cam_Board> list = new ArrayList<Cam_Board>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, title);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Cam_Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),rs.getString(11)));
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
	
	public ArrayList<Cam_Board> selectAll() {
		Connection conn = db.conn();
		ArrayList<Cam_Board> list = new ArrayList<Cam_Board>();
		String sql = "SELECT * FROM cam_board ORDER BY bnum";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new Cam_Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),rs.getString(11)));
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
	
	public void update(Cam_Board cb) {
		Connection conn = db.conn();
		String sql = "UPDATE cam_board SET area=?, price=?, title=?, content=? WHERE bnum = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cb.getArea());
			pstmt.setInt(2, cb.getPrice());
			pstmt.setString(3, cb.getTitle());
			pstmt.setString(4, cb.getContent());
			pstmt.setInt(5, cb.getBnum());
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + "개 게시글 수정");
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
	
	public void updateImg(int bnum, String col, String fname) {
		Connection conn = db.conn();
		String sql = "UPDATE cam_board SET " + col + "=? WHERE bnum=?";
		int cnt = 0;

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fname);
			pstmt.setInt(2, bnum);

			cnt = pstmt.executeUpdate();// 처리된 줄 수 반환
			System.out.println(cnt + " 개의 게시글 이미지 수정");
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
	
	public void delete(int bnum) {
		Connection conn = db.conn();
		String sql = "DELETE cam_board WHERE bnum=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + " 개 게시물 삭제");
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
