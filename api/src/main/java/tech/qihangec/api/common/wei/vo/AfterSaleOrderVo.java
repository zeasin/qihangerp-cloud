package tech.qihangec.api.common.wei.vo;

import com.alibaba.fastjson2.JSONObject;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 视频号小店退款
 * @TableName wei_refund
 */
@Data
public class AfterSaleOrderVo implements Serializable {
    /**
     * 售后单号
     */
    private String after_sale_order_id;

    /**
     * 售后单当前状态，参考：AfterSaleStatus
     */
    private String status;

    /**
     * 买家身份标识
     */
    private String openid;

    /**
     * 买家在开放平台的唯一标识符，若当前视频号小店已绑定到微信开放平台账号下会返回
     */
    private String unionid;

    /**
     * 商品
     */
    private JSONObject product_info;

    /**
     * 退款详情
     */
    private JSONObject refund_info;

    /**
     * 用户退货信息
     */
    private JSONObject return_info;


    /**
     * 售后相关商品信息JSON
     */
    private JSONObject merchant_upload_info;

    /**
     * 售后单创建时间戳
     */
    private Integer create_time;

    /**
     * 售后单更新时间戳
     */
    private Integer update_time;

    /**
     * 退款原因
     */
    private String reason;

    /**
     * 退款原因解释
     */
    private String reason_text;

    /**
     * 售后类型。REFUND:退款；RETURN:退货退款。
     */
    private String type;

    /**
     * 订单号，该字段可用于获取订单
     */
    private String order_id;
    private String complaint_id;
    private JSONObject refund_resp;

    /**
     * detail json
     */
    private JSONObject details;

    private static final long serialVersionUID = 1L;
}