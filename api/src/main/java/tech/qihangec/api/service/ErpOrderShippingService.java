package tech.qihangec.api.service;

import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.ResultVo;
import tech.qihangec.api.domain.ErpOrderShipping;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author TW
* @description 针对表【erp_order_shipping(发货记录表)】的数据库操作Service
* @createDate 2024-04-03 15:57:41
*/
public interface ErpOrderShippingService extends IService<ErpOrderShipping> {
    PageResult<ErpOrderShipping> queryPageList(ErpOrderShipping shipping, PageQuery pageQuery);

    ResultVo<Integer> handShip(ErpOrderShipping shipping);
}
