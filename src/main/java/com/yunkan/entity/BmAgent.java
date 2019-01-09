package com.yunkan.entity;
public class BmAgent implements java.io.Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;
    private String code;//商会编码
    private String agentName;//商会名称
    private String contactsName;//联系人名称
    private String contactsPhone;//联系电话
    private String logoPic;//商会logo的url
    private String coverPic;//封面图
    private Long provinceId;//省份编号
    private String provinceName;//省份名称
    private Long cityId;//城市id
    private String cityName;//城市名称
    private Long adminId;//admin_id
    private String address;//商会详细地址
    private String about;//简介
    private Integer status;//状态 1:启用 0:禁用
    private Long createBy;//创建人 sys_admin.id
    private java.util.Date createTime;//创建时间|入驻时间
    private Integer enable;//数据有效性 1:有效 0:无效,为0时 不会在系统中查询出来
    private Long lastUpdateBy;//最后修改人
    private java.util.Date lastUpdateTime;//最后修改时间
    public BmAgent() {
        super();
    }
    public BmAgent(Long id, String code, String agentName, String contactsName, String contactsPhone, String logoPic, String coverPic, Long provinceId, String provinceName, Long cityId, String cityName, Long adminId, String address, String about, Integer status, Long createBy, java.util.Date createTime, Integer enable, Long lastUpdateBy, java.util.Date lastUpdateTime) {
        super();
        this.id = id;
        this.code = code;
        this.agentName = agentName;
        this.contactsName = contactsName;
        this.contactsPhone = contactsPhone;
        this.logoPic = logoPic;
        this.coverPic = coverPic;
        this.provinceId = provinceId;
        this.provinceName = provinceName;
        this.cityId = cityId;
        this.cityName = cityName;
        this.adminId = adminId;
        this.address = address;
        this.about = about;
        this.status = status;
        this.createBy = createBy;
        this.createTime = createTime;
        this.enable = enable;
        this.lastUpdateBy = lastUpdateBy;
        this.lastUpdateTime = lastUpdateTime;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAgentName() {
        return this.agentName;
    }

    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    public String getContactsName() {
        return this.contactsName;
    }

    public void setContactsName(String contactsName) {
        this.contactsName = contactsName;
    }

    public String getContactsPhone() {
        return this.contactsPhone;
    }

    public void setContactsPhone(String contactsPhone) {
        this.contactsPhone = contactsPhone;
    }

    public String getLogoPic() {
        return this.logoPic;
    }

    public void setLogoPic(String logoPic) {
        this.logoPic = logoPic;
    }

    public String getCoverPic() {
        return this.coverPic;
    }

    public void setCoverPic(String coverPic) {
        this.coverPic = coverPic;
    }

    public Long getProvinceId() {
        return this.provinceId;
    }

    public void setProvinceId(Long provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceName() {
        return this.provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    public Long getCityId() {
        return this.cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return this.cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public Long getAdminId() {
        return this.adminId;
    }

    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAbout() {
        return this.about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Long getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public java.util.Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }

    public Integer getEnable() {
        return this.enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public Long getLastUpdateBy() {
        return this.lastUpdateBy;
    }

    public void setLastUpdateBy(Long lastUpdateBy) {
        this.lastUpdateBy = lastUpdateBy;
    }

    public java.util.Date getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public void setLastUpdateTime(java.util.Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    @Override
    public String toString() {
        return "BmAgent{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", agentName='" + agentName + '\'' +
                ", contactsName='" + contactsName + '\'' +
                ", contactsPhone='" + contactsPhone + '\'' +
                ", logoPic='" + logoPic + '\'' +
                ", coverPic='" + coverPic + '\'' +
                ", provinceId=" + provinceId +
                ", provinceName='" + provinceName + '\'' +
                ", cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                ", adminId=" + adminId +
                ", address='" + address + '\'' +
                ", about='" + about + '\'' +
                ", status=" + status +
                ", createBy=" + createBy +
                ", createTime=" + createTime +
                ", enable=" + enable +
                ", lastUpdateBy=" + lastUpdateBy +
                ", lastUpdateTime=" + lastUpdateTime +
                '}';
    }
}
