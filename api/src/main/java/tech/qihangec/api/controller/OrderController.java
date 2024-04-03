package tech.qihangec.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.BaseController;
import tech.qihangec.api.common.TableDataInfo;
import tech.qihangec.api.domain.ErpOrder;
import tech.qihangec.api.service.ErpOrderService;

/**
 * 店铺订单Controller
 *
 * @author qihang
 * @date 2023-12-31
 */
@RestController
@RequestMapping("/order")
public class OrderController extends BaseController
{
    @Autowired
    private ErpOrderService orderService;

    /**
     * 查询店铺订单列表
     */
    @PreAuthorize("@ss.hasPermi('shop:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(ErpOrder order, PageQuery pageQuery)
    {
//        PageQuery pageQuery = new PageQuery();
//        List<OOrder> list = orderService.getList(order);
        var pageList = orderService.queryPageList(order,pageQuery);
        return getDataTable(pageList);
    }


//    /**
//     * 获取店铺订单详细信息
//     */
//    @PreAuthorize("@ss.hasPermi('shop:order:query')")
//    @GetMapping(value = "/{id}")
//    public AjaxResult getInfo(@PathVariable("id") Long id)
//    {
//        return success(orderService.selectErpOrderById(id));
//    }
//
//
//    /**
//     * 订单发货
//     * @param order
//     * @return
//     */
//    @Log(title = "店铺订单", businessType = BusinessType.UPDATE)
//    @PostMapping("/ship")
//    public AjaxResult ship(@RequestBody ErpOrder order)
//    {
//        order.setUpdateBy(getUsername());
//        int result = orderService.shipErpOrder(order);
//        if(result == -1) return new AjaxResult(501,"订单不存在！");
//        else if(result == -2) return new AjaxResult(502,"订单号已存在！");
//        return toAjax(result);
//    }

}
