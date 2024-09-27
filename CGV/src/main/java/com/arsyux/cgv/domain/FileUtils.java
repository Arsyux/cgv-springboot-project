package com.arsyux.cgv.domain;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
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
	
	// 영상 경로
	@Value("${FILE_PATH_VIDEO}")
	private String FILE_PATH_VIDEO;
	
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
	// 메인 영화 이미지 저장
	public FileVO uploadFileMovieMain(MultipartFile multipartFile) {
		if (multipartFile.isEmpty()) { return null; }
		
        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath("/movieMain/" + today) + File.separator + saveName;
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
	// 상단 영화 이미지 저장
	public FileVO uploadFileMovieTop(MultipartFile multipartFile) {
		if (multipartFile.isEmpty()) { return null; }
		
        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath("/movieTop/" + today) + File.separator + saveName;
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
	// 메인 영화 영상 저장
	public FileVO uploadFileMovieVideo(MultipartFile multipartFile) {
		if (multipartFile.isEmpty()) { return null; }
		
        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPathVideo(today) + File.separator + saveName;
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
        			// 폴더인지 확인 후 폴더 안의 내용 삭제
        			deleteFileTempDate(files[i].getName());

        			// 삭제했다 만드는 경우 시간이 걸리므로 오늘 날짜의 폴더는 보존
        			LocalDateTime today_now = LocalDateTime.now();
    		        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        		    
        			if(!files[i].getName().equals(today)) {
        				// 오늘날짜가 아닌 경우
        				files[i].delete();
        				System.out.println("폴더 삭제: " + files[i].getName());
        			}
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
	public FileVO moveProfileImgFromTemp(String tempFilePath, String removeFilePath) {
		
		// 경로가 백슬래시인 경우 슬래시로 수정해서 데이터 처리
		if(tempFilePath.contains("\\")) {
			tempFilePath = tempFilePath.replace("\\", "/");
		} else {
			// 경로 에러. 이미지 초기화
			tempFilePath = "../images/common/default_profile.gif";
		}

		// 파일 경로 자르기
		String cutStr = tempFilePath;
		
		// 파일 이름
		String fileName = cutStr.substring(cutStr.lastIndexOf("/") + 1);
		cutStr = cutStr.substring(0, cutStr.lastIndexOf("/"));
		
		// 폴더 이름
		String folderName = cutStr.substring(cutStr.lastIndexOf("/") + 1);
		
		// 현재 시간
        LocalDateTime today_now = LocalDateTime.now();
        String today = today_now.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        
        // 저장 경로
        String uploadPath = getUploadPath("/profile/" + today) + File.separator + fileName;
        
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
		Path oldFile = Paths.get(FILE_PATH + "/temp/" + folderName + "/" + fileName);
		//System.out.println("oldFile: " + oldFile);
		//System.out.println("uploadPath: " + uploadPath);
		
		// 새로운 파일 경로
		Path newFile = Paths.get(uploadPath);
		
		try {
			Files.move(oldFile, newFile, StandardCopyOption.ATOMIC_MOVE);
		} catch (IOException ex) {
			System.out.println("프로필 이미지 이동중 에러 발생: " + ex.getMessage());
			// default 이미지 경로 초기화
			FileVO file = new FileVO();
			file.setOriginal_name("default_profile.gif");
			file.setSave_name("default_profile.gif");
			file.setRegdate(Timestamp.valueOf(today_now));
			return file;
		}
		
		// 임시 폴더 청소
		deleteFileTemp();
		// 파일 경로 자르기
		
		String cutStr2 = removeFilePath;
		
		// 파일 이름
		String fileName2 = cutStr2.substring(cutStr2.lastIndexOf("/") + 1);
		cutStr2 = cutStr2.substring(0, cutStr2.lastIndexOf("/"));
		
		// 폴더 이름
		String folderName2 = cutStr2.substring(cutStr2.lastIndexOf("/") + 1);
		cutStr2 = cutStr2.substring(0, cutStr2.lastIndexOf("/"));
		
        // 기존 이미지 저장 경로
        String deleteFilePath = FILE_PATH + File.separator + "profile" + File.separator + folderName2 + File.separator + fileName2;
		
		File deleteFile = new File(deleteFilePath);
		
		// 기존 프로필 파일이 있는지 검사 후
		if(deleteFile.exists()){
	        // 기존 프로필 삭제
			if(deleteFile.delete()) { System.out.println("기존 프로필 삭제 성공!"); }
			else { System.out.println("기존 프로필 삭제에 실패하였습니다."); }
		} else {
			System.out.println("기존 프로필 사진이 없습니다.");
		}
        
		// 파일 객체 return
		FileVO file = new FileVO();
		file.setOriginal_name(fileName);
        file.setSave_name(fileName);
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
	
	// 이미지 업로드 경로 반환
	private String getUploadPath(final String addPath) {
        return makeDirectories(FILE_PATH + File.separator + addPath);
    }
	// 영상 업로드 경로 반환
	private String getUploadPathVideo(final String addPath) {
        return makeDirectories(FILE_PATH_VIDEO + File.separator + addPath);
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