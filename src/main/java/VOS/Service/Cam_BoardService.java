package cam_board;

import java.util.ArrayList;

public class Cam_BoardService {
	private Cam_BoardDao dao;
	
	public static String path = "C:\\Users\\SAMSUNG\\PJ2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\pj2\\";
	
	public Cam_BoardService() {
		dao = new Cam_BoardDao();
	}
	
	public void addCam_Board(Cam_Board cb) {
		dao.insert(cb);
	}
	
	public Cam_Board getByNum(int bnum) {
		return dao.selectByNum(bnum);
	}
	
	public ArrayList<Cam_Board> getByArea(String area) {
		return dao.selectByArea(area);
	}
	
	public ArrayList<Cam_Board> getByTitle(String title) {
		return dao.selectByTitle(title);
	}
	
	public ArrayList<Cam_Board> getAll() {
		return dao.selectAll();
	}
	
	public void edit(Cam_Board cb) {
		dao.update(cb);
	}
	
	public void editImg(int num, String col, String fname) {
		dao.updateImg(num, col, fname);
	}
	
	public void delete(int bnum) {
		dao.delete(bnum);
	}
	
}