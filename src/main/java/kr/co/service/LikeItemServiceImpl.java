package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.LikeItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.LikeItemDAO;

@Service
public class LikeItemServiceImpl implements LikeItemService {
		
		@Inject
		private LikeItemDAO likeDao;

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

		@Override
		public PageTO<LikeItemVO> list(PageTO<LikeItemVO> pt, String member_id) {
			int amount = likeDao.getAmount();
			pt.setAmount(amount);
			List<LikeItemVO> list = likeDao.list(pt, member_id);
			pt.setList(list);

			return pt;
		}

}
