package com.greenart.grp.repository.boardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.ArticleVO;
import com.greenart.grp.model.BoardVO;

@Repository
public class ArtDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public BoardVO getBoardInfo(String boardCode) {
		return sqlSession.selectOne("article.getBoardInfo", boardCode);
	}
	
	public List<ArticleVO> getArticleList(String boardCode, int start, int end){
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("start", start);
		map.put("end", end);
		map.put("boardCode", boardCode);
		return sqlSession.selectList("article.getArticleList", map);
	}
	
	public void setArticle(ArticleVO avo) {
		sqlSession.insert("article.setArticle", avo);
	}
	
	public int getArticleCount(String boardCode) {
		return sqlSession.selectOne("article.getArticleCount", boardCode);
	}
	
	public void hitUp(String boardCode, int aid) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("boardCode", boardCode);
		map.put("aid", aid);
		sqlSession.update("article.hitUp", map);
	}
	
	public ArticleVO getArticleView(String boardCode, int aid) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return sqlSession.selectOne("article.getArticleView", map);
	}
	
	public ArticleVO getArticleReplyInfo(String boardCode, int aid) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return sqlSession.selectOne("article.getArticleReplyInfo", map);
	}
	
	public void setArticleReplyOrder(ArticleVO avo) {
		sqlSession.update("article.setArticleReplyOrder", avo);
	}
	
	public void setArticleReply(ArticleVO avo) {
		sqlSession.insert("article.setArticleReply", avo);
	}
}
