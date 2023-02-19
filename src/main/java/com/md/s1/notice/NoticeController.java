package com.md.s1.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.md.s1.util.Pager_M1;


@Controller
@RequestMapping("/notice/")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "list", method=RequestMethod.GET)
	public ModelAndView getNoticeList(Pager_M1 pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<NoticeDTO> ar= noticeService.getNoticeList(pager);
		
		mv.setViewName("notice/noticeList");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}
	
	@RequestMapping(value = "detail", method=RequestMethod.GET)
	public ModelAndView getNoticeDetail(NoticeDTO noticeDTO, ModelAndView mv) throws Exception {
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		mv.setViewName("notice/noticeDetail");
		mv.addObject("dto", noticeDTO);
		return mv;
	}
	
	@RequestMapping(value = "delete")
	public ModelAndView setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setNoticeDelete(noticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value = "add", method=RequestMethod.GET)
	public ModelAndView setNoticeAdd(ModelAndView mv) throws Exception{
		mv.setViewName("notice/noticeAdd");
		return mv;
	}
	
	@RequestMapping(value = "add", method=RequestMethod.POST)
	public ModelAndView setNoticeAdd(NoticeDTO noticeDTO, MultipartFile pic, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("Name:"+pic.getName());
		System.out.println("OriName:"+pic.getOriginalFilename());
		System.out.println("Size:"+pic.getSize());
		System.out.println(session.getServletContext());
		int result = noticeService.setNoticeAdd(noticeDTO,pic);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView setNoticeUpdate(NoticeDTO NoticeDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		NoticeDTO = noticeService.getNoticeDetail(NoticeDTO);
		mv.setViewName("notice/noticeUpdate");
		mv.addObject("dto", NoticeDTO);
		return mv;
	}
	
	@RequestMapping(value = "update",method = RequestMethod.POST)
	public ModelAndView setNoticeUpdate(NoticeDTO NoticeDTO ,ModelAndView mv) throws Exception{
		int result = noticeService.setNoticeUpdate(NoticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
}
