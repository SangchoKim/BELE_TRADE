package com.javac.bele.web.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.javac.bele.web.common.Overlapping_common;
import com.javac.bele.web.common.Paging;
import com.javac.bele.web.common.service.store.StoreService;


@RequestMapping(value="/board" )
@Controller
public class StoreController {

	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
	
	private static int count = 0;
	
	@Autowired
	private StoreService boardService;
	
	@Autowired
	private Overlapping_common overlapping;
		
	@RequestMapping(value = "/storeshow", method = {RequestMethod.GET, RequestMethod.POST})
	public String showStore(Model model, @RequestParam Map map, HttpServletRequest req) throws Exception {
		String just = (String) map.get("just");
		int currentPageNo = 1;
		int maxPost = 10;
		
		if(req.getParameter("pages") != null)
			currentPageNo = Integer.parseInt(req.getParameter("pages"));
		
		Paging paging = new Paging(currentPageNo, maxPost);
		int offset = (paging.getCurrentPageNo() -1) * paging.getMaxpost();
		List<HashMap> result = boardService.showBoard(map, offset, paging.getMaxpost());			
		int total = boardService.writeGetCount(map);
		paging.setNumberOfRecords(total);
		
		paging.makePaging();
		
		model.addAttribute("prevPageNo", paging.prevPageNo);
		model.addAttribute("startPageNo", paging.startPageNo);
		model.addAttribute("currentPageNo", paging.currentPageNo);
		model.addAttribute("endPageNo", paging.endPageNo);
		model.addAttribute("Maxpost", paging.Maxpost);
		model.addAttribute("finalPageNo", paging.finalPageNo);
		model.addAttribute("nextPageNo", paging.nextPageNo);
		model.addAttribute("total", total);
		model.addAttribute("store", result);		
		return "store/showboard";
}
	@RequestMapping(value = "/storereview", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewNum(Model model, @RequestParam Map map) throws Exception {
		
		int result = boardService.reviewNum(map);	
		return "forward:/board/storeshow";
}
	
	@RequestMapping(value = "/addStore", method = {RequestMethod.GET, RequestMethod.POST})
	public String addStore(Model model, @RequestParam Map map) throws Exception {
		int result = boardService.writeBoard(map);
		model.addAttribute("store_seq", map);
		return "store/showform";
}
	
	@RequestMapping(value = "/showdetail",  method = {RequestMethod.GET, RequestMethod.POST})
	public String showdetail(Model model, @RequestParam Map map, HttpSession httpSession) throws Exception {	
		List result = boardService.showform(map);
		model.addAttribute("result", result);
		return "store/showdetail";
}
	@RequestMapping(value = "/updateform", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateform(Model model, @RequestParam Map map) throws Exception {		
		List result = boardService.showform(map);
		model.addAttribute("result", result);
		model.addAttribute("value", map.get("value"));
		return "store/showdetail";
}
	
	@RequestMapping(value = "/updatestore", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateStore(Model model, @RequestParam Map map) throws Exception {
		int result = boardService.updateBoard(map);
		return overlapping.overlap_update(model, result, map);
}
	
	@RequestMapping(value = "/deletestore", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteBoard(Model model, @RequestParam Map map) {
		int result = boardService.deleteBoard(map);
		return overlapping.overlap_delete(model, result, map);
}
	

	@RequestMapping(value = "/store_search", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeSearch(Model model, @RequestParam Map map) {		
		List result = boardService.storeSearch(map);
		if(result == null || result.isEmpty()) {
			return overlapping.storeSearch(model,map);
		}else{
			model.addAttribute("store", result);
			return"store/showboard";	
		}
		
		
}
	
	@RequestMapping(value = "/autocomplete", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public String autocomplete(Model model, HttpServletRequest req) {	
		String value = req.getParameter("value");
		JsonArray list = new JsonArray();
		JsonObject object = null;
		
		if(value.indexOf("L") > -1) {
			object = new JsonObject();
			object.addProperty("data", "LOTTE Mart");
			list.add(object);
			object = new JsonObject();
			object.addProperty("data", "Lotte Department Store");
			list.add(object);
			object = new JsonObject();
			object.addProperty("data", "LLOYD");
			list.add(object);
		}else if(value.indexOf("A")	> -1){
			object = new JsonObject();
			object.addProperty("data", "AHC");
			list.add(object);
			object = new JsonObject();
			object.addProperty("data", "ABC MART");
			list.add(object);
			object = new JsonObject();
			object.addProperty("data", "apM");
			list.add(object);
		}
		
		
		
		return new Gson().toJson(list);
}
}
