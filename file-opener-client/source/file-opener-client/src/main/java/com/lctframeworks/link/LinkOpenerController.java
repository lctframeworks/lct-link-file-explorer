package com.lctframeworks.link;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LinkOpenerController {
	
	@Autowired 
	LinkOpenerService service; 
		
	@RequestMapping("/link/open/")
	public String openLink(@RequestBody String file) {
		
		service.runOpener(file);
		
		return "Link will open shortly";			
		
	}

}