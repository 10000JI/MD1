package com.md.s1.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.MD1.s1.qna.QnaDAO.";
	

	
	public Long getBoardNum() throws  Exception{
		return sqlSession.selectOne(NAMESPACE+"getQnaNum");

	}
	
	public List<QnaDTO> getQnaList() throws Exception {
		List<QnaDTO> ar = sqlSession.selectList(NAMESPACE+"getQnaList");
		return ar;
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
