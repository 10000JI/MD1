package com.md.s1.qna;

import java.util.Date;

public class QnaDTO {
	private Long QnaNum;
	private String QnaTitle;
	private String QnaContents;
	private Date QnaRegDate;
	private String QnaWriter;
	private Integer QnaHit;
	private QnaImgDTO qnaImgDTO;
	
	
	public QnaImgDTO getQnaImgDTO() {
		return qnaImgDTO;
	}
	public void setQnaImgDTO(QnaImgDTO qnaImgDTO) {
		this.qnaImgDTO = qnaImgDTO;
	}
	public Long getQnaNum() {
		return QnaNum;
	}
	public void setQnaNum(Long qnaNum) {
		QnaNum = qnaNum;
	}
	public String getQnaTitle() {
		return QnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		QnaTitle = qnaTitle;
	}
	public String getQnaContents() {
		return QnaContents;
	}
	public void setQnaContents(String qnaContents) {
		QnaContents = qnaContents;
	}
	

	
	public Date getQnaRegDate() {
		return QnaRegDate;
	}
	public void setQnaRegDate(Date qnaRegDate) {
		QnaRegDate = qnaRegDate;
	}
	
	public String getQnaWriter() {
		return QnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		QnaWriter = qnaWriter;
	}
	public Integer getQnaHit() {
		return QnaHit;
	}
	public void setQnaHit(Integer qnaHit) {
		QnaHit = qnaHit;
	}
	


}