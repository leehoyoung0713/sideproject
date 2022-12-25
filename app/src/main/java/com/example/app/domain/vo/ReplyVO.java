package com.example.app.domain.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@Data
@RequiredArgsConstructor @NoArgsConstructor
public class ReplyVO {
    private Long replyNumber;
    @NonNull
    private String replyContent;
    @NonNull
    private String replyWriter;
    private String replyRegisterDate;
    private String replyUpdateDate;
    @NonNull
    private Long boardNumber;
}
