package tech.qihangec.api.domain;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 发货记录表
 * @TableName erp_order_shipping
 */
@Data
public class ErpOrderShipping implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 店铺id
     */
    private Integer shopId;

    /**
     * o_order表id
     */
    private Long orderId;

    /**
     * 订单编号
     */
    private String orderNum;

    /**
     * 发货类型（1订单发货2商品补发3商品换货）
     */
    private Integer shipType;

    /**
     * 物流公司
     */
    private String shipCompany;

    /**
     * 物流单号
     */
    private String shipCode;

    /**
     * 物流费用
     */
    private Integer shipFee;

    /**
     * 发货时间
     */
    private Date shipTime;

    /**
     * 发货操作人
     */
    private String shipOperator;

    /**
     * 物流状态（1运输中2已完成）
     */
    private Integer shipStatus;

    /**
     * 包裹重量
     */
    private Double packageWeight;

    /**
     * 包裹长度
     */
    private Double packageLength;

    /**
     * 包裹宽度
     */
    private Double packageWidth;

    /**
     * 包裹高度
     */
    private Double packageHeight;

    /**
     * 打包操作人
     */
    private String packsgeOperator;

    /**
     * 打包时间
     */
    private Date packsgeTime;

    /**
     * 包裹内容JSON
     */
    private String packages;

    /**
     * 备注
     */
    private String remark;

    /**
     * 
     */
    private Date createTime;

    /**
     * 
     */
    private String createBy;

    /**
     * 
     */
    private Date updateTime;

    /**
     * 
     */
    private Date updateBy;

    private static final long serialVersionUID = 1L;
}