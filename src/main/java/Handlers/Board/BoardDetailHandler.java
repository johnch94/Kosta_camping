package Handlers.Board;

import Handlers.Handler;
import VOS.Board.CamBoard;
import VOS.Service.CamBoardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class BoardDetailHandler implements Handler {
  @Override
  public String process(HttpServletRequest request, HttpServletResponse response) {
    String view = "/index.jsp";
    String path = "";
    int size = 100*1024*1024;
    if(request.getMethod().equals("GET")) {
      int mnum = Integer.parseInt(request.getParameter("num"));
      CamBoardService service = new CamBoardService();
      CamBoard c = service.getBoard(mnum);
      request.setAttribute("c", c);
      request.setAttribute("view", "/product/details.jsp"); // detail seller <-> detail customer = detailc
    } else {
      int mnum = Integer.parseInt(request.getParameter("num"));
      try {
        MultipartRequest multipart = new MultipartRequest(request, path, size, "utf-8",
            new DefaultFileRenamePolicy());
        CamBoardService service = new CamBoardService();
        String title = multipart.getParameter("title");
        String content = multipart.getParameter("content");
        File img = multipart.getFile("img");
        String imgName = img.getName();
        service.updateBoard(new CamBoard(0, 0, title, null, imgName, content));
        view = "redirect:/product/detail.do?num="+mnum;
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
    return view;
  }
}
