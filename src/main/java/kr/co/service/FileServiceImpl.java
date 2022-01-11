package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
@Service
public class FileServiceImpl implements FileService {

	@Inject
	private FileDAO fDao;

	@Override
	public List<String> getFile(int item_no) {
		// TODO Auto-generated method stub
		return fDao.getFile(item_no);
	}
	
}
