package com.md.s1.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.md.s1.util.FileManager_M1;
import com.md.s1.util.Pager_M1;


@Service
public class NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;

	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager_M1 fileManager;
	
	public List<NoticeDTO> getNoticeList(Pager_M1 pager) throws Exception {
		Long totalCount = noticeDAO.getNoticeCount(pager);
		
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return noticeDAO.getNoticeList(pager);
	}
	
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getNoticeDetail(noticeDTO);
	}
	
	public int setNoticeDelete(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setNoticeDelete(noticeDTO);
	}
	
	public int setNoticeAdd(NoticeDTO noticeDTO, MultipartFile pic) throws Exception{
		
		int result = noticeDAO.setNoticeAdd(noticeDTO);
		
		if(!pic.isEmpty()) { 
			String realPath = servletContext.getRealPath("resources/upload/notice");
			System.out.println(realPath);
			String fileName = fileManager.fileSave(pic, realPath);
		
			NoticeImgDTO noticeImgDTO = new NoticeImgDTO();
			noticeImgDTO.setFileName(fileName);
			noticeImgDTO.setOriName(pic.getOriginalFilename());
			noticeImgDTO.setNoticeNum(noticeDTO.getNoticeNum());
			
			result = noticeDAO.setNoiceImgAdd(noticeImgDTO);
		}		

		return result; //bankBookDAO.setBankBookAdd(bankBookDTO);
	}
	
	public int setNoticeUpdate(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setNoticeUpdate(noticeDTO);
	}
	
}
