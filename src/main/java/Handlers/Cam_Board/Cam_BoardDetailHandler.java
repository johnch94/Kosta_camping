package Handlers.Cam_Board;

import VOS.Cam_Board.Cam_Comment;
import VOS.Service.Cam_CommentService;
import board.Cam_Board;
import board.Cam_BoardService;
import follow.FollowService;
import Handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class Cam_BoardDetailHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "";
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		if(request.getMethod().equals("GET")) {
			Cam_BoardService service = new Cam_BoardService();
			Cam_Board cb = service.getByNum(bnum);
			Cam_CommentService cservice = new Cam_CommentService();
			ArrayList<Cam_Comment> clist = cservice.getComments(bnum);
			FollowService fservice = new FollowService();
			boolean boo = fservice.isFollow(cb.getWriter(),bnum);
			request.setAttribute("boo", boo);
			request.setAttribute("clist", clist);
			request.setAttribute("cb", cb);
			view = "/cam_board/detail.jsp";
		} else {
			bnum = Integer.parseInt(request.getParameter("bnum"));
			String area = request.getParameter("area");
			int price = Integer.parseInt(request.getParameter("price"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Cam_BoardService service = new Cam_BoardService();
			service.edit(new Cam_Board(bnum, "", area, price, title, null, content, "", 0,  "", ""));
			view = "redirect:/cam_board/detail.do?bnum=" + bnum;
		}

		return view;
	}

}
