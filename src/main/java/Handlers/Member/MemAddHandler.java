package Handlers.Member;

import Handlers.Handler;
import VOS.Board.CamMember;
import VOS.Service.CamMemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemAddHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/mem/memAdd.jsp";
    if(request.getMethod().equals("POST")){ // 전송방식이 post인가?

      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String name = request.getParameter("name");
      String tel = request.getParameter("tel");
      String email = request.getParameter("email");
      System.out.println(id);
      System.out.println(pwd);
      CamMemberService service = new CamMemberService();
      service.addMem(new CamMember(0, id, pwd, name, tel, email));

      view = "/mem/memSuccess.jsp";

    } else {
      request.setAttribute("view", "/mem/memAdd.jsp");
    }
    return view;
  }
}
