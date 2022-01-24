package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.LikeItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
import kr.co.repository.LikeItemDAO;

@Service
public class LikeItemServiceImpl implements LikeItemService {
		
		@Inject
		private LikeItemDAO likeDao;
		
		@Inject
		private FileDAO fDao;
		
		@Inject
		private ItemDAO iDao;
		
		@Override
		public int insert(LikeItemVO vo) {
			return likeDao.insert(vo);
		}

		@Override
		public int count(LikeItemVO vo) {
			return likeDao.count(vo);
		}

		@Override
		public int delete(LikeItemVO vo) {
			return likeDao.delete(vo);
		}
		@Transactional
		@Override
		public PageTO<LikeItemVO> list(PageTO<LikeItemVO> pt, String member_id) {
			int amount = likeDao.getAmount();
			pt.setAmount(amount);
			
			List<LikeItemVO> list = likeDao.list(pt, member_id);
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
