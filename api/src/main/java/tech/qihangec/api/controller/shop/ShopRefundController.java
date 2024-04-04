package tech.qihangec.api.controller.shop;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.api.common.BaseController;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.TableDataInfo;
import tech.qihangec.api.domain.WeiOrder;
import tech.qihangec.api.domain.WeiRefund;
import tech.qihangec.api.service.WeiRefundService;

import java.util.ArrayList;

@AllArgsConstructor
@RestController
@RequestMapping("/shop/refund")
public class ShopRefundController extends BaseController {
    private final WeiRefundService refundService;
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public TableDataInfo goodsList(WeiRefund bo, PageQuery pageQuery) {
        PageResult<WeiRefund> result = refundService.queryPageList(bo, pageQuery);

        return getDataTable(result);
    }
}
