package tech.qihangec.api.service;

import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpAfterSale;
import com.baomidou.mybatisplus.extension.service.IService;
import tech.qihangec.api.domain.SysLogisticsCompany;

/**
* @author qilip
* @description 针对表【erp_after_sale(售后处理表)】的数据库操作Service
* @createDate 2024-04-05 21:24:00
*/
public interface ErpAfterSaleService extends IService<ErpAfterSale> {
    PageResult<ErpAfterSale> queryPageList(ErpAfterSale bo, PageQuery pageQuery);
}
