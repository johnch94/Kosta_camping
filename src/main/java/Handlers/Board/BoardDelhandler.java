package Handlers.Board;

import Handlers.Handler;
import VOS.Service.CamBoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDelhandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    int bnum =Integer.parseInt(request.getParameter("num"));
    CamBoardService service = new CamBoardService();
    service.delBoard(bnum);
    return "redirect:/board/list.do";
  }
}
