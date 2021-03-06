package cn.hbu.dreamcar.controller;


import cn.hbu.dreamcar.pojo.SaleInfo;
import cn.hbu.dreamcar.service.ProdRankService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

//销售榜单
@Controller
public class ProdRankController {
    @Autowired
    private ProdRankService prodRankService;

    @RequestMapping("/prodrank")
    public String prodrank(Model model){
        List<SaleInfo> saleInfoList = prodRankService.findSaleInfos();
        model.addAttribute("saleInfoList",saleInfoList);
        return"back/prod_rank";
    }

    @RequestMapping("/downLoad")
    public String downLoad(){
        int p=0;
        Workbook wb =new HSSFWorkbook();
        try {
            FileOutputStream fos = new FileOutputStream("workbook.xls");
            CreationHelper createHelper = wb.getCreationHelper();
            Sheet sheet1 = wb.createSheet("sheet1");
            Sheet sheet2 = wb.createSheet("sheet2");
            List<SaleInfo> saleInfoList = prodRankService.findSaleInfos();

            Row row = null;
            row = sheet1.createRow(0);
            row.createCell(0).setCellValue("商品id");
            row.createCell(1).setCellValue("商品名称");
            row.createCell(2).setCellValue("销售数量");
            row.createCell(3).setCellValue("打印时间");
            CellStyle cellStyle = wb.createCellStyle();
            cellStyle.setDataFormat(
                    createHelper.createDataFormat().getFormat("m/d/yy h:mm"));
            cellStyle.setAlignment(CellStyle.ALIGN_CENTER);
            cellStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
            cellStyle.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
           // cellStyle.setFillPattern(CellStyle.BIG_SPOTS);

            for (int i = 0; i < saleInfoList.size(); i++) {
                SaleInfo info = saleInfoList.get(i);
                if(i <= saleInfoList.size()/2) {
                    row = sheet1.createRow(i + 1);
                    row.createCell(0).setCellValue(info.getProdId());
                    row.createCell(1).setCellValue(info.getProdName());
                    row.createCell(2).setCellValue(info.getSaleNum());
                    Cell cell = row.createCell(3);
                    cell.setCellValue(new Date());
                    cell.setCellStyle(cellStyle);
                }else{
                    row = sheet2.createRow(0);
                    row.createCell(0).setCellValue("商品id");
                    row.createCell(1).setCellValue("商品名称");
                    row.createCell(2).setCellValue("销售数量");
                    row.createCell(3).setCellValue("打印时间");
                    row = sheet2.createRow(++p);
                    row.createCell(0).setCellValue(info.getProdId());
                    row.createCell(1).setCellValue(info.getProdName());
                    row.createCell(2).setCellValue(info.getSaleNum());
                    Cell cell = row.createCell(3);
                    cell.setCellValue(new Date());
                    cell.setCellStyle(cellStyle);
                }
            }
            try {
                wb.write(fos);
                fos.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        return"back/index";
    }




}
