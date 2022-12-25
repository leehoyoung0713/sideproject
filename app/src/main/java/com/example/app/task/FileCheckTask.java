package com.example.app.task;

import com.example.app.domain.vo.FileVO;
import com.example.app.service.FileService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

@Component
@Slf4j
@RequiredArgsConstructor
public class FileCheckTask {
    private final FileService fileService;
    /*
     *   0 * * * * * : 매 분 0초마다
     *   0/1 * * * * : 매 1초 간격
     *   0 0/1 * * * : 매 1분 간격
     *   0 0/5 * ? : 매 5분 간격
     *   0 0 0/1 * * : 매 1시간 간격
     *   0 0 0 * * ? : 매일 0시 마다
     *   0 0 0 1 * ? : 매월 1일 마다
     *   * 10-13 * * * * : 매 10, 11, 12, 13분에 동작한다.
     * */
    @Scheduled(cron = "0 0 2 * * *")
    public void checkFiles() throws IOException {
        log.warn("File Check Task run..................");
        log.warn("======================================");

        List<FileVO> fileList = fileService.showOldFiles();
        List<Path> fileListPaths = fileList.stream()
                .map(file -> Paths.get("C:/upload", file.getFileUploadPath(), file.getFileUuid() + "_" + file.getFileName()))
                .collect(Collectors.toList());

        fileList.stream().filter(file -> file.isFileImageCheck())
                .map(file -> Paths.get("C:/upload", file.getFileUploadPath(), "s_" + file.getFileUuid() + "_" + file.getFileName()))
                .forEach(p -> fileListPaths.add(p));

        File directory = Paths.get("C:/upload", getUploadPathYesterDay()).toFile();
        for(File file : directory.listFiles(file -> !fileListPaths.contains(file.toPath()))){
            log.info(file.getPath() + " deleted");
            file.delete();
        }
    }

    private String getUploadPathYesterDay(){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Calendar yesterday = Calendar.getInstance();
        yesterday.add(Calendar.DATE, -1);
        return simpleDateFormat.format(yesterday.getTime());
    }
}
