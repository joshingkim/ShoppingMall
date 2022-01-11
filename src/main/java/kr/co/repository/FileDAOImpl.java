package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class FileDAOImpl implements FileDAO {

	@Inject
	private SqlSession sqlSession;
	private String NS = "kr.co.file";
	
	@Override
	public List<String> getFile(int item_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".getFile", item_no);
	}

	@Override
	public void insert(Map<String, Object> map) {
		sqlSession.insert(NS+".insert", map);
	}

	@Override
	public int insertNdb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NS+".insert", map);
	}

	@Override
	public int deleteFileByFilename(String file_name) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NS+".deleteFileByFilename", file_name);
	}

}
