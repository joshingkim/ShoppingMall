package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.repository.BoardDAO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Inject
	private ItemDAO iDao;
	
	@Inject
	private FileDAO fDao;
	
	@Inject
	private BoardDAO bDao;
	
	@Transactional
	@Override
	public void insert(ItemVO ivo, BoardVO bvo) {
		iDao.insert(ivo);
		
		bvo.setItem_no(ivo.getItem_no());
		
		bDao.insert(bvo);
		
		String[] arr = ivo.getInsertfiles();
		int item_no = ivo.getItem_no();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_no", item_no);
		if (arr != null) {
			for (int i = 0; i < arr.length; i++) {
				map.put("file_name", arr[i]);
				fDao.insert(map);
			}
		}
		
	}
	@Transactional
	@Override
	public ItemVO read(int item_no, int board_no, HttpSession session) {
		// TODO Auto-generated method stub
		long update_time =0;
	      if(session.getAttribute("update_time" +board_no) !=null){
	         update_time =(long)session.getAttribute("update_time"+ board_no);   
	      }
	      long current_time =System.currentTimeMillis();
	      if(current_time - update_time > 60*1000){
	    	  bDao.increaseViewcnt(board_no);
	         session.setAttribute("update_time"+board_no, current_time);
	      }
		
		
		return iDao.read(item_no);
	}

	@Override
	public ItemVO updateUI(int item_no) {
		// TODO Auto-generated method stub
		return iDao.updateUI(item_no);
	}

	@Override
	public void update(ItemVO vo) {
		iDao.update(vo);
	}

	@Override
	public PageTO<ItemVO> list(PageTO<ItemVO> pt) {
		int amount = iDao.getAmount();
		pt.setAmount(amount);
		pt.setPerPage(12);
		
		List<ItemVO> list = iDao.list(pt);
		pt.setList(list);
		
		return pt;
	}

	@Override
	public void delete(int item_no) {
		iDao.delete(item_no);
	}
	@Override
	public List<ItemVO> getItem_size(String item_name) {
		// TODO Auto-generated method stub
		return iDao.getItem_size(item_name);
	}
	@Override
	public List<ItemVO> getItem_color(String item_name) {
		// TODO Auto-generated method stub
		return iDao.getItem_color(item_name);
	}
	@Transactional
	@Override
	public PageTO<ItemVO> listbycategory(PageTO<ItemVO> pt, String item_category) {
		int amount = iDao.getAmountbycategory(item_category);
		pt.setAmount(amount);
		pt.setPerPage(12);
		
		List<ItemVO> list = iDao.listbycategory(pt,item_category);
		pt.setList(list);
		
		return pt;
	}
	@Transactional
	@Override
	public PageTO<ItemVO> listofall(PageTO<ItemVO> pt) {
		int amount = iDao.getAmountOfAll();
		pt.setAmount(amount);
		
		List<ItemVO> list = iDao.listofall(pt);
		pt.setList(list);
		
		return pt;
	}
	@Override
	public int getItme_no(ItemVO vo) {
		// TODO Auto-generated method stub
		return iDao.getItme_no(vo);
	}
	@Transactional
	@Override
	public void addItem(ItemVO ivo) {
		int ori_item_no = ivo.getItem_no();
		System.out.println(ori_item_no);
		List<String> list = fDao.getFile(ori_item_no);
		BoardVO bvo = bDao.readbyItme_no(ori_item_no);

		iDao.insert(ivo);
		
		int item_no = ivo.getItem_no();
		System.out.println(item_no);
		bvo.setItem_no(item_no);
		bDao.insert(bvo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_no", item_no);
		map.put("file_name", list.get(0));
		fDao.insert(map);
	}
	@Override
	public ItemVO read(int item_no) {
		// TODO Auto-generated method stub
		return iDao.read(item_no);
	}
	@Transactional
	@Override
	public List<OrdersVO> listForRank() {
		List<OrdersVO> list = iDao.listForRank();
		
		for(int i=0; i<list.size(); i++) {
			int item_no = list.get(i).getItem_no();
			String file_name = fDao.getFile(item_no).get(0);
			list.get(i).setFile_name(file_name);
		}
		
		return list;
	}



}
