package com.md.s1.notice;

import java.sql.Date;

public class NoticeDTO {
	private Long noticeNum;
	private String noticeTitle;
	private String noticeContents;
	private String noticeWriter;
	private Date noticeRegDate;
	private Long noticeHit;
	private NoticeImgDTO noticeImgDTO;
	public Long getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(Long noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContents() {
		return noticeContents;
	}
	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public Date getNoticeRegDate() {
		return noticeRegDate;
	}
	public void setNoticeRegDate(Date noticeRegDate) {
		this.noticeRegDate = noticeRegDate;
	}
	public Long getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(Long noticeHit) {
		this.noticeHit = noticeHit;
	}
	public NoticeImgDTO getNoticeImgDTO() {
		return noticeImgDTO;
	}
	public void setNoticeImgDTO(NoticeImgDTO noticeImgDTO) {
		this.noticeImgDTO = noticeImgDTO;
	}
	
	
}
