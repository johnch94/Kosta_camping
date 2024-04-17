package VOS.Service;

import VOS.CamComment;
import VOS.Dao.CamCommentDao;

import java.util.ArrayList;

public class CamCommentService {
  private CamCommentDao dao;
  public CamCommentService(){
    dao = new CamCommentDao();
  }
//  public void addCmt(CamComment c){
//    dao.insert(c);
//  }
//  public void delCmt(int num){
//    dao.delete(num);
//  }
//  public void updateCmt(CamComment c){
//    dao.update(c);
//  }
//  public CamComment getCmt(int num){
//    return dao.select(num);
//  }
//  public ArrayList<CamComment> getCmtAll(){
//    return dao.selectall();
//  }
}
