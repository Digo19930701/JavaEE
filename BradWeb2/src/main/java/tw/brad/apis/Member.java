package tw.brad.apis;

public class Member  {
	private int id;
	private  String account,realName,birthday;
	private boolean isMale;
	
	
	public boolean isMale() {
		return isMale;
	}
	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}
	
	
	public Member() {}
	public Member(int id,String account,
			String realname,String birthday) {
		this.id= id;
		this.account = account;
		this.realName = realname;
		this.birthday = birthday;
		

	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getRealname() {
		return realName;
	}
	public void setRealname(String realName) {
		this.realName = realName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	@Override
	public String toString() {
		return String.format("%s:%s", account, realName);
	}
	
}
