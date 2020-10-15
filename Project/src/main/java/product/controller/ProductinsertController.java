package product.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDAO;

@Controller
public class ProductinsertController {
	
	final String command = "productinsert.prd";
	final String getPage = "productinsert";
	
	
	@Autowired
	ProductDAO dao;
	
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doAction( HttpSession session ) {
		System.out.println("get방식");
		/*
		 * System.out.println("loginInfo : " + session.getAttribute("loginInfo")); //
		 * null
		 * 
		 * if(session.getAttribute("loginInfo") == null) {
		 * session.setAttribute("destination", "redirect:/productinsert.prd"); return
		 * "redirect:/loginForm.me"; }else { return getPage; }
		 */
		return null;
		
	}
	
	@RequestMapping(value = command, method = RequestMethod.POST)
	public ModelAndView doAction(Product product, MultipartHttpServletRequest Multipartrequest) throws IllegalStateException, IOException {

		
		System.out.println("post방식");
		dao.GetInsertProduct(product);
		
		ModelAndView mav = new ModelAndView();

		
		
		/*
		 * MultipartFile multi = product.getUpload(); File file = new
		 * File(uploadPath+product.getPimage()); System.out.println(file);
		 */
		
		List<MultipartFile> fileList = Multipartrequest.getFiles("file");

		servletContext.getRealPath("/");
		String uploadPath = servletContext.getRealPath("/resources")+"/";
		
		for(MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			
			System.out.println("originFileName: "+originFileName);
			System.out.println("fileSize: "+fileSize);
			String safeFile = uploadPath + System.currentTimeMillis() + originFileName;
			
			mf.transferTo(new File(safeFile));
		}
		
		mav.setViewName(getPage);
		
		
		return mav;
		
	}
}
