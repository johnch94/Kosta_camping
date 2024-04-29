package Handlers.Cam_Board;

import board.Cam_Board;
import board.Cam_BoardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import Handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class Cam_BoardAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "";
		
		if(request.getMethod().equals("GET")) {
			view = "/cam_board/add.jsp";
		} else {
			int size = 100 * 1024 * 1024;
			try {
                MultipartRequest multipart = new MultipartRequest(request, Cam_BoardService.path, size, "utf-8",
                        new DefaultFileRenamePolicy());

                String writer = multipart.getParameter("writer");
                String area = multipart.getParameter("area");
                int price = Integer.parseInt(multipart.getParameter("price"));
                String title = multipart.getParameter("title");
                String content = multipart.getParameter("content");
                File imgf1 = multipart.getFile("img1");
                String img1 = null;
                if (imgf1 != null) {
                    img1 = imgf1.getName();
                }
                File imgf2 = multipart.getFile("img2");
                String img2 = null;
                if (imgf2 != null) {
                    img2 = imgf2.getName();
                }
                File imgf3 = multipart.getFile("img3");
                String img3 = null;
                if (imgf3 != null) {
                    img3 = imgf3.getName();
                }

                Cam_BoardService service = new Cam_BoardService();
                service.addCam_Board(new Cam_Board(0, writer, area, price, title, null, content, "/kosta_img/"+img1, 0, "/kosta_img/"+img2, "/kosta_img/"+img3));

                view = "redirect:/cam_board/list.do";

            } catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return view;
	}

}
