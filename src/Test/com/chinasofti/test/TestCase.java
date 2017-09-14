package com.chinasofti.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

/**
 * Created by Administrator on 2017/9/12.
 */
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
public class TestCase extends AbstractJUnit4SpringContextTests {
    @Autowired
    private JdbcTemplate jdbcTemplate;



    @Test
    public void testUpdate(){
        int counts = jdbcTemplate.update("DELETE  from userinfo");
        System.out.println(counts);
    }
}
