package VOS.Dao;

import VOS.Board.CamMember;
import conn.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CamMemberDao {
  private DBConnect db;
  public CamMemberDao(){
    db = DBConnect.getInstance();
  }

  public void insert(CamMember d) {
    Connection conn = db.conn();
    String sql = "insert into Cam_Member values(Member_sequence.nextval,?,?,?,?,?)";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, d.getId());
      pstmt.setString(2, d.getPw());
      pstmt.setString(3, d.getName());
      pstmt.setString(4, d.getTel());
      pstmt.setString(5, d.getMail());
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

  public void delete(String id) {
    Connection conn = db.conn();
    String sql = "delete Cam_Member where id=?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
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
  public void update(CamMember c, String id) {
    Connection conn = db.conn();
    String sql = "update Cam_Member set pw=?, name=?, mail=?, tel=? where id=?";
    int cnt;
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, c.getPw());
      pstmt.setString(2, c.getName());
      pstmt.setString(3, c.getMail());
      pstmt.setString(4, c.getTel());
      pstmt.setString(5, id);
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
  public CamMember select(int num) {
    Connection conn = db.conn();
    String sql = "select * from Cam_Member where num=?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);
      ResultSet rs = pstmt.executeQuery();
      if(rs.next()) {
        return new CamMember(rs.getInt(1), rs.getString(2), rs.getString(3),
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
  public ArrayList<CamMember> selectall() {
    Connection conn = db.conn();
    String sql = "select * from Cam_Member";
    ArrayList<CamMember> list = new ArrayList<>();
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        list.add(new CamMember(rs.getInt(1), rs.getString(2), rs.getString(3),
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

  public CamMember selectById(String id){
    Connection conn = db.conn();
    String sql = "select * from Cam_Member where id=?";
    CamMember mem = null;
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
      ResultSet rs = pstmt.executeQuery();
      if(rs.next()) {
        mem = new CamMember(rs.getInt(1), rs.getString(2), rs.getString(3),
            rs.getString(4), rs.getString(5), rs.getString(6));
        System.out.println(mem);
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
    return mem;
  }
}
