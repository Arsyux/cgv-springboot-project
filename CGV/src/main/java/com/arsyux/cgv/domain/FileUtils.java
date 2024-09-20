package com.arsyux.cgv.domain;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
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
	
	// 단일 파일을 임시 경로에 저장
	public FileVO uploadFileTemp(MultipartFile multipartFile) {
		if (multipartFile.isEmpty()) { return null; }

		// 임시 폴더 청소
		deleteFileTemp();
		
        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath("/temp/" + today) + File.separator + saveName;
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
	
	// 임시 폴더 청소
	private void deleteFileTemp() {
		
		File clearfile = new File(FILE_PATH + "/temp");
        if(clearfile.exists()) {
        	// 파일이 있을 경우 청소
        	File[] files = clearfile.listFiles();
        	
        	for(int i=0; i<files.length; i++) {
        		if(files[i].isDirectory()) {
        			// 폴더안의 내용 삭제
        			deleteFileTempDate(files[i].getName());
        			LocalDateTime today_now = LocalDateTime.now();
    		        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        		       
    		        // 삭제했다 만드는 경우 시간이 걸리므로 오늘 날짜의 폴더는 보존
        			if(files[i].getName() != today) { files[i].delete(); }
        			
        			System.out.println("폴더 삭제: " + files[i].getName());
        		}
        	}
        }
        System.out.println("임시 폴더 청소 완료");
	}
	// 임시 폴더 안에 날짜 폴더 청소
	private void deleteFileTempDate(String date) {
		
		File clearfile = new File(FILE_PATH + "/temp/" + date);
        if(clearfile.exists()) {
        	// 파일이 있을 경우 청소
        	File[] files = clearfile.listFiles();
        	
        	for(int i=0; i<files.length; i++) {
        		if(files[i].delete()) { System.out.println("파일 삭제: " + files[i].getName());}
        		else { System.out.println("파일 삭제 실패"); }
        	}
        }
        System.out.println("임시 파일 청소 완료");
	}
	
	
	// 임시 폴더에서 프로필 이미지 이동
	public FileVO moveProfileImgFromTemp(String removeFilePath) {
		
		// 경로가 백슬래시인 경우 슬래시로 수정해서 데이터 처리
		if(removeFilePath.contains("\\")) {
			removeFilePath = removeFilePath.replace("\\", "/");
		} else {
			// 경로 에러. 이미지 초기화
			removeFilePath = "../images/common/default_profile.gif";
		}

		// 파일 경로 자르기
		String cutStr = removeFilePath;
		
		// 파일 이름
		String fileName = cutStr.substring(cutStr.lastIndexOf("/") + 1);
		cutStr = cutStr.substring(0, cutStr.lastIndexOf("/"));
		
		// 폴더 이름
		String folderName = cutStr.substring(cutStr.lastIndexOf("/") + 1);
		
		// 저장될 파일 이름
		String saveName = generateSaveFilename(fileName);
		
		// 현재 시간
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        
        // 저장 경로
        String uploadPath = getUploadPath("/profile/" + today) + File.separator + saveName;
        		
		// 폴더 이름이 common일 경우 -> 기본 이미지 일 경우
		if(folderName == "common") {
			// default 이미지 경로를 리턴
			FileVO file = new FileVO();
			file.setOriginal_name("default_profile.gif");
			file.setSave_name("default_profile.gif");
	        file.setRegdate(Timestamp.valueOf(today_now));
			return file;
		}
		
		// 폴더 이름이 common이 아닐 경우 -> 이미지를 업로드 한 경우
		
		// 이전 파일 경로
		Path oldFile = Paths.get(removeFilePath);
		System.out.println(oldFile);
		System.out.println(uploadPath);
		
		// 새로운 파일 경로
		//Path newFile = Paths.get(null)
		
		
		// 이동할 파일 경로 설정
		
		
		
		// 이동할 파일 경로
		/*
		Path newFile = Path.get(moveFilePath);
		
		
		String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath(today) + File.separator + saveName;
        File uploadFile = new File(uploadPath);
        */
		
		FileVO file = new FileVO();
        /*
		file.setOriginal_name(multipartFile.getOriginalFilename());
        file.setSave_name(saveName);
        file.setRegdate(Timestamp.valueOf(today_now));
		*/
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