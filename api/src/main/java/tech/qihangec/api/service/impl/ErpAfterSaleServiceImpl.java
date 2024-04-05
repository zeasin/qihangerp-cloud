package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpAfterSale;
import tech.qihangec.api.domain.SysLogisticsCompany;
import tech.qihangec.api.service.ErpAfterSaleService;
import tech.qihangec.api.mapper.ErpAfterSaleMapper;
import org.springframework.stereotype.Service;

/**
* @author qilip
* @description 针对表【erp_after_sale(售后处理表)】的数据库操作Service实现
* @createDate 2024-04-05 21:24:00
*/
@AllArgsConstructor
@Service
public class ErpAfterSaleServiceImpl extends ServiceImpl<ErpAfterSaleMapper, ErpAfterSale>
    implements ErpAfterSaleService{
    private final ErpAfterSaleMapper mapper;
    @Override
    public PageResult<ErpAfterSale> queryPageList(ErpAfterSale bo, PageQuery pageQuery) {
        LambdaQueryWrapper<ErpAfterSale> queryWrapper = new LambdaQueryWrapper<ErpAfterSale>().
                eq( ErpAfterSale::getType, bo.getType())
                .eq(bo.getShopId() != null, ErpAfterSale::getShopId, bo.getShopId());

        Page<ErpAfterSale> pages = mapper.selectPage(pageQuery.build(), queryWrapper);
        return PageResult.build(pages);
    }
}




