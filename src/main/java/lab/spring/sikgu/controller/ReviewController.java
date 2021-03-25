package lab.spring.sikgu.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lab.spring.sikgu.model.ReviewVO;
import lab.spring.sikgu.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;

	@RequestMapping(value="/getStoreContent.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ReviewVO> getStoreContent(@RequestBody Map<String, Object> Map) {		 
		HashMap<String, Object> searchKey = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		List<ReviewVO> reviews = service.getStoreContent(searchKey);
		return reviews;
	}
	@RequestMapping(value="/getCustomerContent.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ReviewVO> getCustomerContent(@RequestBody Map<String, Object> Map) {		 
		HashMap<String, Object> searchKey = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		List<ReviewVO> reviews = service.getCustomerContent(searchKey);
		return reviews;
	}

	@RequestMapping(value = "/imageUpload.do", method = RequestMethod.POST)
	public String imageUpload(@RequestParam("store_id") String store_id, @RequestParam("writer_id") String writer_id,
			@RequestParam("review_description") String review_description,MultipartHttpServletRequest reviews) {

		List<MultipartFile> reviewList = reviews.getFiles("review");
		for (MultipartFile reviewPart : reviewList) {
			File review_url = loadImage(store_id, reviewPart);         
			String fileName = review_url.getName();
			int pos = fileName.lastIndexOf( "." );
			String review_title = fileName.substring(0,pos);
			String review_type = fileName.substring( pos + 1 );
			long review_size = reviewPart.getSize();
			ReviewVO reVO = new ReviewVO(store_id, writer_id, review_description, review_url.toString(),review_type,review_size,review_title);
			service.reviewUpload(reVO);
		}
		return "MainHome";
	}

	//	@RequestMapping(value="/videoUpload.do", method=RequestMethod.POST)
	//	public String videosUpload(
	//			@RequestParam("store_id") String store_id,
	//			@RequestParam("writer_id") String writer_id,
	//			@RequestParam("review_description") String review_description,
	//			@RequestParam("thumbnail") MultipartFile thumbnail,
	//			@RequestParam("review") MultipartFile review) {
	//		String review_url = loadImage(store_id,writer_id,review_description,review);
	//		
	//		if(review.getSize()==0)
	//			throw new NullPointerException("업로드된 파일 없음");
	//		return ""; // 글쓰기 성공 시 보낼 페이지명
	//	}

	private File loadImage(String store_id, MultipartFile review) {
		File outFile = null;

		if (!review.isEmpty()) {
			String filename = review.getOriginalFilename();
			String fn = FilenameUtils.getBaseName(filename);
			String fe = FilenameUtils.getExtension(filename);

			try {
				if (fe.equalsIgnoreCase("JPG") || fe.equalsIgnoreCase("JPEG") || fe.equalsIgnoreCase("GIF")
						|| fe.equalsIgnoreCase("PNG")) {

					byte[] bytes = review.getBytes();

					String path = "c://reviews/" + store_id;
					File outFilePath = new File(path);
					if (!outFilePath.exists()) {
						outFilePath.mkdirs();
					}

					outFile = GetUniqName(path, fn, fe);

					FileOutputStream fos = new FileOutputStream(outFile);
					fos.write(bytes);
					fos.close();

				} else {
					System.err.println("File type error! ");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return outFile;
	}

	private File GetUniqName(String DirName, String fn, String fe) {

		File info = new File(DirName + "/" + fn + "." + fe);
		int i = 1;
		while (true) {
			if (info.exists()) {
				info = new File(DirName + "/" + fn + "_" + i + "." + fe);
				i++;
				continue;
			} else {
				break;
			}
		}
		return info;
	}
}


