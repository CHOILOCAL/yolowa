package pack.controller.join;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

@Component
public class FileValidater {
	public boolean supports(Class<?> clazz) {
		return false;
	}
	
	public void validate(Object uploadFile, Errors errors) { 
		UploadFile file = (UploadFile)uploadFile;	
		
		if(file.getFile().getSize() == 0) {	
			errors.rejectValue("file", "", "업로드 할 프로필사진을 선택하시오.");
		}
	}
}
