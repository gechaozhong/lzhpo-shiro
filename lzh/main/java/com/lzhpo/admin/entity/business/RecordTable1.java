package com.lzhpo.admin.entity.business;


import com.baomidou.mybatisplus.annotation.*;

import java.util.Date;

@TableName("busi_summary")
public class RecordTable1 {

    @TableId(type=IdType.AUTO)
    private Integer Id;

    @TableField(value = "sequence",strategy= FieldStrategy.IGNORED)
    private String sequence;

    @TableField(value = "summary",strategy= FieldStrategy.IGNORED)
    private String summary;

    @TableField(value = "organization_code",strategy= FieldStrategy.IGNORED)
    private String organizationCode;

    @TableField(value = "company_name",strategy= FieldStrategy.IGNORED)
    private String companyName;

    @TableField(value = "legal_representative",strategy= FieldStrategy.IGNORED)
    private String LegalRepresentative;

    @TableField(value = "superior_supervisor",strategy= FieldStrategy.IGNORED)
    private String superiorSupervisor;

    @TableField(value = "reviewer",strategy= FieldStrategy.IGNORED)
    private String reviewer;

    @TableField(value = "passed_or_not",strategy= FieldStrategy.IGNORED)
    private String passedOrNot;

    @TableField(value = "submit_date",strategy= FieldStrategy.IGNORED)
    private Date submitDate;

    @TableField(value = "review_date",strategy= FieldStrategy.IGNORED)
    private Date reviewDate;

    @TableField(value = "reason_for_not_passed",strategy= FieldStrategy.IGNORED)
    private String reasonForNotPassed;

    @TableField(value = "commit",strategy= FieldStrategy.IGNORED)
    private String commit;

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

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getReviewer() {
        return reviewer;
    }

    public void setReviewer(String reviewer) {
        this.reviewer = reviewer;
    }

    public String getPassedOrNot() {
        return passedOrNot;
    }

    public void setPassedOrNot(String passedOrNot) {
        this.passedOrNot = passedOrNot;
    }

    public Date getSubmitDate() {
        return submitDate;
    }

    public String getOrganizationCode() {
        return organizationCode;
    }

    public void setOrganizationCode(String organizationCode) {
        this.organizationCode = organizationCode;
    }

    public void setSubmitDate(Date submitDate) {
        this.submitDate = submitDate;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getReasonForNotPassed() {
        return reasonForNotPassed;
    }

    public void setReasonForNotPassed(String reasonForNotPassed) {
        this.reasonForNotPassed = reasonForNotPassed;
    }

    public String getCommit() {
        return commit;
    }

    public void setCommit(String commit) {
        this.commit = commit;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getLegalRepresentative() {
        return LegalRepresentative;
    }

    public void setLegalRepresentative(String legalRepresentative) {
        LegalRepresentative = legalRepresentative;
    }

    public String getSuperiorSupervisor() {
        return superiorSupervisor;
    }

    public void setSuperiorSupervisor(String superiorSupervisor) {
        this.superiorSupervisor = superiorSupervisor;
    }
}
