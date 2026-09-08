package cn.qihangerp.erp.controller.erp;

import cn.qihangerp.common.*;
import cn.qihangerp.model.entity.*;
import cn.qihangerp.model.bo.GoodsAddBo;
import cn.qihangerp.model.bo.GoodsSkuNewAddBo;
import cn.qihangerp.model.query.GoodsQuery;
import cn.qihangerp.model.query.GoodsSkuQuery;
import cn.qihangerp.model.vo.GoodsSpecListVo;
import cn.qihangerp.security.common.BaseController;
import cn.qihangerp.service.OGoodsBrandService;
import cn.qihangerp.service.OGoodsCategoryService;
import cn.qihangerp.service.OGoodsService;
import cn.qihangerp.service.OGoodsSkuService;
import cn.qihangerp.mapper.ErpSupplierProductItemMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import lombok.AllArgsConstructor;
import net.sourceforge.pinyin4j.PinyinHelper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static cn.qihangerp.common.AjaxResult.CODE_TAG;
import static cn.qihangerp.common.AjaxResult.MSG_TAG;

/**
 * 商品管理Controller
 * 
 * @author qihang
 * @date 2023-12-29
 */
@AllArgsConstructor
@RestController
@RequestMapping("/api/erp-api/goods")
public class GoodsController extends BaseController
{
    private final OGoodsService goodsService;
    private final OGoodsSkuService skuService;
    private final ErpSupplierProductItemMapper supplierProductItemMapper;
    private final OGoodsBrandService goodsBrandService;
    private final OGoodsCategoryService goodsCategoryService;
    /**
     * 搜索商品SKU
     * 条件：商品编码、SKU、商品名称
     */
    @GetMapping("/searchSku")
    public TableDataInfo searchSkuBy(Long goodsId, String keyword, Long supplierId)
    {
        if(goodsId!=null&&goodsId>0){
            List<OGoodsSku> oGoodsSkus = goodsService.querySkuByGoodsId(goodsId);
            return getDataTable(oGoodsSkus);
        }else {
            List<GoodsSpecListVo> list = goodsService.searchGoodsSpec(keyword);
            // 如果有供应商ID，查询供应商价格
            if (supplierId != null && list != null && !list.isEmpty()) {
                for (GoodsSpecListVo vo : list) {
                    if (vo.getSkuId() != null) {
                        try {
                            Long skuIdLong = Long.parseLong(vo.getSkuId());
                            var item = supplierProductItemMapper.selectOne(new LambdaQueryWrapper<ErpSupplierProductItem>()
                                    .eq(ErpSupplierProductItem::getSupplierId, supplierId)
                                    .eq(ErpSupplierProductItem::getErpGoodsSkuId, skuIdLong)
                                    .last("LIMIT 1"));
                            if (item != null && item.getPrice() != null) {
                                vo.setSupplierPrice(item.getPrice());
                            }
                        } catch (NumberFormatException ignored) {}
                    }
                }
            }
            return getDataTable(list);
        }
    }

