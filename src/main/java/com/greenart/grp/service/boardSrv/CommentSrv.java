package com.greenart.grp.service.boardSrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.grp.model.CommentVO;
import com.greenart.grp.repository.boardDao.CommentDao;

@Service
public class CommentSrv {
	
	@Autowired
	CommentDao cDao;
	
	public void setComment(CommentVO cvo) {
		cDao.setComment(cvo);
	}
	
	public List<CommentVO> getCommentList(CommentVO cvo){
		return cDao.getCommentList(cvo);
	}
	
	public int getCommentCount(CommentVO cvo) {
		return cDao.getCommentCount(cvo);
	}

}
