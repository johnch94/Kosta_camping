package Handlers.Member;

import Handlers.Handler;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemOutHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "";
    if (request.getMethod().equals("GET")){
      HttpSession session = request.getSession(false);
      String loginId = (String) session.getAttribute("loginId");
      CamMemberService service = new CamMemberService();
      service.delMem(loginId);
      view = "/mem/logout.do";
    }
    return view;
  }
}
