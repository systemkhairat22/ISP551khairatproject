package khairat.model;

public class ApplicationClaim {
	private int applicationid;
	private String deathCert;
	private String claimStatus;
	private int memberid;
	private int adminid;
	
	public ApplicationClaim() {
		this.applicationid = 0;
		this.deathCert = null;
		this.claimStatus = null;
		this.memberid = 0;
		this.adminid = 0;
	}
	public int getApplicationid() {
		return applicationid;
	}
	public void setApplicationid(int applicationid) {
		this.applicationid = applicationid;
	}
	public String getDeathCert() {
		return deathCert;
	}
	public void setDeathCert(String deathCert) {
		this.deathCert = deathCert;
	}
	public String getClaimStatus() {
		return claimStatus;
	}
	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
}
