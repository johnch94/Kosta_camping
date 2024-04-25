package Handlers.Member;

import Handlers.Handler;
import VOS.Board.CamMember;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLoginHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/mem/memLogin.jsp"; // get 요청일때 이동할 페이지
    if(request.getMethod().equals("POST")){
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      CamMemberService service = new CamMemberService();
      CamMember m = service.getMemById(id);
      String msg = "";
      if (m == null) {
        msg = "없는 아이디";
      } else {
        if (pwd.equals(m.getPw())) {
          msg = "로그인 성공";
          HttpSession session = request.getSession();
          session.setAttribute("loginId", id);
          view = "/index.jsp";
        } else {
          msg = "비번 오류";
        }
      }
      request.setAttribute("msg", msg);
    }else {
      request.setAttribute("view", "/mem/memLogin.jsp");
    }
    return "redirect:"+view;
  }
}
