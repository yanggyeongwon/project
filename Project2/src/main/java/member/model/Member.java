package member.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Member {
	  private int mnum;
	  @NotEmpty(message = "�̸��� �Է����ּ���")
	  private String mname;
	  @NotEmpty(message = "���̵� �Է����ּ���")
	  private String mid;
	  
	  @Length(min = 7,max = 10,message = "��й�ȣ�� 7���̻� 10�����Ϸ� �Է����ּ���")
	  private String mpw;
	  @NotEmpty(message = "�̸����� �ʼ��Դϴ�")
	  private String memail;
	  private String maddr;
	  
	  
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	  

	  
	  }
