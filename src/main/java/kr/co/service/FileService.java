package kr.co.service;

import java.util.List;
import java.util.Map;

public interface FileService {

	List<String> getFile(int item_no);

	int insertNdb(Map<String, Object> map);

	int deleteFileByFilename(String file_name);

}
