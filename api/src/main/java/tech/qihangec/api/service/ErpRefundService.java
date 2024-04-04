package tech.qihangec.api.service;

import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpRefund;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author qilip
* @description 针对表【erp_refund(退换货表)】的数据库操作Service
* @createDate 2024-04-04 21:57:47
*/
public interface ErpRefundService extends IService<ErpRefund> {
    PageResult<ErpRefund> queryPageList(ErpRefund bo, PageQuery pageQuery);
}
