package VOS.Service;

import VOS.Board.CamBoard;
import VOS.Dao.CamBoardDao;

import java.util.ArrayList;

public class CamBoardService {
  private CamBoardDao dao;
  public CamBoardService(){
    dao = new CamBoardDao();
  }
  public void addBoard(CamBoard c){
    dao.insert(c);
  }
  public void delBoard(int num){
    dao.delete(num);
  }
  public void updateBoard(CamBoard c){
    dao.update(c);
  }
  public CamBoard getBoard(int num){
    return dao.select(num);
  }
  public ArrayList<CamBoard> getBoardAll(){
    return dao.selectall();
  }
  public ArrayList<CamBoard> getBoardByMember(int num){
    return dao.selectByMnum(num);
  }

}
