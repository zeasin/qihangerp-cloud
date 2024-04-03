package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tech.qihangec.api.domain.ErpOrderItem;
import tech.qihangec.api.service.ErpOrderItemService;
import tech.qihangec.api.mapper.ErpOrderItemMapper;
import org.springframework.stereotype.Service;

/**
* @author TW
* @description 针对表【erp_order_item(订单明细表)】的数据库操作Service实现
* @createDate 2024-04-03 15:57:41
*/
@Service
public class ErpOrderItemServiceImpl extends ServiceImpl<ErpOrderItemMapper, ErpOrderItem>
    implements ErpOrderItemService{

}




