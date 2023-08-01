package tw.brad.tutor;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int w =400,h=20;
		Double rate = Double.parseDouble(request.getParameter("rate"));
		
		//response 輸出
		response.setContentType("image/jpeg");
		
		BufferedImage img = new BufferedImage(400, 20, BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D g2d = img.createGraphics();
		
		g2d.setColor(Color.YELLOW);
		g2d.fillRect(0, 0, 400, 20);
		g2d.setColor(Color.RED);
		g2d.fillRect(0, 0, 200, 0);
		
		ServletOutputStream out=  response.getOutputStream();
		ImageIO.write(img, "jpeg", out);
		
		response.flushBuffer();
	}

}
