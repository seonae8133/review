package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) {
		//3.
		//createDir();
		//createFile();
		//dirList();
		//fileDelete();
		// fileCopy();
		 fileCopy(args[0],args[1]);
	}
	
	//파일 복사
	public static void fileCopy(String src, String tar) {
		try {
			
			FileInputStream fis = new FileInputStream(src);
			FileOutputStream fos = new FileOutputStream(tar);
			//FileInputStream fis = new FileInputStream("d:img/또내와 광이.JPG");
			//FileOutputStream fos = new FileOutputStream("d:img/광이2.JPG");
			int readCnt = 0;
			
			byte[] readBytes = new byte[100];
			while((readCnt = fis.read(readBytes))!= -1) {
				fos.write(readBytes,0,readCnt);
			}
			fis.close();
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//파일 삭제
	public static void fileDelete() {
	
		File file = new File("d:/img/data.txt"); 
		file.delete();
	}
	
	
	
	
	//폴더 목록
	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles();
		for (File file : list) {
			System.out.println("파일이름" + file.getName());
			System.out.println("파일크기" + file.getTotalSpace()+"/" + file.length());
		}
		
	}
	
	
		//2.파일생성
		public static void createFile() {
			File file = new File("d:/img/data.txt"); 
			try {
				file.createNewFile();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		
		
		public static void createDir() {
		//1.폴더 생성
		File dir = new File("d:/img"); 
		
		//File dir = new File("d:","/img");
		dir.mkdir();

		
	}

}
