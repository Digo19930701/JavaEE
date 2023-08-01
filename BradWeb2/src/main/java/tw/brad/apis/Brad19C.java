package tw.brad.apis;

public class Brad19C {
	private int x,y;
	public  Brad19C(String x , String y) throws Exception {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
		
		
	}
	
	public int plus() {
		return x+y;
	}
	
}
