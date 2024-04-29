package Handlers.Cam_Board;

import Handlers.Handler;
import board.Cam_Board;
import board.Cam_BoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Cam_BoardMyListHandler implements Handler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        String loginId = (String) session.getAttribute("loginId");
        Cam_BoardService service = new Cam_BoardService();
        ArrayList<Cam_Board> list = service.getByWriter(loginId);
        request.setAttribute("list", list);
        return "/cam_board/mylist.jsp";
    }
}
