package webapp.model;

public class MemberResult {

	Member Member;
	Boolean logincheck;
	Boolean status;
	String statusText;
	public Member getMember() {
		return Member;
	}
	public void setMember(Member member) {
		Member = member;
	}
	public Boolean getLogincheck() {
		return logincheck;
	}
	public void setLogincheck(Boolean logincheck) {
		this.logincheck = logincheck;
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
	
	
	
	
}
