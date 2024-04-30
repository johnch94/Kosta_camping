package Handlers.Cam_Comment;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VOS.Cam_Board.Cam_Comment;
import VOS.Service.Cam_CommentService;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Handlers.Handler;

public class Cam_CommentAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "";
		
		if(request.getMethod().equals("POST")) {
			String body = request.getParameter("body");
			int bnum = Integer.parseInt(request.getParameter("bnum"));
			HttpSession session = request.getSession(false);
			String writer = (String) session.getAttribute("loginId");

			Cam_CommentService service = new Cam_CommentService();
			service.addComment(new Cam_Comment(0, body, bnum, writer, null));
			request.setAttribute("bnum", bnum);
			view = "redirect:/cam_board/detail.do?bnum="+bnum;
		} else {
			int bnum = Integer.parseInt(request.getParameter("bnum"));
			
			Cam_CommentService service = new Cam_CommentService();
			ArrayList<Cam_Comment> list = service.getComments(bnum);
			JSONArray arr = new JSONArray();
			for(Cam_Comment cc : list) {
				JSONObject obj = new JSONObject();
				obj.put("body", cc.getBody());
				obj.put("writer", cc.getWriter());
				obj.put("wdate", cc.getWdate());
				arr.add(obj);
			}
			request.setAttribute("arr", arr);
			
		}
		
		return view;
	}

}
