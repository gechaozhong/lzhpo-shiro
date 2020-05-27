package com.lzhpo.admin.entity.business;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.util.Date;


/**
 * <p> Author：gcz </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */
@TableName("labor_employment")
public class RecordTable2 {

    @TableId("id")
    private Integer Id;

    @TableField(value = "sequence",strategy= FieldStrategy.IGNORED)
    private String sequence;

    @TableField(value = "name",strategy= FieldStrategy.IGNORED)
    private String name;

    @TableField(value = "sex",strategy= FieldStrategy.IGNORED)
    private String sex;

    @TableField(value = "id_card",strategy= FieldStrategy.IGNORED)
    private String idCard;

    @TableField(value = "working_years",strategy= FieldStrategy.IGNORED)
    private int workingYears;

    @TableField(value = "work_type",strategy= FieldStrategy.IGNORED)
    private int workType;

    @TableField(value = "special_work_type",strategy= FieldStrategy.IGNORED)
    private int specialWorkType;

    @TableField(value = "work_start_date",strategy= FieldStrategy.IGNORED)
    private Date workStartDate;

    @TableField(value = "work_end_date",strategy= FieldStrategy.IGNORED)
    private Date workEndDate;

    @TableField(value = "classification_registered_employees",strategy= FieldStrategy.IGNORED)
    private String classificationRegisteredEmployees;


    @TableField(value = "migrant_worker_or_not",strategy= FieldStrategy.IGNORED)
    private String migrantWorkerOrNot;

    @TableField(value = "disability_or_not",strategy= FieldStrategy.IGNORED)
    private String disabilityOrNot;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getSequence() {
        return sequence;
    }

    public void setSequence(String sequence) {
        this.sequence = sequence;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public int getWorkingYears() {
        return workingYears;
    }

    public void setWorkingYears(int workingYears) {
        this.workingYears = workingYears;
    }

    public int getWorkType() {
        return workType;
    }

    public void setWorkType(int workType) {
        this.workType = workType;
    }

    public int getSpecialWorkType() {
        return specialWorkType;
    }

    public void setSpecialWorkType(int specialWorkType) {
        this.specialWorkType = specialWorkType;
    }

    public Date getWorkStartDate() {
        return workStartDate;
    }

    public void setWorkStartDate(Date workStartDate) {
        this.workStartDate = workStartDate;
    }

    public Date getWorkEndDate() {
        return workEndDate;
    }

    public void setWorkEndDate(Date workEndDate) {
        this.workEndDate = workEndDate;
    }

    public String getClassificationRegisteredEmployees() {
        return classificationRegisteredEmployees;
    }

    public void setClassificationRegisteredEmployees(String classificationRegisteredEmployees) {
        this.classificationRegisteredEmployees = classificationRegisteredEmployees;
    }

    public String getMigrantWorkerOrNot() {
        return migrantWorkerOrNot;
    }

    public void setMigrantWorkerOrNot(String migrantWorkerOrNot) {
        this.migrantWorkerOrNot = migrantWorkerOrNot;
    }

    public String getDisabilityOrNot() {
        return disabilityOrNot;
    }

    public void setDisabilityOrNot(String disabilityOrNot) {
        this.disabilityOrNot = disabilityOrNot;
    }
}
