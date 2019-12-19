package cn.ecut.assetmana.bean;

import java.io.Serializable;

public class User implements Serializable,Cloneable{
    /** 用户id */
    private Long id ;
    /** 用户名 */
    private String name ;
    /** 用户头像 */
    private String userface ;
    /** 用户密码 */
    private String password ;
    /** 手机电话 */
    private String phone ;
    /** 邮箱 */
    private String email ;
    /** 居住地址 */
    private String address ;
    /** 启用;0不启用/1启用 */
    private String enable ;
    /** 备注说明 */
    private String remark ;

    /** 用户id
     * @return*/
    public Long getId(){
        return this.id;
    }
    /** 用户id */
    public void setId(Long id){
        this.id = id;
    }
    /** 用户名 */
    public String getName(){
        return this.name;
    }
    /** 用户名 */
    public void setName(String name){
        this.name = name;
    }
    /** 用户头像 */
    public String getUserface(){
        return this.userface;
    }
    /** 用户头像 */
    public void setUserface(String userface){
        this.userface = userface;
    }
    /** 用户密码 */
    public String getPassword(){
        return this.password;
    }
    /** 用户密码 */
    public void setPassword(String password){
        this.password = password;
    }
    /** 手机电话 */
    public String getPhone(){
        return this.phone;
    }
    /** 手机电话 */
    public void setPhone(String phone){
        this.phone = phone;
    }
    /** 邮箱 */
    public String getEmail(){
        return this.email;
    }
    /** 邮箱 */
    public void setEmail(String email){
        this.email = email;
    }
    /** 居住地址 */
    public String getAddress(){
        return this.address;
    }
    /** 居住地址 */
    public void setAddress(String address){
        this.address = address;
    }
    /** 启用;0不启用/1启用 */
    public String getEnable(){
        return this.enable;
    }
    /** 启用;0不启用/1启用 */
    public void setEnable(String enable){
        this.enable = enable;
    }
    /** 备注说明 */
    public String getRemark(){
        return this.remark;
    }
    /** 备注说明 */
    public void setRemark(String remark){
        this.remark = remark;
    }
}
