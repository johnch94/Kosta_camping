package Handlers.Board;

import Handlers.Handler;
import VOS.Board.CamBoard;
import VOS.Service.CamBoardService;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class BoardMyListHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    CamBoardService service = new CamBoardService();
    CamMemberService mservice = new CamMemberService();
    HttpSession session = request.getSession(false);
    String id = (String) session.getAttribute("loginId");
    ArrayList<CamBoard> list =  service.getBoardByMember(mservice.getMemById(id).getNum());
    request.setAttribute("list", list);
    request.setAttribute("view", "/product/list.jsp");
    return "/index.jsp";
  }
}
