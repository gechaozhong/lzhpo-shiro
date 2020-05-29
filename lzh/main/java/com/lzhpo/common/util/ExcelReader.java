package com.lzhpo.common.util;

import org.apache.poi.ss.usermodel.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
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
    private List<List<String>> listData;
    private List<Map<String,String>> mapData;
    private boolean flag;

    public ExcelReader(String filePath, String sheetName) {
        this.filePath = filePath;
        this.sheetName = sheetName;
        this.flag = false;
        this.load();
    }

    private void load() {
        FileInputStream inStream = null;
        try {
            inStream = new FileInputStream(new File(filePath));
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
        listData = new ArrayList<List<String>>();
        mapData = new ArrayList<Map<String, String>>();
        columnHeaderList = new ArrayList<String>();
        int numOfRows = sheet.getLastRowNum() + 1;
        for (int i = 0; i < numOfRows; i++) {
            Row row = sheet.getRow(i);
            Map<String, String> map = new HashMap<String, String>();
            List<String> list = new ArrayList<String>();
            if (row != null) {
                for (int j = 0; j < row.getLastCellNum(); j++) {
                    Cell cell = row.getCell(j);
                    if (i == 0){
                        columnHeaderList.add(String.valueOf(cell.getStringCellValue()));
                    }
                    else{
                        map.put(columnHeaderList.get(j), String.valueOf(cell.getStringCellValue()));
                    }
                    list.add(String.valueOf(cell.getStringCellValue()));
                }
            }
            if (i > 0){
                mapData.add(map);
            }
            listData.add(list);
        }
        flag = true;
    }

    public String getCellData(int row, int col){
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
        ExcelReader eh = new ExcelReader("E:\\workspace\\test.xls","Sheet1");
        System.out.println(eh.getCellData(1, 1));
        System.out.println(eh.getCellData(1, "test1"));
    }
}
