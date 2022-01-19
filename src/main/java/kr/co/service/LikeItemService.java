package kr.co.service;

import kr.co.domain.LikeItemVO;

public interface LikeItemService {

	int insert(LikeItemVO vo);

	int count(LikeItemVO vo);

	int delete(LikeItemVO vo);

}
