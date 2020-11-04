package poh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poh.model.Poh;
import poh.model.PohDao;

@Controller
public class PohInsertController {

	final String command = "insert.poh";
	final String getPage = "null";
	
	@Autowired
	PohDao dao;
	
	@RequestMapping(command)
	public String doAction(Poh dto) {
		System.out.println("들어옴");
		System.out.println(dto.getItems1());
		System.out.println(dto.getItems2());
		System.out.println(dto.getName());
		System.out.println(dto.getPrice());
		System.out.println(dto.getStock());
		
		return getPage;
	}
}
