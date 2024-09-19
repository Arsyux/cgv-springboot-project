package com.arsyux.cgv.domain;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.arsyux.cgv.domain.FileVO;

@Component
public class FileUtils {
	
	// 이미지 경로
	@Value("${FILE_PATH}")
	private String FILE_PATH;
	
	// 다중파일 업로드
	public List<FileVO> uploadFiles(List<MultipartFile> multipartFiles) {
		
		List<FileVO> files = new ArrayList<>();
		for (MultipartFile multipartFile : multipartFiles) {
			if(multipartFile.isEmpty()) { continue; }
			
			files.add(uploadFile(multipartFile));
		}
		return files;
	}
	
	// 단일파일 업로드
	public FileVO uploadFile(MultipartFile multipartFile) {
		if (multipartFile.isEmpty()) { return null; }
		
        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath(today) + File.separator + saveName;
        File uploadFile = new File(uploadPath);
        
        try {
            multipartFile.transferTo(uploadFile);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        
        FileVO file = new FileVO();
        file.setOriginal_name(multipartFile.getOriginalFilename());
        file.setSave_name(saveName);
        file.setRegdate(Timestamp.valueOf(today_now));
        
        return file;
	}
	
	// 다중파일 삭제
	public void deleteFiles(List<FileVO> files) {
		
		for (FileVO file : files) {
					
			deleteFile(file);
		}
		
	}
		
	// 단일파일 삭제
	public void deleteFile(FileVO file) {
		if (file == null) { return; }
		
		String date = file.getRegdate().toLocalDateTime().format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath(date) + File.separator + file.getSave_name();
        File deleteFile = new File(uploadPath);
        
        try { if(deleteFile.exists()) { deleteFile.delete(); } } 
		catch (Exception e) { throw new RuntimeException(e); }
	}
	
	public String getUploadPath() {
		return FILE_PATH;
	}
	
	// 업로드 경로 반환
	private String getUploadPath(final String addPath) {
        return makeDirectories(FILE_PATH + File.separator + addPath);
    }
	
	// 업로드 폴더 생성
	private String makeDirectories(final String path) {
        File dir = new File(path);
        if (dir.exists() == false) {
            dir.mkdirs();
        }
        return dir.getPath();
    }
	
	// 저장 파일명 생성
	private String generateSaveFilename(final String filename) {
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        String extension = StringUtils.getFilenameExtension(filename);
        return uuid + "." + extension;
    }
	
}