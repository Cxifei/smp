package com.rimi.smp.service.impl;

import com.rimi.smp.service.ILoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.servlet.http.HttpServletRequest;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class LoginServiceImplTest {

    @Autowired
    private ILoginService service;

    @Test
    public void login() {



    }

}