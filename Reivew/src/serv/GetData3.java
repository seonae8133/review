package serv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getData3")
public class GetData3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//샘플데이터
	List<BoardVO> list;

	@Override //
	public void init(ServletConfig config) throws ServletException {
		list = new ArrayList<BoardVO>();
		list.add(new BoardVO("1","TITLE1","CONTENT1"));
		list.add(new BoardVO("2","TITLE2","CONTENT2"));
		list.add(new BoardVO("3","TITLE3","CONTENT3"));
	}
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int no = Integer.parseInt(request.getParameter("no"));
	request.setAttribute("board", list.get(no));
	request.getRequestDispatcher("modalBody.jsp").forward(request, response);
	
	}


}
