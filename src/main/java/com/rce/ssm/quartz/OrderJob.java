package com.rce.ssm.quartz;

import com.rce.ssm.service.OrderService;
import org.quartz.Job;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;

public class OrderJob implements Job {

    public void execute(JobExecutionContext arg0) throws JobExecutionException {
        // TODO Auto-generated method stub
        //删除订单
        JobDetail detail = arg0.getJobDetail();
        String name = detail.getKey().getName();
        System.out.println("name:" + name);
        SpringContextUtils springContextUtils = new SpringContextUtils();
        ApplicationContext applicationContext = springContextUtils.getApplicationContextNoWeb();
        springContextUtils.setApplicationContext(applicationContext);
        OrderService orderService = (OrderService) SpringContextUtils.getBean("orderService");
        orderService.changeOrderStatusTo3(Integer.parseInt(name));
        QuartzManager.seeTime(name);
    }

}

