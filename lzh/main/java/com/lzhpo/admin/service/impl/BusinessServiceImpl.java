package com.lzhpo.admin.service.impl;

import com.alibaba.fastjson.JSON;
import com.lzhpo.admin.entity.business.RecordTable1;
import com.lzhpo.admin.mapper.BusiSummaryMapper;
import com.lzhpo.admin.service.BusinessService;
import com.lzhpo.common.business.Index;
import com.lzhpo.common.util.ExcelReader;
import com.lzhpo.common.util.Sheet1CellMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;


@Service
@Transactional(rollbackFor = Exception.class)
public class BusinessServiceImpl implements BusinessService
{

    @Autowired
    BusiSummaryMapper busiSummaryMapper;

    @Override
    public void uploadExeclService(MultipartFile execlFile) {
        try{
            Map<String,String> cellJson = new HashMap<>();
            File file =  multipartFileToFile(execlFile);
            ExcelReader excelReader = new ExcelReader(file,"备案表一");
            for (Sheet1CellMapping em : Sheet1CellMapping.values()) {
              String col = em.toString().substring(0,1);
              String row = em.toString().substring(1);
              Object cellRe = excelReader.getCellData(Integer.valueOf(row),titleToNumber(col));
              if (cellRe != null)
              {
                  if(Index.getIntegerIndex().contains(em.toString())){
                      int tmp = Float.valueOf(cellRe.toString()).intValue();

                      cellJson.put(em.toString(),tmp+"");
                  }else if(Index.getRadioIndex().contains(em.toString())){
                      float cell = Float.valueOf(cellRe.toString())*100;
                      cellJson.put(em.toString(),cell+"%");
                  }else{
                      cellJson.put(em.toString(),cellRe.toString());
                  }

              }
              else {
                  cellJson.put(em.toString(),"");
              }
            }
            RecordTable1 rd = new RecordTable1();
            rd.setSummary(JSON.toJSONString(cellJson));
            busiSummaryMapper.insert(rd);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public int titleToNumber(String s) {
        int res = 0;
        for(int i=0;i<s.length();i++){
            int temp = s.charAt(i)-'A'+1;
            res = res*26+temp;
        }
        return res;
    }

    public File multipartFileToFile(MultipartFile file) throws Exception {

        File toFile = null;
        if (file.equals("") || file.getSize() <= 0) {
            file = null;
        } else {
            InputStream ins = null;
            ins = file.getInputStream();
            toFile = new File(file.getOriginalFilename());
            inputStreamToFile(ins, toFile);
            ins.close();
        }
        return toFile;
    }


    //获取流文件
    private static void inputStreamToFile(InputStream ins, File file) {
        try {
            OutputStream os = new FileOutputStream(file);
            int bytesRead = 0;
            byte[] buffer = new byte[8192];
            while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            os.close();
            ins.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static void main(String[] args) {
        String abc = "15.23";
        System.out.println(Float.valueOf(abc).intValue());
    }

}
