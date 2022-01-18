package kr.co.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadUtils {

	public static String uploadFile(MultipartFile file, String originalFilename, String uploadpath) throws Exception {
		String datePath = calData(uploadpath);

		String savedName = getSystemFilename(originalFilename);

		File target = new File(uploadpath + datePath, savedName);
		FileCopyUtils.copy(file.getBytes(), target);

		String formatName = getFormatName(originalFilename);
		MediaType mType = getMediaType(formatName);

		String uploadedFilename = null;

		if (mType != null) {
			uploadedFilename = makeThumbnail(uploadpath, datePath, savedName);
		} else {
			uploadedFilename = makeIconInfo(datePath, savedName);
		}

		return uploadedFilename;
	}
	
	public static String uploadFile2(MultipartFile file, String filename, String uploadpath) throws Exception {
		
		String formatName = getFormatName(filename);
		MediaType mType = getMediaType(formatName);
		
		String savedName = null;
		
		if(mType != null) {
			savedName = getOriginalImageFilename(filename);
		}else {
			savedName = filename;
		}
		
		
		File target = new File(uploadpath + savedName);
		FileCopyUtils.copy(file.getBytes(), target);

		String uploadedFilename = null;

		if (mType != null) {
			uploadedFilename = makeThumbnail2(uploadpath, savedName, filename);
		}

		return uploadedFilename;
	}
	
	public static String calData(String uploadpath) {
		Calendar cal = Calendar.getInstance();

		int year = cal.get(Calendar.YEAR);
		String yearPath = File.separator + year;

		int month = cal.get(Calendar.MONTH) + 1;
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(month);

		int date = cal.get(Calendar.DATE);
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(date);

		makeDir(uploadpath, yearPath, monthPath, datePath);

		return datePath;
	}
	
	public static void makeDir(String uploadpath, String yearPath, String monthPath, String datePath) {
		File f1 = new File(uploadpath, datePath);
		if (f1.exists()) {
			return;
		} else {
			File fyear = new File(uploadpath, yearPath);
			if (!fyear.exists()) {
				fyear.mkdir();
			}

			File fmonth = new File(uploadpath, monthPath);
			if (!fmonth.exists()) {
				fmonth.mkdir();
			}
			File fdate = new File(uploadpath, datePath);
			if (!fdate.exists()) {
				fdate.mkdir();
			}
		}

	}
	
	public static String getSystemFilename(String originalFilename) {
		UUID uid = UUID.randomUUID();
		return uid.toString() + "_" + originalFilename;
	}
	
	public static String getFormatName(String filename) {
		int idx = filename.lastIndexOf(".");
		String formatName = filename.substring(idx + 1);
		return formatName;
	}

	public static MediaType getMediaType(String formatName) {
		Map<String, MediaType> mediaMap = new HashMap<String, MediaType>();

		mediaMap.put("JPG", MediaType.IMAGE_JPEG);
		mediaMap.put("JPEG", MediaType.IMAGE_JPEG);
		mediaMap.put("PNG", MediaType.IMAGE_PNG);
		mediaMap.put("GIF", MediaType.IMAGE_GIF);

		formatName = formatName.toUpperCase();

		MediaType mediaType = mediaMap.get(formatName);

		return mediaType;
	}
	
	private static String makeThumbnail(String uploadpath, String datepath, String savedName) throws Exception {
		File srcFile = new File(uploadpath + datepath, savedName);
		
		BufferedImage sourceImg = ImageIO.read(srcFile);
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_EXACT, 100);
		String thumbnailName = datepath + File.separator + "s_" + savedName;
		
		File newFile = new File(uploadpath, thumbnailName);
		String formatName = getFormatName(savedName);

		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		return thumbnailName.replace(File.separatorChar, '/');
	}
	
	private static String makeThumbnail2(String uploadpath, String savedName, String filename) throws Exception {
		File srcFile = new File(uploadpath + savedName);
		
		BufferedImage sourceImg = ImageIO.read(srcFile);
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_EXACT, 100);
		String thumbnailName = filename;
		
		File newFile = new File(uploadpath, thumbnailName);
		String formatName = getFormatName(savedName);

		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		return thumbnailName.replace(File.separatorChar, '/');
	}
	
	private static String makeIconInfo(String datePath, String savedName) {
		String iconInfo = datePath + File.separator + savedName;
		iconInfo = iconInfo.replace(File.separatorChar, '/');

		return iconInfo;
	}
	
	public static String getOriginalImageFilename(String filename) {
		String prefix = filename.substring(0, 12);
		String suffix = filename.substring(14);
		return prefix+suffix;
	}
}
