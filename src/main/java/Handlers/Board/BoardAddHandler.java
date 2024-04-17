package Handlers.Board;

import Handlers.Handler;
import VOS.CamBoard;
import VOS.Service.CamBoardService;
import VOS.Service.CamMemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

public class BoardAddHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/index.jsp";
    String path = "";
    if(request.getMethod().equals("POST")){
      int size = 100*1024*1024;
      try {
        CamBoardService service = new CamBoardService();
        CamMemberService mservice = new CamMemberService();

        MultipartRequest multipart = new MultipartRequest(request, path, size, "utf-8",
            new DefaultFileRenamePolicy());
        HttpSession session = request.getSession(false);

        String id = (String) session.getAttribute("loginId");
        int mnum = service.getBoard(mservice.getMemById(id).getNum()).getMnum();
        String title = multipart.getParameter("title");
        String content = multipart.getParameter("content");
        File img = multipart.getFile("img");
        String imgNames = img.getName();
        service.addBoard(new CamBoard(0, mnum, title, null, imgNames, content));
        view ="redirect:/product/mylist.do?id="+id;

      } catch (IOException e) {
        e.printStackTrace();
      }
    } else {
      request.setAttribute("view", "/product/add.jsp");
    }
    return view;
  }
}
