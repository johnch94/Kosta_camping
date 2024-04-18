package Handlers.Board;

import Handlers.Handler;
import VOS.Board.CamBoard;
import VOS.Service.CamBoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class BoardListHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    CamBoardService service = new CamBoardService();
    ArrayList<CamBoard> list = service.getBoardAll();
    request.setAttribute("list", list);
    request.setAttribute("view", "/board/list.jsp");
    return "/index.jsp";
  }
}
