package com.md.s1.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.md.s1.util.Pager_M1;



@Repository
public class NoticeDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.md.s1.notice.NoticeDAO.";
	
	public Long getNoticeCount(Pager_M1 pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getNoticeCount", pager);
	}
	
	public List<NoticeDTO> getNoticeList(Pager_M1 pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getNoticeList",pager);
	}
	
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getNoticeDetail", noticeDTO);
	}
	
	public int setNoticeDelete(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setNoticeDelete",noticeDTO);
	}
	
	public int setNoticeAdd(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setNoticeAdd",noticeDTO);
	}
	
	public int setNoiceImgAdd(NoticeImgDTO noticeImgDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setNoticeImgAdd",noticeImgDTO);
	}
	
	public int setNoticeUpdate(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setNoticeUpdate",noticeDTO);
	}
	
}
