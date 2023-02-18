package com.md.s1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s1.util.Pager_M1;

@Controller
@RequestMapping("/s/notice/")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "list", method=RequestMethod.GET)
	public ModelAndView getNoticeList() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<NoticeDTO> ar= noticeService.getNoticeList();
		
		mv.setViewName("notice/noticeList");
		mv.addObject("list", ar);
		return mv;
	}
}
