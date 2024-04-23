package Handlers.Cam_Board;

import board.Cam_BoardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import Handlers.Handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class Cam_BoardUploadHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int size = 100 * 1024 * 1024;
		int bnum = 0;
		
		try {
			MultipartRequest multipart = new MultipartRequest(request, Cam_BoardService.path, size, "utf-8",
					new DefaultFileRenamePolicy());
			
			bnum = Integer.parseInt(multipart.getParameter("bnum"));
			String imgName = multipart.getParameter("imgname");
			File imgf = multipart.getFile("imgf");
			String fname = imgf.getName();
			
			Cam_BoardService service = new Cam_BoardService();
			service.editImg(bnum, imgName, "/pj2/" + fname);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/cam_board/edit.do?bnum=" + bnum;
	}

}
