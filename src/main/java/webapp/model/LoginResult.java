package webapp.model;

public class LoginResult {

	Login login;
	String logincheck;
	Boolean status;
	String statusText;
	
	
	public Login getLogin() {
		return login;
	}
	public void setLogin(Login login) {
		this.login = login;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public String getStatusText() {
		return statusText;
	}
	public void setStatusText(String statusText) {
		this.statusText = statusText;
	}
	public String getLogincheck() {
		return logincheck;
	}
	public void setLogincheck(String logincheck) {
		this.logincheck = logincheck;
	}
	
	
	
	
}
