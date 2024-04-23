package handlers.follow;

import board.Cam_BoardService;
import follow.FollowService;
import handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

public class DelFollowHandler implements Handler {
    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) throws UnsupportedEncodingException {
        int bnum = Integer.parseInt(req.getParameter("bnum"));
        String id = req.getParameter("id");
        FollowService followService = new FollowService();
        followService.deleteFollow(id,bnum);
        Cam_BoardService camBoardService = new Cam_BoardService();
        camBoardService.downFollow(bnum);
        return "redirect:/cam_board/detail.do?bnum="+bnum;
    }
}
