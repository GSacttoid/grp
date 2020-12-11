package com.greenart.grp.service.boardSrv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.grp.model.ArticleVO;
import com.greenart.grp.model.BoardVO;
import com.greenart.grp.repository.boardDao.ArtDao;

@Service
public class ArtSrv {
	
	@Autowired
	ArtDao artDao;
	
	public BoardVO getBoardInfo(String boardCode) {
		return artDao.getBoardInfo(boardCode);
	}

	public List<ArticleVO> getArticleList(String boardCode, int start, int end){
		return artDao.getArticleList(boardCode, start, end);
	}

	public void setArticle(ArticleVO avo) {
		
		//특수문자 처리(replace) : subject, content, writer
		String subject = avo.getSubject(); //값 읽어오기
		subject.replace("<", "&lt;"); //데이터 변환
		subject.replace(">", "&gt;");
		subject.replace(" ", "&nbsp;");
		subject.replace("\n", "<br />");
		avo.setSubject(subject); //변환 데이터를 model에 저장
		
		artDao.setArticle(avo);
	}
	
	public int getArticleCount(String boardCode) {
		return artDao.getArticleCount(boardCode);
	}

	public void hitUp(String boardCode, int aid) {
		artDao.hitUp(boardCode, aid);
	}
	
	public ArticleVO getArticleView(String boardCode, int aid) {
		return artDao.getArticleView(boardCode, aid);
	}

	public ArticleVO getArticleReplyInfo(String boardCode, int aid) {
		return artDao.getArticleReplyInfo(boardCode, aid);
	}
	
	public void setArticleReplyOrder(ArticleVO avo) {
		artDao.setArticleReplyOrder(avo);
	}
	
	public void setArticleReply(ArticleVO avo) {
		ArticleVO vo = artDao.getArticleReplyInfo(avo.getBoardCode(), avo.getAid());
		avo.setRef(vo.getRef());
		avo.setRe_step(vo.getRe_step());
		avo.setRe_level(vo.getRe_level());
		
		artDao.setArticleReplyOrder(avo);
		artDao.setArticleReply(avo);
	}
}
