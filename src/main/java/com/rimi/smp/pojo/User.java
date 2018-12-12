package com.rimi.smp.pojo;

import lombok.Data;

/**
 * @author 惜-梦
 * @description 用户实体类
 * @date 2018-12-12 09:08
 */
@Data
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
    private String name;

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


    public User(Long id, String email, String name, String password, String signature, String state) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.password = password;
        this.signature = signature;
        this.state = state;
    }

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

    public String getName() {
        return name;
    }

    public User setName(String name) {
        this.name = name;
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
}
