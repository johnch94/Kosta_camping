package Handlers.Cam_Board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Cam_Board;
import board.Cam_BoardService;
import Handlers.Handler;

public class Cam_BoardListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Cam_BoardService service = new Cam_BoardService();
		ArrayList<Cam_Board> list = service.getAll();
		ArrayList<Cam_Board> sliceList = null;
		int pageNum = 1;
//		pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		
		
		String pageNumStr = request.getParameter("pageNum");
		if(pageNumStr != null && !pageNumStr.isEmpty()) {
			try {
				pageNum = Integer.parseInt(pageNumStr);
			} catch (NumberFormatException e) {
				e.printStackTrace();	
				pageNum = 1;
			}	
		}
		
		
		
		if (list.size() >= 8) {
			int startIndex = (pageNum - 1) * 8;
			int endIndex = Math.min(startIndex + 8, list.size());
			sliceList = new ArrayList<>(list.subList(startIndex, endIndex));
			

			System.out.println(sliceList);

			request.setAttribute("list", sliceList);
		} else {
			request.setAttribute("list", list);
		}

		int totalPage = (int) Math.ceil((double) list.size() / 8);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageNum", pageNum);

		return "/cam_board/list.jsp";
	}
}
