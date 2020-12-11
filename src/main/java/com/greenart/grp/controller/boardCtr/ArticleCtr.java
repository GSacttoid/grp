package com.greenart.grp.controller.boardCtr;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.grp.model.ArticleVO;
import com.greenart.grp.model.BoardVO;
import com.greenart.grp.paging.Pager;
import com.greenart.grp.service.boardSrv.ArtSrv;

@Controller
public class ArticleCtr {

	@Autowired
	ArtSrv artSrv;

	@RequestMapping("/article/grp_article_list")
	public ModelAndView getArticleList(@RequestParam String boardCode,
			/* pager */ @RequestParam(defaultValue = "1") int curPage) {
		ModelAndView mav = new ModelAndView();
		BoardVO info = artSrv.getBoardInfo(boardCode);
		int count = artSrv.getArticleCount(boardCode);

		/* pager */
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		mav.addObject("boardCode", boardCode);
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		mav.addObject("count", count);
		mav.addObject("list", artSrv.getArticleList(boardCode, start, end));

		/* pager */
		mav.addObject("start", start); // 선택 페이지 시작번호
		mav.addObject("end", end); // 선택 페이지 끝번호
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("totalPage", pager.getTotPage());

		/* 페이지 번호를 클릭시 css active 클래스 처리 */
		mav.addObject("selected", pager.getCurPage());

		mav.setViewName("grp_board/grp_article_list");
		return mav;
	}

	@RequestMapping(value = "/article/grp_article_insert", method = RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam String boardCode) {
		ModelAndView mav = new ModelAndView();
		BoardVO info = artSrv.getBoardInfo(boardCode);

		mav.addObject("boardCode", boardCode);
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		mav.setViewName("grp_board/grp_article_insert");
		return mav;
	}

	@RequestMapping(value = "/article/grp_article_insert", method = RequestMethod.POST)
	public String setArticleInsert(@ModelAttribute ArticleVO avo, @RequestPart MultipartFile files)
			throws Exception, IOException {

		// 첨부파일 존재 여부
		if (files.isEmpty()) { // 첨부파일 X
			artSrv.setArticle(avo);
		} else { // 첨부파일 O
			String fileUrl = "C://upload//article//"; // 첨부파일 저장위치 ('//'로 사용)
			String fileName = files.getOriginalFilename(); // 첨부파일 이름
			String fileNameEx = FilenameUtils.getExtension(fileName).toLowerCase(); // 파일이름 중복방지

			File desFile;
			String desFileName;

			do {
				desFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameEx;
				// System.out.println(desFileName);
				desFile = new File(fileUrl + desFileName);
			} while (desFile.exists());
			desFile.getParentFile().mkdirs(); // 폴더 자동 생성
			files.transferTo(desFile);
			avo.setFileName(desFileName);
			avo.setFileOriName(fileName);
			avo.setFileUrl(fileUrl);

			artSrv.setArticle(avo);
		}
		return "redirect:/article/grp_article_list?boardCode=" + avo.getBoardCode();
	}

	@RequestMapping(value = "/article/grp_article_view", method = RequestMethod.GET)
	public ModelAndView getArticleView(@RequestParam String boardCode, @RequestParam int aid) {
		artSrv.hitUp(boardCode, aid); // 조회수 먼저 실행
		ModelAndView mav = new ModelAndView();
		mav.addObject("view", artSrv.getArticleView(boardCode, aid));
		mav.addObject("boardCode", boardCode);
		mav.setViewName("grp_board/grp_article_view");
		return mav;
	}

	@RequestMapping(value = "/grp_article_download", method = RequestMethod.GET)
	public void fileDown(@ModelAttribute ArticleVO avo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("UTF-8");
		ArticleVO vo = artSrv.getArticleView(avo.getBoardCode(), avo.getAid());

		// 파일 업로드된 경로
		try {
			String fileUrl = vo.getFileUrl();
			fileUrl += "/";
			String savePath = fileUrl;
			String fileName = vo.getFileName();

			// 실제 내보낼 파일명
			String oriFileName = vo.getFileOriName();
			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			// 파일을 읽어 스트림에 담기
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			// 파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {
				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					// IE 11 이상.
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					// 한글 파일명 처리
					response.setHeader("Content-Disposition",
							"attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}
				response.setHeader("Content-Length", "" + file.length());
				os = response.getOutputStream();
				byte b[] = new byte[(int) file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}
			} else {
				response.setContentType("text/html;charset=UTF-8");
				System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
			}
			in.close();
			os.close();
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}
	
	@RequestMapping(value = "/article/grp_article_reply", method = RequestMethod.GET)
	public ModelAndView getArticleReply(@RequestParam String boardCode, @RequestParam int aid) {
		ModelAndView mav = new ModelAndView();
		BoardVO info = artSrv.getBoardInfo(boardCode);

		mav.addObject("boardCode", boardCode);
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		mav.addObject("view", artSrv.getArticleView(boardCode, aid));
		mav.setViewName("grp_board/grp_article_reply");
		return mav;
	}
	
	@RequestMapping(value = "/article/grp_article_reply", method = RequestMethod.POST)
	public String setArticleReplyDo(@ModelAttribute ArticleVO avo, @RequestPart MultipartFile files)
			throws Exception, IOException {

		// 첨부파일 존재 여부
		if (files.isEmpty()) { // 첨부파일 X
			artSrv.setArticleReply(avo);
			
		} else { // 첨부파일 O
			String fileUrl = "C://upload//article//"; // 첨부파일 저장위치 ('//'로 사용)
			String fileName = files.getOriginalFilename(); // 첨부파일 이름
			String fileNameEx = FilenameUtils.getExtension(fileName).toLowerCase(); // 파일이름 중복방지

			File desFile;
			String desFileName;

			do {
				desFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameEx;
				// System.out.println(desFileName);
				desFile = new File(fileUrl + desFileName);
			} while (desFile.exists());
			desFile.getParentFile().mkdirs(); // 폴더 자동 생성
			files.transferTo(desFile);
			avo.setFileName(desFileName);
			avo.setFileOriName(fileName);
			avo.setFileUrl(fileUrl);

			artSrv.setArticleReply(avo);
		}
		return "redirect:/article/grp_article_list?boardCode=" + avo.getBoardCode();
	}

}
