package com.rce.ssm.quartz;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/**
 * spring上下文工具类
 * @author yuying
 *
 */
public class SpringContextUtils implements ApplicationContextAware {
	private static ApplicationContext applicationContext = null;//Spring应用上下文环境

	public static ApplicationContext getApplicationContext() {
		    return applicationContext;
	}
	/**
	 * 实现ApplicationContextAware接口的回调方法，设置上下文环境  
     * @param applicationContext
     * @throws BeansException
	 */
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		SpringContextUtils.applicationContext = applicationContext;
	}
	public static ApplicationContext getAppContext() {
		return applicationContext;
	}
	  /**
	  * 获取对象  
	  * @param name
	  * @return Object 一个以所给名字注册的bean的实例
	  * @throws BeansExceptiond
	  */
	  public static Object getBean(String name) throws BeansException {
	    return applicationContext.getBean(name);
	  }
	  /**
	   * 非web形式启动spring容器时获得上下文
	   * @return ApplicationContext
	   */
	  public static ApplicationContext getApplicationContextNoWeb(){
		  ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
		   applicationContext = ac;
		  return ac;
	  }

}
