package pack.controller.review;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import pack.file.choi.FileValidater2;
import pack.file.choi.UploadFile;
import pack.model.review.ReviewInter;

@Controller
public class WriteController {
	@Autowired
	private FileValidater2 fileValidater;
	@Autowired
	private ReviewInter reviewInter;
	
	
	@RequestMapping(value="write", method=RequestMethod.GET)
	public String getUploadForm(@ModelAttribute("uploadFile") UploadFile uploadFile) {
		return "writeform";
	}
	
	@RequestMapping(value="write", method=RequestMethod.POST)
	public String fileUploaded(@ModelAttribute("uploadFile") UploadFile uploadFile ,BindingResult result, ReviewBean bean) {
		System.out.println("여기는 fileUploaded");
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		MultipartFile file = uploadFile.getFile();
		fileValidater.validate(uploadFile, result);
		
		String fileName = file.getOriginalFilename();
		if(result.hasErrors()) {
			//return new ModelAndView("writeform");
		}
		
		try {
			inputStream = file.getInputStream();
			
			File newFile = new File("C:/Users/KITCOOP/Desktop/yolowa/src/main/webapp/resources/upload/" + fileName);
			if(!newFile.exists()) {
				newFile.createNewFile();
			}
			
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];
			
			while((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			
		} catch (Exception e) {
			System.out.println("fileUploaded err : " + e.getMessage());
		} finally {
			try {
				outputStream.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
			System.out.println(fileName);
			bean.setImages(fileName);
			boolean b = reviewInter.writeData(bean);
			
			if(b) {
				return "redirect:/list";
			}else {
				return "error";
			}
		
	}
}
