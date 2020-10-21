package orderdetails.model;

import java.sql.Date;

public class Orderdetails {
	private int onum;
	private String opname;
	private String oorder;
	private String opreceive;
	private int oprice;
	private int opcharge;
	private Date opdate;
	private String oinvoice;
	private int state;
	private String onums;
	
	
	public int getState() {
		return state;
	}
	public String getOnums() {
		return onums;
	}
	public void setOnums(String onums) {
		this.onums = onums;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public String getOpname() {
		return opname;
	}
	public void setOpname(String opname) {
		this.opname = opname;
	}
	public String getOorder() {
		return oorder;
	}
	public void setOorder(String oorder) {
		this.oorder = oorder;
	}
	public String getOpreceive() {
		return opreceive;
	}
	public void setOpreceive(String opreceive) {
		this.opreceive = opreceive;
	}
	public int getOprice() {
		return oprice;
	}
	public void setOprice(int oprice) {
		this.oprice = oprice;
	}
	public int getOpcharge() {
		return opcharge;
	}
	public void setOpcharge(int opcharge) {
		this.opcharge = opcharge;
	}
	public Date getOpdate() {
		return opdate;
	}
	public void setOpdate(Date opdate) {
		this.opdate = opdate;
	}
	public String getOinvoice() {
		return oinvoice;
	}
	public void setOinvoice(String oinvoice) {
		this.oinvoice = oinvoice;
	}
	
	
}
