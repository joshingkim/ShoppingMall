package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.LikeItemVO;
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
		
}
