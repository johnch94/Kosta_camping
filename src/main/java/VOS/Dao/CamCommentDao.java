package VOS.Dao;

import conn.DBConnect;

public class CamCommentDao {
  private DBConnect db;
  public CamCommentDao(){
    db = DBConnect.getInstance();
  }

//  public void insert(CamComment d) {
//    Connection conn = db.conn();
//    String sql = "insert into CamComment values(Comment_sequence.nextval,?,?,?,?,sysdate,?)";
//    try {
//      PreparedStatement pstmt = conn.prepareStatement(sql);
//      pstmt.setString(1, d.getBody());
//      pstmt.setInt(2, d.getBnum());
//      pstmt.setInt(3, d.getMnum());
//      int cnt = pstmt.executeUpdate();
//      System.out.println(cnt + " 줄 추가됨");
//    } catch (SQLException e) {
//      e.printStackTrace();
//    } finally {
//      try {
//        conn.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
//    }
//  }
//
//  public void delete(int num) {
//    Connection conn = db.conn();
//    String sql = "delete CamComment where cnum=?";
//    try {
//      PreparedStatement pstmt = conn.prepareStatement(sql);
//      pstmt.setInt(1, num);
//      int cnt = pstmt.executeUpdate();
//      System.out.println(cnt + " 줄 삭제됨");
//    } catch (SQLException e) {
//      e.printStackTrace();
//    } finally {
//      try {
//        conn.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
//    }
//  }
//  public void update(CamComment c) {
//    Connection conn = db.conn();
//    String sql = "update CamComment set body=? where cnum=?";
//    int cnt;
//    try {
//      PreparedStatement pstmt = conn.prepareStatement(sql);
//      pstmt.setString(1, c.getBody());
//      pstmt.setInt(2, c.getCnum());
//      cnt = pstmt.executeUpdate();
//      System.out.println(cnt + " 줄이 수정됨");
//    } catch (SQLException e) {
//      e.printStackTrace();
//    } finally {
//      try {
//        conn.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
//    }
//  }
//  public CamComment select(int num) {
//    Connection conn = db.conn();
//    String sql = "select * from CamComment where cnum=?";
//    try {
//      PreparedStatement pstmt = conn.prepareStatement(sql);
//      pstmt.setInt(1, num);
//      ResultSet rs = pstmt.executeQuery();
//      if(rs.next()) {
//        return new CamComment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
//            rs.getInt(5), rs.getString(6), rs.getInt(7));
//      }
//    } catch (SQLException e) {
//      e.printStackTrace();
//    } finally {
//      try {
//        conn.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
//    }
//    return null;
//  }
//  public ArrayList<CamComment> selectall() {
//    Connection conn = db.conn();
//    String sql = "select * from CamComment order by bnum";
//    ArrayList<CamComment> list = new ArrayList<>();
//    try {
//      PreparedStatement pstmt = conn.prepareStatement(sql);
//      ResultSet rs = pstmt.executeQuery();
//      while (rs.next()) {
//        list.add(new CamComment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
//            rs.getInt(5), rs.getString(6), rs.getInt(7)));
//      }
//    } catch (SQLException e) {
//      e.printStackTrace();
//    } finally {
//      try {
//        conn.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
//    }
//    return list;
//  }
}