    @GetMapping("/sku_list")
    public TableDataInfo skuList(GoodsSkuQuery bo, PageQuery pageQuery)
    {
        var pageList = goodsService.querySkuPageList(bo,pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 查询商品管理列表
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:list')")
    @GetMapping("/list")
    public TableDataInfo list(GoodsQuery goods, PageQuery pageQuery)
    {
        PageResult<OGoods> pageList = goodsService.queryPageList(goods, pageQuery);
        return getDataTable(pageList);
    }

    /**
     * 获取商品管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(goodsService.selectGoodsById(id));
    }
    /**
     * 获取商品管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:query')")
    @GetMapping(value = "/sku/{id}")
    public AjaxResult getSkuInfo(@PathVariable("id") Long id)
    {
        return success(skuService.getById(id));
    }
    /**
     * 新增商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:add')")
    @PostMapping("/add")
    public AjaxResult add(@RequestBody GoodsAddBo goods)
    {
        ResultVo<Long> resultVo = goodsService.insertGoods(getUsername(), goods);
        if(resultVo.getCode()!=0) return AjaxResult.error(resultVo.getMsg());
        else return AjaxResult.success(resultVo.getData());
//        goods.setCreateBy(getUsername());
//        int result = goodsService.insertGoods(goods);
//        if(result == -1) new AjaxResult(501,"商品编码已存在");
//        return toAjax(1);
    }

    @PreAuthorize("@ss.hasPermi('goods:goods:add')")
    @PostMapping("/goodsSku")
    public AjaxResult addSku(@RequestBody OGoodsSku goodsSku)
    {

        int result = goodsService.insertGoodsSku(goodsSku);
        if(result == -1) new AjaxResult(501,"商品编码已存在");
        return toAjax(1);
    }

    /**
     * 添加商品sku
     * @param goods
     * @return
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:add')")
    @PostMapping("/addSku")
    public AjaxResult addSku(@RequestBody GoodsSkuNewAddBo goods)
    {
        if(goods.getId()==null||goods.getId()<=0) return AjaxResult.error("缺少参数ID");
        ResultVo<Long> resultVo = goodsService.insertGoodsSku(getUsername(), goods);
        if(resultVo.getCode()!=0) return AjaxResult.error(resultVo.getMsg());
        else return AjaxResult.success(resultVo.getData());
    }

    /**
     * 修改商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:edit')")
    @PutMapping
    public AjaxResult edit(@RequestBody OGoods goods) {
        var result = goodsService.updateGoods(goods);
        if(result.getCode()!=0) return AjaxResult.error(result.getMsg());
        else return AjaxResult.success();
    }

    /**
     * 修改商品基本资料
     * @param sku
     * @return
     */
    @PutMapping("/sku")
    public AjaxResult editSku(@RequestBody OGoodsSku sku)
    {
        String skuName="";
        if(StringUtils.hasText(sku.getColorValue())){
            skuName+=sku.getColorValue();
        }
        if(StringUtils.hasText(sku.getSizeValue())){
            skuName+=" "+sku.getSizeValue();
        }
        if(StringUtils.hasText(sku.getStyleValue())){
            skuName+=" "+sku.getStyleValue();
        }
        sku.setSkuName(skuName);

        return toAjax(skuService.updateById(sku));
    }

    /**
     * 删除商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:remove')")
    @DeleteMapping("/del/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        int result = goodsService.deleteGoodsByIds(ids);
        if(result==0) return AjaxResult.success();
        else if (result==-100) return AjaxResult.error("有关联的订单，不能删除！");
        else return AjaxResult.error();
    }

    @PostMapping("/generateGoodsNumber")
    public AjaxResult generateGoodsNumber(@RequestBody GoodsAddBo goods) {
        if(goods.getCategoryId()==null||goods.getCategoryId()<=0) return AjaxResult.error("请选择商品分类");
        String number = "";
        String outNum = "";
        if(goods.getBrandId()!=null&& goods.getBrandId()>0){
            OGoodsBrand brand = goodsBrandService.getById(goods.getBrandId());
            if(brand!=null&&StringUtils.hasText(brand.getNum())){
                number+=brand.getNum()+"-";
            }
        }
        OGoodsCategory category = goodsCategoryService.getById(goods.getCategoryId());
        if(category!=null&&StringUtils.hasText(category.getNumber())){
            number+=category.getNumber()+"-";
            outNum += category.getNumber()+"-";
        }
        StringBuilder pinyinInitials = new StringBuilder();
        if(StringUtils.hasText(goods.getName())){
            String s = goods.getName().substring(0,goods.getName().length()>3?3:goods.getName().length());
            // 遍历中文字符
            for (int i = 0; i < s.length(); i++) {
                char character = s.charAt(i);

                // 如果是汉字
                if (Character.toString(character).matches("[\\u4e00-\\u9fa5]")) {
                    // 获取拼音首字母
                    String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(character);
                    if (pinyinArray != null) {
                        pinyinInitials.append(pinyinArray[0].charAt(0));  // 获取拼音的首字母
                    }
                }
            }
            number+= pinyinInitials.toString().toUpperCase();
            outNum+= pinyinInitials.toString().toUpperCase();
        }else{
            Long categoryGoodsTotal = goodsService.getCategoryGoodsTotal(goods.getCategoryId());
            Long numberIndex = 1L;
            if(categoryGoodsTotal!=null||categoryGoodsTotal>0){
                numberIndex = categoryGoodsTotal+1;
            }
            if(numberIndex.toString().length()<3){
                for (int i=0;i<3-numberIndex.toString().length();i++){
                    number+="0";
                    outNum+="0";
                }
                number+=numberIndex;
                outNum+=numberIndex;
            }
        }



        AjaxResult ajaxResult = AjaxResult.success();
        ajaxResult.put("data",number);
        ajaxResult.put(CODE_TAG, 200);
        ajaxResult.put(MSG_TAG, outNum);
        return ajaxResult;
    }

//    @RequestMapping(value = "/api/erp-api/goods_sku_import", method = RequestMethod.POST)
//    public AjaxResult orderSendExcel(@RequestPart("file") MultipartFile file) throws IOException, InvalidFormatException {
//
//        String fileName = file.getOriginalFilename();
//        String dir = System.getProperty("user.dir");
//        String destFileName = dir + File.separator + "/import/uploadedfiles_" + fileName;
//        System.out.println(destFileName);
//        File destFile = new File(destFileName);
//        file.transferTo(destFile);
//        InputStream fis = null;
//        fis = new FileInputStream(destFileName);
//        if (fis == null) return AjaxResult.error("没有文件");
//
//        Workbook workbook = null;
//
//        try {
//            if (fileName.toLowerCase().endsWith("xlsx")) {
//                workbook = new XSSFWorkbook(fis);
//            } else if (fileName.toLowerCase().endsWith("xls")) {
//                workbook = new HSSFWorkbook(fis);
//            }
//            // workbook = new HSSFWorkbook(fis);
//        } catch (Exception ex) {
//            return AjaxResult.error(ex.getMessage());
//        }
//
//        if (workbook == null) return AjaxResult.error(502, "未读取到Excel文件");
//
//        /****************开始处理excel****************/
//        int success = 0;
//        int fail = 0;
//        Sheet sheet = null;
//        try {
//            sheet = workbook.getSheetAt(0);
//            int lastRowNum = sheet.getLastRowNum();//最后一行索引
//            Row row = null;
//
//            for (int i = 1; i <= lastRowNum; i++) {
//                row = sheet.getRow(i);
//                //数据
//                OGoodsSku  sku = new OGoodsSku();
//                for(int c=0;c<6;c++){
//                    Cell cell = row.getCell(c);
//                    String cellValue = "";
//                    if (cell != null) {
//                        if (cell.getCellType() == CellType.STRING) {
//                            cellValue = cell.getStringCellValue().replace("\t", "");
//                        } else if (cell.getCellType() == CellType.NUMERIC) {
//                            cellValue = NumberToTextConverter.toText(cell.getNumericCellValue()).replace("\t", "");
//                        }
//                    }
//                    if(c == 1) {
//                        if(StringUtils.hasText(cellValue) ){
//                            sku.setOuterErpGoodsId(cellValue);
//                        }else {
//                            sku.setOuterErpGoodsId("0");
//                        }
//                    }
//                    if(StringUtils.hasText(cellValue)) {
//                        if (c == 0) {
//                            sku.setOuterErpSkuId(cellValue);
//                        } else if (c == 2) {
//                            sku.setSkuCode(cellValue);
//                        } else if (c == 3) {
//                            sku.setSkuName(cellValue);
//                        } else if (c == 4) {
//                            sku.setColorImage(cellValue);
//                        } else if (c == 5) {
//                            sku.setRemark(cellValue);
//                        }
//                    }
//                }
//                goodsService.insertGoodsSku(sku);
//                success++;
//            }
//
//
//        } catch (Exception ex) {
//           fail++;
//            ex.printStackTrace();
//        }
//        Map<String, Integer> result = new HashMap<>();
//        result.put("success",success);
//        result.put("fail",fail);
//        return AjaxResult.success(result);
//    }
}
