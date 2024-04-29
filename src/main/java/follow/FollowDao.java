package follow;

import conn.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FollowDao {
    DBConnect db;
    public FollowDao() {
        db = DBConnect.getInstance();
    }
    public void insert(Follow follow)  {
        Connection conn = db.conn();
        String sql = "insert into cam_follow values(seq_follow.nextval,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,follow.getMember_num());
            ps.setInt(2,follow.getBoard_num());
            int cnt = ps.executeUpdate();
            System.out.println(cnt);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public void delete(String id,int bnum){
        Connection conn = db.conn();
        String sql = "delete from cam_follow where id=? and bnum=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            ps.setInt(2,bnum);
            int cnt = ps.executeUpdate();
            System.out.println(cnt);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public ArrayList<Follow> selectByMember_Num(String id){
        Connection conn = db.conn();
        String sql = "select * from cam_follow where id=?";
        ArrayList<Follow> follows = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Follow follow = new Follow();
                follow.setNum(rs.getInt("num"));
                follow.setMember_num(rs.getString("id"));
                follow.setBoard_num(rs.getInt("bnum"));
                follows.add(follow);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return follows;
    }
    public boolean isFollow(String id,int bnum){
        Connection conn = db.conn();
        boolean boo = true;
        String sql = "select * from cam_follow where id=? and bnum=?";
        Follow follow = null;
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            pstmt.setInt(2,bnum);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                follow = new Follow(rs.getInt(1),rs.getString(2),rs.getInt(3));
                boo = false;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return boo;
    }
}
