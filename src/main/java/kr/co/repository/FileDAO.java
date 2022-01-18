package kr.co.repository;

import java.util.List;
import java.util.Map;

public interface FileDAO {

	List<String> getFile(int item_no);

	void insert(Map<String, Object> map);

	int insertNdb(Map<String, Object> map);

	int deleteFileByFilename(String file_name);

}
