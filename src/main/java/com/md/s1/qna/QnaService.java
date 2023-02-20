package com.md.s1.qna;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.md.s1.notice.NoticeImgDTO;
import com.md.s1.util.FileManager;
import com.md.s1.util.Pager_D1;



@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO = new QnaDAO();
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager fileManager;
	
	
	 public List<QnaDTO> getQnaList(Pager_D1 pager_D1) throws Exception{
		Long totalCount = qnaDAO.getQnaCount(pager_D1);
		pager_D1.makeNum(totalCount);
		pager_D1.makeRow();
     	return qnaDAO.getQnaList(pager_D1);
	 }
	 
	 public QnaDTO getQnaDetail(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.getQnaDetail(qnaDTO);
	}
	 
	 public int  setQnaAdd(QnaDTO qnaDTO, MultipartFile pic) throws Exception {
		 int result = qnaDAO.setQnaAdd(qnaDTO);
			if(!pic.isEmpty()) { 
				String realPath = servletContext.getRealPath("resources/upload/qna");
				System.out.println(realPath);
				String fileName = fileManager.fileSave(pic, realPath);
			
				QnaImgDTO qnaImgDTO = new QnaImgDTO();
				qnaImgDTO.setFileName(fileName);
				qnaImgDTO.setOriName(pic.getOriginalFilename());
				qnaImgDTO.setQnaNum(qnaDTO.getQnaNum());
				
				result = qnaDAO.setQnaImgAdd(qnaImgDTO);
			}		

			return result; //bankBookDAO.setBankBookAdd(bankBookDTO);
		}
	 
	 public int setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		 return qnaDAO.setQnaUpdate(qnaDTO);
	 }
	
	public int setQnaDelete(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaDelete(qnaDTO);
	}
	 
	 

	
}