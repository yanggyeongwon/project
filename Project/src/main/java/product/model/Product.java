package product.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pnum;
	private int pbest;
	private String pname;
	private String pcolor;
	private String psize;
	private int pprice;
	private int ppoint;
	private String pimage;
	private Date pdate;
	
	private MultipartFile upload;
	private String uploadOld;
	
	public String getUploadOld() {
		return uploadOld;
	}
	public void setUploadOld(String uploadOld) {
		this.uploadOld = uploadOld;
	}
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		System.out.println("upload:"+upload);
		if(upload != null) {
			System.out.println("upload.getName: "+upload.getName());
			System.out.println("getOriginalFilename: "+upload.getOriginalFilename());
			this.pimage = upload.getOriginalFilename();
		}
		
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getPbest() {
		return pbest;
	}
	public void setPbest(int pbest) {
		this.pbest = pbest;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPpoint() {
		return ppoint;
	}
	public void setPpoint(int ppoint) {
		this.ppoint = ppoint;
	}
	
	
}
