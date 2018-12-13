package com.rimi.smp.pojo;


/**
 * @author 惜-梦
 * @description 用户实体类
 * @date 2018-12-12 09:08
 */
public class User {
    /**
     * 用户id  编号
     */
    private Long id ;

    /**
     * 邮件
     */
    private String email;

    /**
     * 昵称
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 个性签名
     */
    private String signature;

    /**
     * 状态
     */

    private String state;

    /**
     * 性别
     */
    private int sex;

    /**
     * 头像
     */
    private String portrait;

    public Long getId() {
        return id;
    }

    public User setId(Long id) {
        this.id = id;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getUsername() {
        return username;
    }

    public User setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public User setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getSignature() {
        return signature;
    }

    public User setSignature(String signature) {
        this.signature = signature;
        return this;
    }

    public String getState() {
        return state;
    }

    public User setState(String state) {
        this.state = state;
        return this;
    }

    public int getSex() {
        return sex;
    }

    public User setSex(int sex) {
        this.sex = sex;
        return this;
    }

    public String getPortrait() {
        return portrait;
    }

    public User setPortrait(String portrait) {
        this.portrait = portrait;
        return this;
    }

    public User(Long id, String email, String username, String password, String signature, String state, int sex, String portrait) {
        this.id = id;
        this.email = email;
        this.username = username;
        this.password = password;
        this.signature = signature;
        this.state = state;
        this.sex = sex;
        this.portrait = portrait;
    }

    public User() {
    }
}
