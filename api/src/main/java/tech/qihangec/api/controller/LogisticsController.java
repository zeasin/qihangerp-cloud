package tech.qihangec.api.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import tech.qihangec.api.common.*;
import tech.qihangec.api.domain.SysLogisticsCompany;
import tech.qihangec.api.domain.SysShop;
import tech.qihangec.api.service.SysLogisticsCompanyService;

@AllArgsConstructor
@RestController
@RequestMapping("/shipping")
public class LogisticsController extends BaseController {
    private final SysLogisticsCompanyService logisticsCompanyService;
    /**
     * 查询店铺列表logistics
     */
    @GetMapping("/logistics/list")
    public TableDataInfo logisticsList(PageQuery pageQuery)
    {
        PageResult<SysLogisticsCompany> result = logisticsCompanyService.queryPageList(null, null, pageQuery);
        return getDataTable(result);
    }
    @GetMapping("/logistics/status_list")
    public TableDataInfo logisticsStatusList(Integer status, Integer shopId)
    {
        return getDataTable(logisticsCompanyService.queryListByStatus(status, shopId));
    }
    @PutMapping("/logistics/updateStatus")
    public AjaxResult logisticsUpdateStatus(@RequestBody SysLogisticsCompany company)
    {
        Integer newStatus = null;
        if(company.getStatus()==null || company.getStatus().intValue() ==0){
            newStatus = 1;
        }else{
            newStatus = 0;
        }
        return toAjax(logisticsCompanyService.updateStatus(company.getId(),newStatus));
    }

    @PostMapping("/logistics/add")
    public AjaxResult add(@RequestBody SysLogisticsCompany company)
    {
        return toAjax(logisticsCompanyService.save(company));
    }

}
