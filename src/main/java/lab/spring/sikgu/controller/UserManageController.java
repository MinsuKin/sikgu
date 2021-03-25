package lab.spring.sikgu.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lab.spring.sikgu.model.CustomerVO;
import lab.spring.sikgu.model.SikguVO;
import lab.spring.sikgu.model.StoreVO;
import lab.spring.sikgu.service.UserService;

@Controller
public class UserManageController {

	@Autowired
	UserService service;

	//	@RequestMapping(value="/storeAdd.do")
	//	public String storeInfo() {
	//		return "storeInfo"; 
	//	}
	//	@RequestMapping(value="/addS.do")
	//	public ModelAndView StoreAdd(StoreVO store) {
	//		ModelAndView man = new ModelAndView();
	//		System.out.println(store.getSikgu_id());
	//		man.addObject(store);
	//		man.setViewName("MainHome");
	//		return man;
	//	}

	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String form() {
		return "index";
	}

	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	   public ModelAndView login(SikguVO user, HttpSession session) {
	      ModelAndView mav = new ModelAndView();
	      SikguVO vo = null;
	      vo = service.login(user.getSikgu_id(),user.getSikgu_pwd());
	      if(vo!=null) {
	         mav.addObject("user",vo);
	         session.setAttribute("user", vo);
	         mav.setViewName("forward:/getInfo.do");
	      }else {
	         if(service.loginCheckId(user.getSikgu_id()) !=null) {
	            mav.addObject("PWDErr","비밀번호가 다릅니다.");
	            System.out.println("비밀번호");
	         } else {
	            mav.addObject("IDErr","존재하지 않는 아이디입니다.");
	            System.out.println("아이디");
	         }
	         mav.setViewName("index");
	      }
	      System.out.println(mav.getModel().get("PWDErr"));
	      System.out.println(mav.getModel().get("IDErr"));
	      return mav;
	   }

	

	@RequestMapping(value = "/add.do", method=RequestMethod.GET)
	public String form2() {
		return "user_form";
	}

	@RequestMapping(value="/add.do", method=RequestMethod.POST)
	public ModelAndView insertSikgu(@ModelAttribute("user") SikguVO vo
			,BindingResult rs, HttpSession session) {
		session.setAttribute("user", vo);
		ModelAndView mav = new ModelAndView();
		if(service.insertSikgu(vo)>0 && vo.getSikgu_type().equals("S")){
			mav.setViewName("./index");
		}else if(vo.getSikgu_type().equals("C")){
			mav.setViewName("customerInfo");

		}else{
			mav.setViewName("redirect:/login.do");
		}
		return mav; 
	}

	@RequestMapping(value = "/addC.do", method=RequestMethod.GET)
	public String form3() {
		return "customerInfo";
	}

	@RequestMapping(value="/addC.do", method=RequestMethod.POST)
	public ModelAndView insertCustomer(@ModelAttribute("user") CustomerVO vo
			,BindingResult rs, @RequestParam("customer_image_path") MultipartFile customer_image, HttpSession session) {
		String customer_image_path = null;
		ModelAndView mav = new ModelAndView();
		if(customer_image != null) {
			customer_image_path = loadImage(vo.getsikgu_id(),customer_image);
		}
		vo.setCustomer_image_path(customer_image_path);
		if(service.insertCustomer(vo)>0){
			mav.setViewName("MainHome");
		}else{
			mav.setViewName("customerInfo");
		}
		return mav; 
	}

	@RequestMapping(value = "/addS.do", method=RequestMethod.GET)
	public String form4() {
		return "storeInfo";
	}

	@RequestMapping(value="/addS.do", method=RequestMethod.POST)
	public ModelAndView insertStore(@ModelAttribute("user") StoreVO vo
			,BindingResult rs) {

		ModelAndView mav = new ModelAndView();

		if(service.insertStore(vo)>0){
			mav.setViewName("MainHome");
		}else{
			mav.setViewName("storeInfo");
		}
		return mav; 
	}


	private String loadImage(String sikgu_id,MultipartFile customer_image) {

		File outFile = null;

		if (!customer_image.isEmpty()) {
			String filename = customer_image.getOriginalFilename();
			String fn = FilenameUtils.getBaseName(filename);
			String fe = FilenameUtils.getExtension(filename);

			try {
				// upload 泥섎━
				if (fe.equalsIgnoreCase("JPG")
						|| fe.equalsIgnoreCase("JPEG")
						|| fe.equalsIgnoreCase("GIF")
						|| fe.equalsIgnoreCase("PNG")) {

					// �뙆�씪 諛붿씠�듃濡� �씫湲�
					byte[] bytes = customer_image.getBytes();

					// 寃쎈줈 �깮�꽦
					String path = "c://customer_image/" + sikgu_id;

					File outFilePath = new File(path);
					if(!outFilePath.exists()){
						outFilePath.mkdirs();
					}

					// �뙆�씪 �씠由� 以묐났 �솗�씤
					outFile = GetUniqName(path, fn, fe);
					

					// �뙆�씪 ���옣
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
		return outFile.toString();
	}

	private File GetUniqName(String DirName, String fn, String fe){

		// �� 寃쎈줈
		File info = new File(DirName + "/" + fn +"."+ fe);
		int i = 1;
		while (true)
		{
			if (info.exists())
			{
				info = new File(DirName + "/" + fn + "_" + i +"."+ fe);
				i++;
				continue;
			}
			else
			{
				break;
			}
		}
		return info;
	}
	
	
	@RequestMapping(value="/getInfo.do",method=RequestMethod.POST)
	   public ModelAndView getcustomer(SikguVO user, HttpSession session) {
	      ModelAndView mav = new ModelAndView();
	      CustomerVO vo = null;
	      vo = service.getCustomer(user.getSikgu_id());
	      
	         mav.addObject("userinfo",vo);
	         session.setAttribute("userinfo", vo);
	         mav.setViewName("MainHome");

	      return mav;
	   }
}
