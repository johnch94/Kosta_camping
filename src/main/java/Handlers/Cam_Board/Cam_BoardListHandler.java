package handlers.cam_board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cam_board.Cam_Board;
import cam_board.Cam_BoardService;
import handlers.Handler;

public class Cam_BoardListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Cam_BoardService service = new Cam_BoardService();
		ArrayList<Cam_Board> list = service.getAll();
		
		
		request.setAttribute("list", list);
		
		return "/cam_board/list.jsp";
	}

}
