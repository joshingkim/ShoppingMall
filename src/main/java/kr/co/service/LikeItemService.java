package kr.co.service;

import java.util.Map;

import kr.co.domain.LikeItemVO;
import kr.co.domain.PageTO;

public interface LikeItemService {

	int insert(LikeItemVO vo);

	int count(LikeItemVO vo);

	int delete(LikeItemVO vo);

	PageTO<LikeItemVO> list(PageTO<LikeItemVO> pt, String member_id);
	
}
