package Handlers.follow;

import Handlers.Handler;
import board.Cam_Board;
import board.Cam_BoardService;
import follow.Follow;
import follow.FollowDao;
import follow.FollowService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

public class FollowHandler implements Handler {

    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) {
            String id = req.getParameter("id");
            System.out.println("id = " + id);
            int bnum = Integer.parseInt(req.getParameter("bnum"));
            Cam_BoardService boardService = new Cam_BoardService();
            boardService.upFollow(bnum);
            FollowService service = new FollowService();
            service.addFollow(new Follow(0,id, bnum));

        return "redirect:/cam_board/detail.do?bnum="+bnum;
    }
}
