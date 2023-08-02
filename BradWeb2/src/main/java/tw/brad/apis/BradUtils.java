package tw.brad.apis;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;

public class BradUtils {
	public static String loadView(String view) throws Exception {
		String viewFile = 
			String.format("C:\\Users\\User\\eclipse-workspace\\BradWeb2\\src\\main\\webapp\\views\\%s.html", view);
		
		File file = new File(viewFile);
		
//		byte[] buf = new byte[(int)file.length()];
//		FileInputStream fin = new FileInputStream(file);
//		fin.read(buf);
//		fin.close();
//		return new String(buf);
		
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line = null; StringBuffer sb = new StringBuffer();
		while ( (line = br.readLine()) != null ) {
			sb.append(line);
		}
		return sb.toString();
		
	}
	
	public static String sayYa() {
		return "YA";
	}
	public static String sayYa(String name) {
		return String.format("Hi %s", name);
	}
	public static String calc(String x,String y) {
	try {
		int intX= Integer.parseInt(x);
		int intY= Integer.parseInt(y);
		return "" + (intX+ intY);
	}catch(Exception e) {
		return "";
	}
	
	}
	
	
}
