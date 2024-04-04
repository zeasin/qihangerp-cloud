package tech.qihangec.api.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.api.common.BaseController;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.TableDataInfo;
import tech.qihangec.api.domain.ErpOrder;
import tech.qihangec.api.domain.ErpOrderItem;
import tech.qihangec.api.domain.SysShop;
import tech.qihangec.api.mapper.ErpOrderItemMapper;
import tech.qihangec.api.service.ErpOrderItemService;

import java.util.List;

@AllArgsConstructor
@RestController
@RequestMapping("/shipping")
public class ShipController extends BaseController {
    private final ErpOrderItemService erpOrderItemService;

    /**
     * 备货中-仓库发货
     * @param bo
     * @param pageQuery
     * @return
     */
    @GetMapping("/stock_ship_list")
    public TableDataInfo stockShipList(ErpOrderItem bo, PageQuery pageQuery)
    {
        PageResult<ErpOrderItem> list = erpOrderItemService.queryPageList(0,1,bo, pageQuery);
        return getDataTable(list);
    }
    /**
     * 备货中-供应商代发
     * @param bo
     * @param pageQuery
     * @return
     */
    @GetMapping("/supplier_ship_list")
    public TableDataInfo supplierShipList(ErpOrderItem bo, PageQuery pageQuery)
    {
        PageResult<ErpOrderItem> list = erpOrderItemService.queryPageList(1,1,bo, pageQuery);
        return getDataTable(list);
    }

}
