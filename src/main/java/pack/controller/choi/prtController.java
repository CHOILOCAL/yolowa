package pack.controller.choi;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pack.file.choi.FileValidater2;
import pack.file.choi.UploadFile;
import pack.model.choi.prtDto;
import pack.model.choi.prtInter;

@Controller
public class prtController {

	@Autowired
	private FileValidater2 fileValidater;

	@Autowired
	@Qualifier("prtImpl")
	private prtInter prtInter;

	// main_city -> city SELECT
	@RequestMapping(value = "city", method = RequestMethod.GET)
	public ModelAndView process1(prtBean bean) {
		System.out.println("seoul place리스트보기");
		return new ModelAndView("city", "city", prtInter.selectList1(bean));
	}

	// city -> city_detail SELECT
	@RequestMapping(value = "city_detail", method = RequestMethod.GET)
	public ModelAndView process2(prtBean bean) {
		System.out.println("place리스트보기");
		return new ModelAndView("city_detail", "city_detail", prtInter.selectList2(bean));
	}
	
	// [세부 컨텐츠(명소, 맛집, 투어) 수정 by 관리자] 수정할 값 받아오기
	@RequestMapping(value = "c_update", method = RequestMethod.GET)
	public ModelAndView process3(prtBean bean) {
		System.out.println("place리스트보기");
		return new ModelAndView("c_update", "c_update", prtInter.selectList3(bean));
	}
	
	// [세부 컨텐츠(명소, 맛집, 투어) 삽입 by 관리자] no 값 받아오기
	@RequestMapping(value = "prtwrite", method = RequestMethod.GET)
	public ModelAndView process4(prtBean bean) {
		System.out.println("place리스트보기");
		return new ModelAndView("c_insert", "c_insert", prtInter.selectList3(bean));
	}

	// city -> [추가 버튼] -> c_insert
	@RequestMapping(value = "c_insert", method = RequestMethod.GET)
	public ModelAndView process5(prtBean bean) {
		return new ModelAndView("c_insert", "c_insert", prtInter.selectList4(bean));
	}

	// [세부 컨텐츠(명소, 맛집, 투어) 등록 by 관리자]
	@RequestMapping(value = "prtwrite", method = RequestMethod.POST)
	public String fileUploaded2(@ModelAttribute("uploadFile") UploadFile uploadFile, BindingResult result,
			prtBean bean) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadFile.getFile();

		fileValidater.validate(uploadFile, result); // 유효성 검사

		String fileName = file.getOriginalFilename();

		if (result.hasErrors()) {
			System.out.println("result.hasErrors");
		}

		try {
			inputStream = file.getInputStream();

			File newFile = new File("C:/Users/KITCOOP/Desktop/yolowa/src/main/webapp/resources/uploadChoi/" + fileName);

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
			} catch (Exception e2) {
			}
		}

		bean.setImages(fileName);

		boolean a = prtInter.insertData(bean);

		if (a == true) {
			return "redirect:/city";
		} else {
			return "error";
		}
	}

	// [세부 컨텐츠(명소, 맛집, 투어) 수정 by 관리자]
	@RequestMapping(value = "prtupdate", method = RequestMethod.POST)
	public String fileUploaded(@ModelAttribute("uploadFile") UploadFile uploadFile, BindingResult result,
			prtBean bean) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadFile.getFile();

		fileValidater.validate(uploadFile, result); // 유효성 검사

		String fileName = file.getOriginalFilename();

		if (result.hasErrors()) {
			System.out.println("result.hasErrors");
		}

		try {

			inputStream = file.getInputStream();

			File newFile = new File("C:/Users/KITCOOP/Desktop/yolowa/src/main/webapp/resources/uploadChoi/" + fileName);

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
			} catch (Exception e2) {
			}
		}

		System.out.println(fileName);

		bean.setImages(fileName);
		boolean a = prtInter.updateData(bean);

		if (a == true) {
			return "city";
		} else {
			return "error";
		}
	}
	
	// [세부 컨텐츠(명소, 맛집, 투어) 삭제 by 관리자]
	@RequestMapping(value = "c_delete", method = RequestMethod.GET)
	public String process6(prtBean bean) {
		boolean a = prtInter.deleteData(bean);
		if (a) {
			return "main_city";
		} else {
			return "error";
		}
	}
}