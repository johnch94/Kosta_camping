package VOS.Service;

import VOS.CamMember;
import VOS.Dao.CamMemberDao;

import java.util.ArrayList;

public class CamMemberService {
  private CamMemberDao dao;
  public CamMemberService(){
    dao = new CamMemberDao();
  }
  public void addMem(CamMember c){
    dao.insert(c);
  }
  public void delMem(String id){
    dao.delete(id);
  }
  public void updateMem(CamMember c){
    dao.update(c);
  }
  public CamMember getMem(int num){
    return dao.select(num);
  }
  public ArrayList<CamMember> getMemAll(){
    return dao.selectall();
  }
  public CamMember getMemById(String id){
    return dao.selectById(id);
  }
}
