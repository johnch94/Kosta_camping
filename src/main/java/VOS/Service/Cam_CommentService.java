package cam_comment;

import java.util.ArrayList;

public class Cam_CommentService {
	private Cam_CommentDao dao;
	
	public Cam_CommentService() {
		dao = new Cam_CommentDao();
	}
	
	public void addComment(Cam_Comment cc) {
		dao.insert(cc);
	}
	
	public ArrayList<Cam_Comment> getComments(int bnum) {
		return dao.selectByBnum(bnum);
	}
	
	public void delComment(int cnum) {
		dao.delComment(cnum);
	}
}