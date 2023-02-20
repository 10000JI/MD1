package com.md.s1.notice;

import static org.junit.Assert.*;

import java.util.Random;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.md.s1.MyTestCase;

public class NoticeDAOTest extends MyTestCase {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void getNoticeAddTest() throws Exception {
		int a = 0;
		for(int i=0;i<30;i++) {
			Random r = new Random();
			double d = r.nextDouble(); //0.1234
			int num = (int)(d * 1000); //123
			d = num / 100.0;
			NoticeDTO noticeDTO = new NoticeDTO();
			noticeDTO.setNoticeTitle("[공지] 감사보고서-"+num);
			noticeDTO.setNoticeContents("[공지] 감사보고서");
			noticeDTO.setNoticeWriter("관리자");
			noticeDTO.setNoticeHit(100L);
			a = noticeDAO.setNoticeAdd(noticeDTO);
			assertEquals(1, a);
		}
	}
}
