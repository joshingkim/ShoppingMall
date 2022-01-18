package kr.co.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.service.FileService;
import kr.co.utils.UploadUtils;

@Controller
@RequestMapping("/file")
public class FileController {

	@Inject
	private FileService fService;

	@Inject
	private ServletContext ctx;
	
	@Resource(name = "uploadpath")
	private String uploadpath;

	@RequestMapping(value = "/upload", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> upload(MultipartHttpServletRequest request) {
		ResponseEntity<String> entity = null;

		try {
			MultipartFile file = request.getFile("file");
			String originalName = file.getOriginalFilename();
			String uploadpath = ctx.getRealPath(this.uploadpath);
			String uploadedFilename = UploadUtils.uploadFile(file, originalName, uploadpath);
			entity = new ResponseEntity<String>(uploadedFilename, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value = "/upload2", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> upload2(MultipartHttpServletRequest request) {
		ResponseEntity<String> entity = null;

		try {
			MultipartFile file = request.getFile("file");
			String filename = request.getParameter("filename");
			String uploadpath = ctx.getRealPath(this.uploadpath);
			String uploadedFilename = UploadUtils.uploadFile2(file, filename, uploadpath);
			entity = new ResponseEntity<String>(uploadedFilename, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/displayfile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayfile(String filename) {
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		try {
			HttpHeaders headers = new HttpHeaders();

			String uploadpath = ctx.getRealPath(this.uploadpath);
			in = new FileInputStream(new File(uploadpath, filename));
			String formatName = UploadUtils.getFormatName(filename);
			MediaType mType = UploadUtils.getMediaType(formatName);

			headers.setContentType(mType);

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return entity;
	}
	
	@RequestMapping(value = "/deletefile", method = RequestMethod.POST)
	public ResponseEntity<String> deletefile(String filename) {
		ResponseEntity<String> entity = null;
		String uploadpath = ctx.getRealPath(this.uploadpath);
		filename = filename.replace('/', File.separatorChar);
		try {
			String formatName = UploadUtils.getFormatName(filename);
			MediaType mType = UploadUtils.getMediaType(formatName);
			if(mType != null) {
				String originalImageFilename = UploadUtils.getOriginalImageFilename(filename);
				File f2 = new File(uploadpath, originalImageFilename);
				f2.delete();
				Thread.sleep(10);
			}
			
			File f = new File(uploadpath, filename);
			f.delete();
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "/getFile/{item_no}",method = RequestMethod.GET)
	public ResponseEntity<List<String>> getFile(@PathVariable("item_no") int item_no) {
		ResponseEntity<List<String>> entity = null;
		
		try {
			List<String> list = fService.getFile(item_no);
			entity = new ResponseEntity<List<String>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<String>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/getFile/{item_no}/{item_name}",method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getFile2(@PathVariable("item_no") int item_no,@PathVariable("item_name") String item_name) {
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			List<String> list = fService.getFile(item_no);
			map.put("list", list);
			map.put("item_no", item_no);
			map.put("item_name", item_name);
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping(value = "/downloadorshow", method = RequestMethod.GET)
	public ResponseEntity<byte[]> downloadorshow(String linkurl) {
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;

		try {
			HttpHeaders headers = new HttpHeaders();

			String uploadpath = ctx.getRealPath(this.uploadpath);
			in = new FileInputStream(new File(uploadpath, linkurl));

			String formatName = UploadUtils.getFormatName(linkurl);
			MediaType mType = UploadUtils.getMediaType(formatName);

			if (mType != null) {
				headers.setContentType(mType);
			} else {
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);

				int idx = linkurl.indexOf("_");
				String filename = linkurl.substring(idx + 1);
				String str = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
				headers.add("Content-Disposition", "attachment;filename=\"" + str + "\"");
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return entity;
	}
	
	@RequestMapping(value = "/deletefileNdb", method = RequestMethod.POST)
	public ResponseEntity<String> deletefileNdb(String filename) {
		ResponseEntity<String> entity = null;
		String uploadpath = ctx.getRealPath(this.uploadpath);
		filename.replace('/', File.separatorChar);
		
		try {
			
			int result = fService.deleteFileByFilename(filename);
			
			if(result == 0) {
				entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
				return entity;
			}
			
			String formatName = UploadUtils.getFormatName(filename);
			MediaType mType = UploadUtils.getMediaType(formatName);
			if(mType != null) {
				String originalImageFilename = UploadUtils.getOriginalImageFilename(filename);
				File f2 = new File(uploadpath, originalImageFilename);
				f2.delete();
			}
			File f = new File(uploadpath, filename);
			f.delete();
			
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "/uploadNdb/{item_no}", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadajaxNdb(MultipartHttpServletRequest request, @PathVariable("item_no") int item_no) {
		ResponseEntity<String> entity = null;

		try {
			MultipartFile file = request.getFile("file");
			String filename = request.getParameter("filename");
			String uploadpath = ctx.getRealPath(this.uploadpath);
			
			String uploadedFilename = UploadUtils.uploadFile2(file, filename, uploadpath);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("item_no", item_no);
			map.put("file_name", uploadedFilename);
			int result = fService.insertNdb(map);
			
			if(result==0) {
				String formatName = UploadUtils.getFormatName(uploadedFilename);
				MediaType mType = UploadUtils.getMediaType(formatName);
				if(mType != null) {
					String originalImageFilename = UploadUtils.getOriginalImageFilename(uploadedFilename);
					File f2 = new File(uploadpath, originalImageFilename);
					f2.delete();
					Thread.sleep(10);
				}
				File f = new File(uploadpath, uploadedFilename);
				f.delete();
				entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
				return entity;
			}
			
			entity = new ResponseEntity<String>(uploadedFilename, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
