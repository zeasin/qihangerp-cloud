package tech.qihangec.api.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import tech.qihangec.api.common.*;
import tech.qihangec.api.domain.ErpOrderShipping;
import tech.qihangec.api.service.ErpOrderShippingService;

@AllArgsConstructor
@RestController
@RequestMapping("/shipping")
public class ShippingController extends BaseController {
    private final ErpOrderShippingService shippingService;
    @GetMapping("/list")
    public TableDataInfo list(ErpOrderShipping shipping, PageQuery pageQuery)
    {
        return getDataTable(shippingService.queryPageList(shipping,pageQuery));
    }
    @PostMapping("/handShip")
    public AjaxResult add(@RequestBody ErpOrderShipping shipping)
    {
        shipping.setShipType(1);
        var result = shippingService.handShip(shipping);
        if(result.getCode() == ResultVoEnum.SUCCESS.getIndex()) {
            return AjaxResult.success();
        }else{
            return AjaxResult.error(result.getCode(),result.getMsg());
        }
    }
}
