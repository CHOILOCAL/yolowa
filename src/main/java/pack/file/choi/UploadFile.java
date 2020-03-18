package pack.file.choi;

import org.springframework.web.multipart.MultipartFile;


public class UploadFile {	//file dto
	
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
}