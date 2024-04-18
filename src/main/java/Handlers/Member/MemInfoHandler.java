package Handlers.Member;

import Handlers.Handler;
import VOS.Board.CamMember;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemInfoHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/index.jsp";
    if(request.getMethod().equals("GET")){ // get 요청 id 로 검색
      HttpSession session = request.getSession(false);
      String loginId = (String) session.getAttribute("loginId");
      CamMemberService service = new CamMemberService();

      CamMember m = service.getMemById(loginId);

      request.setAttribute("mem", m);
      request.setAttribute("view","/mem/info.jsp");

    } else {
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String name = request.getParameter("name");
      String tel = request.getParameter("tel");
      String email = request.getParameter("email");
      CamMemberService service = new CamMemberService();
      service.updateMem(new CamMember(0,id,pwd,name,tel,email));
      request.setAttribute("view", null);
    }

    return view;
  }
}
