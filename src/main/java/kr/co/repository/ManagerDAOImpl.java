package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ManagerVO;
import kr.co.domain.MemberVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;

@Repository
public class ManagerDAOImpl implements ManagerDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private String NS = "kr.co.manager";

	@Override
	public void insert(ManagerVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public List<OrdersVO> list() {
		return sqlSession.selectList(NS+".list");
	}

	
	 @Override 
	 public List<Object> saleRank() {
		 return sqlSession.selectList(NS+".saleRank"); }
	 

	
	 @Override
		public   List<Object> daySale() {
			return sqlSession.selectList(NS+".daySale");
		}

		
		  @Override public List<Object> likeRank() {
		  
		 return sqlSession.selectList(NS+".likeRank"); }

		@Override
		public List<Object> getName() {
			
			return sqlSession.selectList(NS+".getName");
		}

		@Override
		public List<Object> keywordRank() {
		
			return sqlSession.selectList(NS+".keywordRank");
		}

		@Override
		public ManagerVO idcheck(String manager_id) {
			
			return sqlSession.selectOne(NS+".idcheck", manager_id);
		}

		@Override
		public List<Object> managerList() {
			
			return sqlSession.selectList(NS+".managerList");
		}

		@Override
		public void updateCode(ManagerVO vo) {
			sqlSession.update(NS+".updateCode", vo);
			
		}

		@Override
		public void managerDelete(ManagerVO vo) {
			sqlSession.delete(NS+".managerDelete", vo);
		}

		@Override
		public ManagerVO read(String manager_id) {
			
			return sqlSession.selectOne(NS+".read", manager_id);
		}

		@Override
		public List<Object> ageRank() {
			
			return sqlSession.selectList(NS+".ageRank");
		}

		@Override
		public List<Object> categoryRank() {
			
			return sqlSession.selectList(NS+".categoryRank");
		}

		@Override
		public ManagerVO managerLogin(ManagerVO vo) {
			
			return sqlSession.selectOne(NS+".managerLogin", vo);
		}

		@Override
		public ManagerVO updateUI(String manager_id) {
			
			return sqlSession.selectOne(NS+".updateUI", manager_id);
		}

		@Override
		public void update(ManagerVO vo) {
			sqlSession.update(NS+".update", vo);
		}

		@Override
		public List<Object> monthSale() {
			
			return sqlSession.selectList(NS+".monthSale");
		}

		@Override
		public List<MemberVO> memberList() {
			
			return sqlSession.selectList(NS+".memberList");
		}

		

	
	

	
	

}
