package Handlers.Member;

import Handlers.Handler;
import VOS.CamMember;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemAddHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/index.jsp";
    if(request.getMethod().equals("POST")){ // 전송방식이 post인가?

      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String tel = request.getParameter("tel");
      String name = request.getParameter("name");
      String email = request.getParameter("email");

      CamMemberService service = new CamMemberService();
      service.addMem(new CamMember(0, id, pwd, tel, name, email));

      view = "/index.jsp";

    }else {
      request.setAttribute("view", "/mem/join.jsp");
    }
    return view;
  }
}
