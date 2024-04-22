package VOS.Dao;

import VOS.Board.CamBoard;
import conn.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CamBoardDao {
  private DBConnect db;
  public CamBoardDao(){
    db = DBConnect.getInstance();
  }

  public void insert(CamBoard d) {
    Connection conn = db.conn();
    String sql = "insert into Cam_Board values(Board_sequence.nextval,?,?,sysdate,?,?)";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, d.getMnum());
      pstmt.setString(2, d.getTitle());
      pstmt.setString(3, d.getImg());
      pstmt.setString(4, d.getContent());
      int cnt = pstmt.executeUpdate();
      System.out.println(cnt + " 줄 추가됨");
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }

  public void delete(int num) {
    Connection conn = db.conn();
    String sql = "delete Cam_Board where bnum=?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);
      int cnt = pstmt.executeUpdate();
      System.out.println(cnt + " 줄 삭제됨");
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
  public void update(CamBoard c) {
    Connection conn = db.conn();
    String sql = "update Cam_Board set title=?, img=?, content=? where bnum=?";
    int cnt;
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, c.getTitle());
      pstmt.setString(2, c.getImg());
      pstmt.setString(3, c.getContent());
      pstmt.setInt(4, c.getBnum());
      cnt = pstmt.executeUpdate();
      System.out.println(cnt + " 줄이 수정됨");
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
  public CamBoard select(int num) {
    Connection conn = db.conn();
    String sql = "select * from Cam_Board where bnum=?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);
      ResultSet rs = pstmt.executeQuery();
      if(rs.next()) {
        return new CamBoard(rs.getInt(1), rs.getInt(2), rs.getString(3),
            rs.getString(4), rs.getString(5), rs.getString(6));
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return null;
  }
  public ArrayList<CamBoard> selectall() {
    Connection conn = db.conn();
    String sql = "select * from Cam_Board order by bnum";
    ArrayList<CamBoard> list = new ArrayList<>();
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        list.add(new CamBoard(rs.getInt(1), rs.getInt(2), rs.getString(3),
            rs.getString(4), rs.getString(5), rs.getString(6)));
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return list;
  }
  public ArrayList<CamBoard> selectByMnum(int num) {
    Connection conn = db.conn();
    String sql = "select * from Cam_Board where mnum=? order by bnum";
    ArrayList<CamBoard> list = new ArrayList<>();
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        list.add(new CamBoard(rs.getInt(1), rs.getInt(2), rs.getString(3),
            rs.getString(4), rs.getString(5), rs.getString(6)));
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return list;
  }
}
