package com.md.s1.qna;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.md.s1.util.FileManager;



@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO = new QnaDAO();
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager fileManager;
	
	
	 public List<QnaDTO> getQnaList() throws Exception{
     List<QnaDTO> ar = qnaDAO.getQnaList();
	 return ar;
	 }
	 
	 public QnaDTO getQnaDetail(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.getQnaDetail(qnaDTO);
	}
	 
	 public int  setQnaAdd(QnaDTO qnaDTO, MultipartFile pic) throws Exception {
		 int result = qnaDAO.setQnaAdd(qnaDTO);
		//1. File을 HDD에 저장 경로
			// Project 경로가 아닌 OS가 이용하는 경로
			String realPath = servletContext.getRealPath("resources/upload/qna");
			System.out.println(realPath);
			String fileName = fileManager.fileSave(pic, realPath); //FileManager 에서 준 리턴 파일네임 
																   //이걸 이제 DB에 저장해야함 
			//2. DB에 저장
			QnaImgDTO qnaImgDTO = new QnaImgDTO();
			//FILENUM 은 시퀸서로 
			qnaImgDTO.setFileName(fileName); // 하드디스크에 저장될 파일 이름 
			qnaImgDTO.setOriName(pic.getOriginalFilename()); //오리지널 네임 
			qnaImgDTO.setQnaNum(qnaDTO.getQnaNum()); // QnaNum 을 저장
			
			result = qnaDAO.setQnaImgAdd(qnaImgDTO);
					 
			return result;
	 } 
	 
	 public int setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		 return qnaDAO.setQnaUpdate(qnaDTO);
	 }
	
	public int setQnaDelete(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaDelete(qnaDTO);
	}
	 
	 

	
}