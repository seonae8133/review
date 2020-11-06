package stream;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadServ")
@MultipartConfig(maxFileSize=1024*1024*2     //size of any uploaded file
            ,maxRequestSize = 1024*1024*10  //overall size of all uploaded files
            ,location="d:/img"
            ,fileSizeThreshold = 1024
)
public class UploadServ extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
	   request.setCharacterEncoding("utf-8");
	   
	   //파라미터를vo에 담고
	   
	   //vo.setTitle(request.getParameter("title"));
	   

	   
	   //업로드 위치를 현재 컨텍스트에 <img  src="/review/images/a.jpg"
		String appPath = request.getServletContext().getRealPath("/images");
		System.out.println(appPath);
	   
	   //단건인 경우에는 Part part =request.getParts("파일이름"){} //단건인 경우에는 이렇게 하고
      for (Part part : request.getParts()) { //첨부파일을 읽어온다   //여러건인 경우에는for문돌려서함
         String fileName = extractFileName(part); //파일이 존재하면
         
         if(!fileName.equals("")) {
        	 String uploadFile = appPath + File.separator + fileName;
           // String uploadFile = "d:/img" + File.separ ator + System.currentTimeMillis() + ".txt"; 
        	File renameFile =  FileRenamePolicy.rename(new File(uploadFile));
            part.write(renameFile.getAbsolutePath());
            //vo.setimg(renameFile.getName(파일명 담아주기)); - 
         }
      }
	   //int n = dao.insert(vo);
   }

   private String extractFileName(Part part) {
      String contentDisp = part.getHeader("content-disposition");
      String[] items = contentDisp.split(";");
      for (String s : items) {
         if (s.trim().startsWith("filename")) {
            return s.substring(s.indexOf("=") + 2, s.length() - 1);
         }
      }
      return "";
   }
   
}