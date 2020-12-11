package com.greenart.grp.service.boardSrv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.grp.model.BoardVO;
import com.greenart.grp.repository.boardDao.BoardDao;

@Service
public class BoardSrv {
	
	@Autowired
	BoardDao boardDao;
	
	public void setBoard(BoardVO bvo) {
		boardDao.setBoard(bvo);
	}
	
	public void createArticleTbl(String boardCode) {
		boardDao.createArticleTbl(boardCode);
	}

	public void createCommentTbl(String boardCode) {
		boardDao.createCommentTbl(boardCode);
	}
	
	public int getBoardChk(String boardCode) {
		return boardDao.getBoardChk(boardCode);
	}

	public List<BoardVO> getBoardList(int start, int end){
		return boardDao.getBoardList(start, end);
	}

	public void setBoardDelete(String boardCode) {
		boardDao.setBoardDelete(boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		boardDao.dropArticleTbl(boardCode);
	}
	
	public void dropCommentTbl(String boardCode) {
		boardDao.dropCommentTbl(boardCode);
	}

	public int getBoardCount() {
		return boardDao.getBoardCount();
	}
}
