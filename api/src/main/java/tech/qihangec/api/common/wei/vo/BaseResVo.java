package tech.qihangec.api.common.wei.vo;

import lombok.Data;

@Data
public class BaseResVo {
    private Integer errcode;
    private String errmsg;
    private String next_key;
}
