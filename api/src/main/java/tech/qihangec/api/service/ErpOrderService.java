package tech.qihangec.api.service;

import tech.qihangec.api.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpOrder;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author TW
* @description 针对表【erp_order(订单表)】的数据库操作Service
* @createDate 2024-04-03 15:57:41
*/
public interface ErpOrderService extends IService<ErpOrder> {
    PageResult<ErpOrder> queryPageList(ErpOrder bo, PageQuery pageQuery);
}
