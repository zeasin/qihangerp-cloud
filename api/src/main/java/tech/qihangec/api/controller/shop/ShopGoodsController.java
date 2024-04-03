package tech.qihangec.api.controller.shop;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.api.common.BaseController;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.TableDataInfo;
import tech.qihangec.api.domain.WeiGoods;
import tech.qihangec.api.domain.WeiOrder;
import tech.qihangec.api.service.WeiGoodsService;
import tech.qihangec.api.service.WeiOrderService;

@AllArgsConstructor
@RestController
@RequestMapping("/shop/goods")
public class ShopGoodsController extends BaseController {
    private final WeiGoodsService goodsService;
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public TableDataInfo goodsList(WeiGoods bo, PageQuery pageQuery) {
        PageResult<WeiGoods> result = goodsService.queryPageList(bo, pageQuery);

        return getDataTable(result);
    }
}
