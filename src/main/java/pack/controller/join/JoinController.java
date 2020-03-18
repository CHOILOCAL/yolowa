package pack.controller.join;

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
import org.springframework.web.servlet.ModelAndView;

import pack.controller.login.MemberBean;
import pack.model.login.MemberInter;

@Controller
public class JoinController {
	@Autowired
	private MemberInter inter;
	@Autowired
	private FileValidater fileValidater;

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert() {
		return "signin";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public ModelAndView submit(@ModelAttribute("uploadFile") UploadFile uploadFile, BindingResult result,
			MemberBean bean) {

		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		MultipartFile file = uploadFile.getFile();
		fileValidater.validate(uploadFile, result);

		String fileName = file.getOriginalFilename();
		
		if (result.hasErrors()) {
			return new ModelAndView("singin");
		}
		try {
			
			inputStream = file.getInputStream();
			File newFile = new File("C:/Users/KITCOOP/Desktop/yolowa/src/main/webapp/resources/upload/" + fileName);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
		} catch (Exception e) {
			System.out.println("fileUploaded err : " + e.getMessage());
		} finally {

			try {
				outputStream.close();
				bean.setPhoto(fileName);
				boolean b = inter.signin(bean);
			if (b) {
					return new ModelAndView("signin", "filename", fileName);
			} else {
					return null;
			}
		}
			catch (Exception e2) {
				System.out.println(" insert err : " + e2.getMessage());
		}
	}
		return new ModelAndView("signin", "filename", fileName);
	}
}
