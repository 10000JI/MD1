package com.md.s1.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.md.s1.util.Pager_D1;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.MD1.s1.qna.QnaDAO.";
	

	public Long getQnaCount(Pager_D1 pager_D1)throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getQnaCount",pager_D1);
	}

	
	public List<QnaDTO> getQnaList(Pager_D1 pager_D1) throws Exception {
		 return sqlSession.selectList(NAMESPACE+"getQnaList",pager_D1);
		
	}


	public QnaDTO getQnaDetail(QnaDTO qnaDTO) throws Exception {		
	
		return sqlSession.selectOne(NAMESPACE+"getQnaDetail", qnaDTO);
	}

	public int setQnaAdd(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setQnaAdd",qnaDTO);
	}
	
	public int setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setQnaUpdate", qnaDTO);
	}
	
	public int setQnaDelete (QnaDTO qnaDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setQnaDelete", qnaDTO);
	}
	
	public int setQnaImgAdd(QnaImgDTO qnaImgDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setQnaImgAdd",qnaImgDTO);
	}
	
}
