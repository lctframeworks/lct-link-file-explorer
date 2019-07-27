package com.lctframeworks.link;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class LinkOpenerService {

	@Value("${exec.cmd}")
	private String executionCommand; 

	public void runOpener(String filePostRequest) {
		
		String filePath = cleanFilePath(filePostRequest);   
		   
		Runtime rt = Runtime.getRuntime();
		
		try {			
			rt.exec(executionCommand+" "+filePath);
			} catch (IOException e) {

			e.printStackTrace();
			
		}		
	}

	private String cleanFilePath(String fileRequest) {
		//converts ascii to special characters
		return fileRequest
				.replace("%5C%5C%5C","")// \\\
				.replace("%5C", "\\")
				.replace("%24", ":")// $
				.replace("%3A", ":")
				.replace("file=", "")
				.replace("file://","")
				.replace("file=", "");
	}

}