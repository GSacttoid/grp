package com.greenart.grp.repository.boardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.BoardVO;

@Repository
public class BoardDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void setBoard(BoardVO bvo) {
		sqlSession.insert("board.setBoard", bvo);
	}
	
	public void createArticleTbl(String boardCode) {
		String str = "create table grp_article_"+boardCode ;
		str += "(aid int not null auto_increment primary key,";
		str += "division char(1),";
		str += "subject varchar(255) not null,";
		str += "writer varchar(20) not null,";
		str += "content text,";
		str += "regdate datetime,";
		str += "hit int default 0,";
		str += "fileName varchar(300),";
		str += "fileOriName varchar(300),";
		str += "fileUrl varchar(300),";
		str += "ref int,";
		str += "re_step int,";
		str += "re_level int);";
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.insert("board.createArticleTbl", map);
	}
	
	public void createCommentTbl(String boardCode) {
		String str = "create table grp_comment_"+boardCode ;
		str += "(cid int not null auto_increment primary key,";
		str += "aid int not null,";
		str += "comment text,";
		str += "who varchar(20),";
		str += "regdate datetime);";
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.insert("board.createArticleTbl", map);
	}
	
	public int getBoardChk(String boardCode) {
		return sqlSession.selectOne("board.getBoardChk", boardCode);
	}
	
	public List<BoardVO> getBoardList(int start, int end){
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.getBoardList", map);
	}
	
	public void setBoardDelete(String boardCode) {
		sqlSession.delete("board.setBoardDelete", boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		String str = "drop table grp_article_"+boardCode+";" ;

		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.insert("board.dropArticleTbl", map);
	}
	
	public void dropCommentTbl(String boardCode) {
		String str = "drop table grp_comment_"+boardCode+";" ;

		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		
		sqlSession.insert("board.dropCommentTbl", map);
	}
	
	public int getBoardCount() {
		return sqlSession.selectOne("board.getBoardCount");
	}
}
