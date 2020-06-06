package com.lzhpo.common.util;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExcelReader {
    private String filePath;
    private String sheetName;
    private Workbook workBook;
    private Sheet sheet;
    private List<String> columnHeaderList;
    private List<List<Object>> listData;
    private List<Map<String,String>> mapData;
    private boolean flag;
    private Logger logger = LoggerFactory.getLogger(ExcelReader.class);

    public List<List<Object>> getListData() {
        getSheetData();
        return listData;
    }

    public void setListData(List<List<Object>> listData) {
        this.listData = listData;
    }

    public ExcelReader(File file, String sheetName) {
        this.filePath = file.getPath();
        this.sheetName = sheetName;
        this.flag = false;
        this.load(file);
    }

    private void load(File file) {
        FileInputStream inStream = null;
        try {
            inStream = new FileInputStream(file);
            workBook = WorkbookFactory.create(inStream);
            sheet = workBook.getSheet(sheetName);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(inStream!=null){
                    inStream.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    private void getSheetData() {
        listData = new ArrayList<List<Object>>();
        mapData = new ArrayList<Map<String, String>>();
        columnHeaderList = new ArrayList<String>();
        int numOfRows = sheet.getLastRowNum() + 1;
        for (int i = 0; i < numOfRows; i++) {
            Row row = sheet.getRow(i);
            Map<String, String> map = new HashMap<String, String>();
            List<Object> list = new ArrayList<>();
            if (row != null) {
                for (int j = 0; j < row.getLastCellNum(); j++) {
                    Cell cell = row.getCell(j);
                    if(cell !=null){
                        if (i == 0){
                            columnHeaderList.add(String.valueOf(cell.getStringCellValue()));
                        }
                         if (cell.getCellType().equals(CellType.STRING) ){
                             list.add(cell.getStringCellValue());
                         }else if (cell.getCellType().equals(CellType.NUMERIC) ){
                             SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                             if(HSSFDateUtil.isCellDateFormatted(cell)){
                                 list.add(sdf.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue())));
                             }else {
                                 list.add(cell.getNumericCellValue());
                             }

                         }else if (cell.getCellType().equals(CellType.BOOLEAN) ){
                             list.add(cell.getBooleanCellValue());
                         }else if (cell.getCellType().equals(CellType.BLANK) ){
                             list.add("");
                         }else{
                             System.out.println("execl 格式錯誤");
                         }

                    }
                }
            }
            if (i > 0){
                mapData.add(map);
            }
            listData.add(list);
        }
        flag = true;
    }

    public Object getCellData(int row, int col){
        if(row<=0 || col<=0){
            return null;
        }
        if(!flag){
            this.getSheetData();
        }
        if(listData.size()>=row && listData.get(row-1).size()>=col){
            return listData.get(row-1).get(col-1);
        }else{
            return null;
        }
    }


    public String getCellData(int row, String headerName){
        if(row<=0){
            return null;
        }
        if(!flag){
            this.getSheetData();
        }
        if(mapData.size()>=row && mapData.get(row-1).containsKey(headerName)){
            return mapData.get(row-1).get(headerName);
        }else{
            return null;
        }
    }

    public static void main(String[] args) {
        String test = "F22";
        System.out.println(test.substring(1));
        System.out.println(test.substring(0,1));
    }
}
