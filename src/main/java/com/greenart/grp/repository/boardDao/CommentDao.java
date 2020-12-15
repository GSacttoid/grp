package com.greenart.grp.repository.boardDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.CommentVO;

@Repository
public class CommentDao {

	@Autowired
	SqlSession sqlSession;
	
	public void setComment(CommentVO cvo) {
		sqlSession.insert("comment.setComment", cvo);
	}
	
	public List<CommentVO> getCommentList(CommentVO cvo){
		return sqlSession.selectList("comment.getCommentList", cvo);
	}
	
	public int getCommentCount(CommentVO cvo) {
		return sqlSession.selectOne("comment.getCommentCount", cvo);
	}
	
	public void setCommentDelete(CommentVO cvo) {
		sqlSession.delete("comment.setCommentDelete", cvo);
	}
	
	public void setCommentModify(CommentVO cvo) {
		sqlSession.update("comment.setCommentModify", cvo);
	}
}
