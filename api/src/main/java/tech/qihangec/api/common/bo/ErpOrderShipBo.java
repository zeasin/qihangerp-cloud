package tech.qihangec.api.common.bo;

import lombok.Data;

@Data
public class ErpOrderShipBo {
    private String[] orderIds;
    private Integer shipType;
    private String remark;
}
