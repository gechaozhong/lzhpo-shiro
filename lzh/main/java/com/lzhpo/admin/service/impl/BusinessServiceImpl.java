package com.lzhpo.admin.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lzhpo.admin.entity.business.RecordTable1;
import com.lzhpo.admin.entity.business.RecordTable2;
import com.lzhpo.admin.mapper.BusiMapper;
import com.lzhpo.admin.mapper.BusiSummaryMapper;
import com.lzhpo.admin.service.BusinessService;
import com.lzhpo.common.business.Index;
import com.lzhpo.common.util.ExcelReader;
import com.lzhpo.common.util.Sheet1CellMapping;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


@Service
@Transactional(rollbackFor = Exception.class)
public class BusinessServiceImpl extends ServiceImpl<BusiMapper, RecordTable2> implements BusinessService
{


    @Autowired
    BusiSummaryMapper busiSummaryMapper;

    @Autowired
    BusiMapper busiMapper;

    @Qualifier("kwSqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;


    private void batchInsert(List<RecordTable2> beanList) {
        SqlSession session = sqlSessionTemplate.getSqlSessionFactory().openSession(ExecutorType.BATCH,false);
        BusiMapper mapper = session.getMapper(BusiMapper.class);
        try {
            for (int i = 0;i<beanList.size();i++) {
                mapper.insert(beanList.get(i));
                if(i%1000==999 || i==beanList.size()-1) {
                    session.commit();
                    session.clearCache();
                }
            }
        }catch(Exception e) {
            e.printStackTrace();
            session.rollback();
        }finally {
            session.close();
        }
    }


    @Override
    public void uploadExeclService(MultipartFile execlFile) {
        try{

            File file =  multipartFileToFile(execlFile);
            ExcelReader excelReader = new ExcelReader(file,"备案表一");
            processSheet1(excelReader);

            ExcelReader excelReader2 = new ExcelReader(file,"备案表二");
            processSheet2( excelReader2);
            ExcelReader excelReader3= new ExcelReader(file,"备案表二");
            processSheet3( excelReader3);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void processSheet2(ExcelReader excelReader2) throws ParseException {
        SimpleDateFormat simdate1=new SimpleDateFormat("yyyy-MM-dd");
        List<List<Object>> listData = excelReader2.getListData();
        List<RecordTable2> rdList = new LinkedList<>();
        for (int i = 2; i < listData.size(); i++) {
            RecordTable2 recordTable2 = new RecordTable2();
            List<Object> lo =  listData.get(i);
           if (lo.get(0)!=null &&!"".equals(lo.get(0))){
               recordTable2.setSequence(lo.get(0).toString().split("\\.")[0]);
           }else {continue;}
            if (lo.get(1)!=null &&!"".equals(lo.get(1))){
                recordTable2.setName(lo.get(1).toString());
            }else {continue;}
            if (lo.get(2)!=null &&!"".equals(lo.get(2))){
                recordTable2.setSex(lo.get(2).toString());
            }else {continue;}
            if (lo.get(3)!=null &&!"".equals(lo.get(3))){
                recordTable2.setIdCard(lo.get(3).toString());
            }else {continue;}
            if (lo.get(4)!=null &&!"".equals(lo.get(4))){
                recordTable2.setWorkingYears(Double.valueOf(lo.get(4).toString()).intValue());
            }else {continue;}
            if (lo.get(5)!=null &&!"".equals(lo.get(5))){
                recordTable2.setWorkType(lo.get(5).toString());
            }else {continue;}

            if (lo.get(6)!=null &&!"".equals(lo.get(6))){
                recordTable2.setSpecialWorkType(lo.get(6).toString());
            }else {continue;}
            if (lo.get(7)!=null &&!"".equals(lo.get(7))){
                try {
                    recordTable2.setWorkStartDate(simdate1.parse(lo.get(7).toString()));
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }else {continue;}
            if (lo.get(8)!=null &&!"".equals(lo.get(8))){
                recordTable2.setWorkEndDate(simdate1.parse(lo.get(8).toString()));
            }else {continue;}
            if (lo.get(9)!=null &&!"".equals(lo.get(9))){
                recordTable2.setClassificationRegisteredEmployees(lo.get(9).toString());
            }else {continue;}
            if (lo.get(10)!=null &&!"".equals(lo.get(10))){
                recordTable2.setMigrantWorkerOrNot(lo.get(11).toString());
            }else {continue;}
            if (lo.get(11)!=null &&!"".equals(lo.get(11))){
                recordTable2.setDisabilityOrNot(lo.get(11).toString());
            }else {continue;}
            busiMapper.insert(recordTable2);
        }
    }

    private void processSheet3(ExcelReader excelReader3) {


    }

    private void processSheet1(ExcelReader excelReader) {
        Map<String,String> cellJson = new HashMap<>();
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


}
