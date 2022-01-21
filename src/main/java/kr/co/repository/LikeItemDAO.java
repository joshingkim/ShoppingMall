package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.LikeItemVO;
import kr.co.domain.PageTO;

public interface LikeItemDAO {

	int insert(LikeItemVO vo);

	int count(LikeItemVO vo);

	int delete(LikeItemVO vo);

	List<LikeItemVO> list(PageTO<LikeItemVO> pt, String member_id);

	int getAmount();

}
