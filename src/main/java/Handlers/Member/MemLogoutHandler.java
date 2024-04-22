package Handlers.Member;

import Handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLogoutHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    HttpSession session = request.getSession(false);
    session.invalidate();
    return "redirect:/index.jsp";
  }
}
