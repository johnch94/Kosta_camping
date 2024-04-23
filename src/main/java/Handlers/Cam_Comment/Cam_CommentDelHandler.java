package Handlers.Cam_Comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VOS.Service.Cam_CommentService;
import Handlers.Handler;

public class Cam_CommentDelHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		Cam_CommentService service = new Cam_CommentService();
		
		service.delComment(cnum);
		request.setAttribute("bnum", bnum);
		
		return "redirect:/cam_board/detail.do?bnum=" + bnum;
	}

}
