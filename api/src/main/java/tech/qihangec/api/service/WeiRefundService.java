package tech.qihangec.api.service;

import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.ResultVo;
import tech.qihangec.api.domain.WeiOrder;
import tech.qihangec.api.domain.WeiRefund;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author qilip
* @description 针对表【wei_refund(视频号小店退款)】的数据库操作Service
* @createDate 2024-04-04 23:11:44
*/
public interface WeiRefundService extends IService<WeiRefund> {
    PageResult<WeiRefund> queryPageList(WeiRefund bo, PageQuery pageQuery);
    ResultVo<Integer> saveRefund(Integer shopId, WeiRefund refund);
}
