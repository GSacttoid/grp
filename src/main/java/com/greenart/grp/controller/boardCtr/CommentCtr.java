package com.greenart.grp.controller.boardCtr;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greenart.grp.model.CommentVO;
import com.greenart.grp.service.boardSrv.CommentSrv;

@Controller
@RequestMapping("/comment")
public class CommentCtr {
	
	@Autowired
	CommentSrv cSrv;
	
	@RequestMapping("/grp_comment_register")
	@ResponseBody
	public void setComment(@ModelAttribute CommentVO cvo) {
		cSrv.setComment(cvo);
	}

	@RequestMapping("/grp_comment_list")
	@ResponseBody
	public Map<String, Object> getCommentList(@ModelAttribute CommentVO cvo) {
		List<CommentVO> list = cSrv.getCommentList(cvo);  //댓글 리스트
		int count = cSrv.getCommentCount(cvo);  //게시물 개수
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		
		return map;
	}
}
