package kr.co.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.repository.CartDAO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
import kr.co.repository.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Inject 
	private OrderDAO oDao;
	
	@Inject
	private FileDAO fDao;
	
	@Inject
	private ItemDAO iDao;
	@Inject
	private CartDAO cDao;

	@Transactional
	@Override
	public String insert(List<OrdersVO> orderList) {
		OrdersVO ovo = new OrdersVO();
		for(int i=0; i<orderList.size(); i++) {
			ovo = orderList.get(i);
			oDao.insert(ovo);
			int item_no= ovo.getItem_no();
			iDao.updateQuantity(item_no);
			String member_id = ovo.getMember_id();
			cDao.deleteCart(member_id);
		}
		String date = oDao.getOrder_date(ovo.getOrder_id());
		return date;
	}

	@Override
	public List<OrdersVO> list(String member_id) {
		return oDao.list(member_id);
	}

	@Override
	public List<OrdersVO> list_manager(List<OrdersVO> vo) {
		return oDao.list_manager(vo);
	}

	@Override
	public void status(OrdersVO vo) {
		oDao.status(vo);
	}

	@Override
	public List<OrdersVO> mlist(OrdersVO vo, int count) {
		return oDao.mlist(vo, count);
	}

	@Override
	public OrdersVO checkorder(int order_id) {
		// TODO Auto-generated method stub
		return oDao.checkorder(order_id);
	}
	@Transactional
	@Override
	public PageTO<OrdersVO> list_manager(PageTO<OrdersVO> pt) {
		int amount = oDao.getAmount();
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<OrdersVO> list = oDao.list_manager(pt);
		pt.setList(list);
		
		list = pt.getList();
		
		for(int i=0; i<list.size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String file_name = fDao.getFile(item_no).get(0);
			pt.getList().get(i).setFile_name(file_name);
			String item_name = iDao.getItem_name(item_no);
			pt.getList().get(i).setItem_name(item_name);
		}
		
		return pt;
		}
	}
	@Transactional
	@Override
	public PageTO<OrdersVO> list(PageTO<OrdersVO> pt, String member_id) {
		int amount = oDao.getAmountMember(member_id);
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<OrdersVO> list = oDao.list(pt,member_id);
		pt.setList(list);
		
		list = pt.getList();
		
		for(int i=0; i<list.size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String file_name = fDao.getFile(item_no).get(0);
			pt.getList().get(i).setFile_name(file_name);
			String item_name = iDao.getItem_name(item_no);
			pt.getList().get(i).setItem_name(item_name);
		}
		
		return pt;
		}
	}



	


	



}
