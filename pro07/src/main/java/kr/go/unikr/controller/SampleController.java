package kr.go.unikr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.go.unikr.DTO.SampleDTO;
import kr.go.unikr.service.SampleService;

@Controller
public class SampleController {

	@Autowired
	SampleService sampleService;
	
	@GetMapping("/sample/list")
	public String sampleList(Model model) throws Exception{
		List<SampleDTO> list = sampleService.sampleList();
		model.addAttribute("list", list);
		return "sample/list";
	}
}
