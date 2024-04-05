package tech.qihangec.api.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import tech.qihangec.api.common.*;
import tech.qihangec.api.domain.ErpAfterSale;
import tech.qihangec.api.domain.ErpOrderShipping;
import tech.qihangec.api.domain.SysLogisticsCompany;
import tech.qihangec.api.domain.SysShop;
import tech.qihangec.api.service.ErpAfterSaleService;
import tech.qihangec.api.service.SysLogisticsCompanyService;

import java.util.Date;

@AllArgsConstructor
@RestController
@RequestMapping("/afterSale")
public class AfterSaleController extends BaseController {
    private final ErpAfterSaleService afterSaleService;
    /**
     * 查询列表
     */
    @GetMapping("/ship_again_list")
    public TableDataInfo ship_again_list(ErpAfterSale bo, PageQuery pageQuery)
    {
        bo.setType(80);
        PageResult<ErpAfterSale> result = afterSaleService.queryPageList(bo, pageQuery);
        return getDataTable(result);
    }

    @PostMapping("/shipAgain")
    public AjaxResult shipAgainAdd(@RequestBody ErpAfterSale addBo)
    {
        addBo.setType(80);
        addBo.setCreateTime(new Date());
        addBo.setCreateBy("手动添加");
        addBo.setStatus(1);
        var result = afterSaleService.save(addBo);
        return toAjax(result);
    }

    @PutMapping("/shipAgain/complete/{id}")
    public AjaxResult completeShipAgain(@PathVariable Long id)
    {
        ErpAfterSale complete = new ErpAfterSale();
        complete.setId(id.toString());
        complete.setStatus(2);
        complete.setUpdateTime(new Date());
        complete.setUpdateBy("手动完成");
        afterSaleService.updateById(complete);
        return toAjax(1);
    }


    @GetMapping("/returned_list")
    public TableDataInfo returned_list(ErpAfterSale bo, PageQuery pageQuery)
    {
        bo.setType(10);
        PageResult<ErpAfterSale> result = afterSaleService.queryPageList(bo, pageQuery);
        return getDataTable(result);
    }

    @GetMapping("/exchange_list")
    public TableDataInfo exchange_list(ErpAfterSale bo, PageQuery pageQuery)
    {
        bo.setType(20);
        PageResult<ErpAfterSale> result = afterSaleService.queryPageList(bo, pageQuery);
        return getDataTable(result);
    }

    @PostMapping("/exchange")
    public AjaxResult exchangeAdd(@RequestBody ErpAfterSale addBo)
    {
        addBo.setType(20);
        addBo.setCreateTime(new Date());
        addBo.setCreateBy("手动添加");
        addBo.setStatus(1);
        var result = afterSaleService.save(addBo);
        return toAjax(result);
    }

    @GetMapping("/intercept_list")
    public TableDataInfo intercept_list(ErpAfterSale bo, PageQuery pageQuery)
    {
        bo.setType(99);
        PageResult<ErpAfterSale> result = afterSaleService.queryPageList(bo, pageQuery);
        return getDataTable(result);
    }


}
