package pack.file.choi;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class FileValidater2 implements Validator{	// Validator - 입력자료 검사
	
	public boolean supports(Class<?> clazz) {
		return false;
	}
	
	public void validate(Object uploadFile, Errors errors) { //uploadFile - 오류 검사를 위한 대상
		UploadFile file = (UploadFile)uploadFile;	//대상을 읽어옴
		
		if(file.getFile().getSize() == 0) {	//업로드할 파일이 없다
			errors.rejectValue("file", "", "업로드 할 파일을 선택하시오.");
		}
	}
}
