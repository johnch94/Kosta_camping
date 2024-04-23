package Handlers.Cam_Board;

import board.Cam_Board;
import board.Cam_BoardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import Handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Cam_BoardEditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "";
		
		if(request.getMethod().equals("GET")) {
			int bnum = Integer.parseInt(request.getParameter("bnum"));

			Cam_BoardService service = new Cam_BoardService();
			Cam_Board cb = service.getByNum(bnum);
			
			request.setAttribute("cb", cb);
			request.setAttribute("bnum", bnum);
			view = "/cam_board/edit.jsp";
		} else {
			int size = 100 * 1024 * 1024;
			try {
				MultipartRequest multipart = new MultipartRequest(request, Cam_BoardService.path, size, "utf-8",
						new DefaultFileRenamePolicy());
				
				int bnum = Integer.parseInt(multipart.getParameter("bnum"));
				String area = multipart.getParameter("area");
				int price = Integer.parseInt(multipart.getParameter("price"));
				String title = multipart.getParameter("title");
				String content = multipart.getParameter("content");
				
				Cam_BoardService service = new Cam_BoardService();
				service.edit(new Cam_Board(bnum, null, area, price, title, null, content, "", 0, "", ""));
				
				
				
				view = "redirect:/cam_board/detail.do?bnum=" + bnum;
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return view;
	}

}
