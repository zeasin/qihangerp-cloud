package com.qihang.jd.service;

import com.qihang.common.common.PageQuery;
import com.qihang.common.common.PageResult;
import com.qihang.common.common.ResultVo;
import com.qihang.jd.domain.OmsJdOrder;
import com.baomidou.mybatisplus.extension.service.IService;
import com.qihang.jd.domain.bo.JdOrderBo;

/**
* @author TW
* @description 针对表【oms_jd_order(京东订单表)】的数据库操作Service
* @createDate 2024-05-10 10:54:06
*/
public interface OmsJdOrderService extends IService<OmsJdOrder> {
    PageResult<OmsJdOrder> queryPageList(JdOrderBo bo, PageQuery pageQuery);
    ResultVo<Integer> saveOrder(Long shopId, OmsJdOrder order);
    OmsJdOrder queryDetailById(Long id);
}
