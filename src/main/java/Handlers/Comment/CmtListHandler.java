package Handlers.Comment;

import Handlers.Handler;
import VOS.Service.CamCommentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CmtListHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    CamCommentService service = new CamCommentService();
//    ArrayList<CamComment> list = service.getCmtAll();
//    request.setAttribute("clist", list);
    request.setAttribute("view", "/board/list.jsp");
    return "/index.jsp";
  }
}
