
package product.controller;
import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDAO;

@Controller
public class ProductupdateController {
	
	final String command = "/productupdate.prd";
	final String getPage = "productupdate";
	final String gotoPage = "redirect:/productselect.prd";
	
	@Autowired
	ProductDAO dao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction(@RequestParam(value="pnum" , required=true) int pnum,
							Model model){
		
		Product product = dao.getData(pnum);
		model.addAttribute("product",product);
		
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(Product product) {
		
		ModelAndView mav = new ModelAndView();
		
		String uploadPath = servletContext.getRealPath("/resources");
		System.out.println("uploadPath : " + uploadPath);
		File file = new File(uploadPath + File.separator + product.getPimage());
		System.out.println("product.getPimage : " + product.getPimage());
		File delFile = new File(uploadPath + File.separator + product.getUploadOld());
		delFile.delete();
		
		MultipartFile multi = product.getUpload();
		
		try {
			multi.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		dao.updateProduct(product);
		mav.setViewName(gotoPage);

		return mav;
	}
	
	
}
