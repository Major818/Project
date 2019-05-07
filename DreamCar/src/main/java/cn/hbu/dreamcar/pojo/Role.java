package cn.hbu.dreamcar.pojo;

import java.util.Date;

public class Role {

    private String roleId;
    private String name;
    private String remarks;
    private Integer orderNo;
    private Date createTime;
    private Date updateTime;
    private Boolean checked;

    public Date getCreateTime() {
        return createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getId(){
        return roleId;
    }
    public Boolean getChecked() {
        return checked;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public String getRoleId() {
        return roleId;
    }

    public String getName() {
        return name;
    }

    public String getRemarks() {
        return remarks;
    }

    public Integer getOrderNo() {
        return orderNo;
    }




    public void setName(String name) {
        this.name = name;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }



    @Override
    public String toString() {
        return "Role{" +
                "roleId='" + roleId + '\'' +
                ", name='" + name + '\'' +
                ", remarks='" + remarks + '\'' +
                ", orderNo=" + orderNo +
                ", createTime='" + createTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", checked=" + checked +
                '}';
    }
}
