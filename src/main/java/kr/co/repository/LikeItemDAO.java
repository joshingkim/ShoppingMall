package kr.co.repository;

import java.util.Map;

import kr.co.domain.LikeItemVO;

public interface LikeItemDAO {

	int insert(LikeItemVO vo);

	int count(LikeItemVO vo);

	int delete(LikeItemVO vo);

}
