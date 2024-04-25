package Handlers.Cam_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Cam_BoardService;
import Handlers.Handler;

public class Cam_BoardDelHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		
		Cam_BoardService service = new Cam_BoardService();
		service.delete(bnum);
		
		return "redirect:/cam_board/list.do";
		
		
	}

}
