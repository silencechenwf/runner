package com.chinasofti.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;

/**
 * Created by Administrator on 2017/9/12.
 */
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
public class TestCase {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Test
    public void testUpdate(){
        int counts = jdbcTemplate.update("DELETE  from userinfo");
        System.out.println(counts);
    }
}
