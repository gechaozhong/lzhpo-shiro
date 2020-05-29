package com.lzhpo.admin.entity.business;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.util.Date;

@TableName("busi_resigned_employees")
public class RecordTable3 {

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

    @TableField(value = "category_termination_contract",strategy= FieldStrategy.IGNORED)
    private String categoryTerminationContract;

    @TableField(value = "reason_for_change",strategy= FieldStrategy.IGNORED)
    private String reasonForChange;

    @TableField(value = "labor_contract_start_date",strategy= FieldStrategy.IGNORED)
    private Date laborContractStartDate;

    @TableField(value = "labor_contract_end_date",strategy= FieldStrategy.IGNORED)
    private Date laborContractEndDate;

    @TableField(value = "relieve_labor_contract_end_date",strategy= FieldStrategy.IGNORED)
    private Date relieveLaborContractEndDate;

    @TableField(value = "whether_pay_compensation",strategy= FieldStrategy.IGNORED)
    private String whetherPayCompensation;

    @TableField(value = "compensation_amount",strategy= FieldStrategy.IGNORED)
    private double compensationAmount;

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

    public String getCategoryTerminationContract() {
        return categoryTerminationContract;
    }

    public void setCategoryTerminationContract(String categoryTerminationContract) {
        this.categoryTerminationContract = categoryTerminationContract;
    }

    public String getReasonForChange() {
        return reasonForChange;
    }

    public void setReasonForChange(String reasonForChange) {
        this.reasonForChange = reasonForChange;
    }

    public Date getLaborContractStartDate() {
        return laborContractStartDate;
    }

    public void setLaborContractStartDate(Date laborContractStartDate) {
        this.laborContractStartDate = laborContractStartDate;
    }

    public Date getLaborContractEndDate() {
        return laborContractEndDate;
    }

    public void setLaborContractEndDate(Date laborContractEndDate) {
        this.laborContractEndDate = laborContractEndDate;
    }

    public Date getRelieveLaborContractEndDate() {
        return relieveLaborContractEndDate;
    }

    public void setRelieveLaborContractEndDate(Date relieveLaborContractEndDate) {
        this.relieveLaborContractEndDate = relieveLaborContractEndDate;
    }

    public String getWhetherPayCompensation() {
        return whetherPayCompensation;
    }

    public void setWhetherPayCompensation(String whetherPayCompensation) {
        this.whetherPayCompensation = whetherPayCompensation;
    }

    public double getCompensationAmount() {
        return compensationAmount;
    }

    public void setCompensationAmount(double compensationAmount) {
        this.compensationAmount = compensationAmount;
    }
}
