package cn.ecut.assetmana.bean;

import java.io.Serializable;

public class Role implements Serializable,Cloneable{
    /** 角色id */
    private Integer id ;
    /** 角色名称 */
    private String name ;
    /** 中文角色名 */
    private String namezh ;
    /** 角色备注 */
    private String remark ;

    /** 角色id */
    public Integer getId(){
        return this.id;
    }
    /** 角色id */
    public void setId(Integer id){
        this.id = id;
    }
    /** 角色名称 */
    public String getName(){
        return this.name;
    }
    /** 角色名称 */
    public void setName(String name){
        this.name = name;
    }
    /** 中文角色名 */
    public String getNameZh(){
        return this.namezh;
    }
    /** 中文角色名 */
    public void setNameZh(String namezh){
        this.namezh = namezh;
    }
    /** 角色备注 */
    public String getRemark(){
        return this.remark;
    }
    /** 角色备注 */
    public void setRemark(String remark){
        this.remark = remark;
    }
}
