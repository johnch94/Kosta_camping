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
    String sql = "insert into CamMember values(Member_sequence.nextval,?,?,?,?,?)";
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
    String sql = "delete CamMember where id=?";
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
  public void update(CamMember c) {
    Connection conn = db.conn();
    String sql = "update CamMember set pwd=?, name=?, mail=?, tel=?, id=? where num=?";
    int cnt;
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, c.getPw());
      pstmt.setString(2, c.getName());
      pstmt.setString(3, c.getMail());
      pstmt.setString(4, c.getTel());
      pstmt.setString(5, c.getId());
      pstmt.setInt(6, c.getNum());
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
    String sql = "select * from CamMember where num=?";
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
    String sql = "select * from CamMember";
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
    String sql = "select * from CamMember where id=?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
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
}
