package Handlers.Member;

import Handlers.Handler;
import VOS.Board.CamMember;
import VOS.Service.CamMemberService;
import org.json.simple.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdCheckHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String id = request.getParameter("id");
    System.out.println(id);
    CamMemberService service = new CamMemberService();
    CamMember m = service.getMemById(id);
    boolean flag = false;
    if (m == null) {
      flag = true;
    }
    JSONObject obj = new JSONObject();
    obj.put("flag", flag);
    String res = obj.toJSONString();
    System.out.println(flag);
    return "responsebody/"+res;
  }
}
