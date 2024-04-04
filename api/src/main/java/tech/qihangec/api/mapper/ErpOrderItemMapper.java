package tech.qihangec.api.mapper;

import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpOrder;
import tech.qihangec.api.domain.ErpOrderItem;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import tech.qihangec.api.domain.bo.ErpOrderItemListBo;
import tech.qihangec.api.domain.vo.ErpOrderItemListVo;

/**
* @author TW
* @description 针对表【erp_order_item(订单明细表)】的数据库操作Mapper
* @createDate 2024-04-03 15:57:41
* @Entity tech.qihangec.api.domain.ErpOrderItem
*/
public interface ErpOrderItemMapper extends BaseMapper<ErpOrderItem> {
//    PageResult<ErpOrderItemListVo> selectOrderItemList(ErpOrderItemListBo bo);
}




