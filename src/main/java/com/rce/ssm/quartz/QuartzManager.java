package com.rce.ssm.quartz;
//简单的任务管理类
//QuartzManager.java



import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;

import java.text.ParseException;
import org.quartz.CronTrigger;
import org.quartz.DateBuilder;
import org.quartz.DateBuilder.IntervalUnit;
import org.quartz.Job;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.TriggerKey;
import org.quartz.impl.StdSchedulerFactory;


/** */
/**
 * @Title:Quartz管理类
 * @author Firstmetcs
 *
 * Code under Quartz 2.2.3, All methods tests passed!
 *
 * Code examples see QuartzTest.java and QuartzJob.java
 *
 */
public class QuartzManager {
	private static SchedulerFactory sf = new StdSchedulerFactory();
	private static String JOB_GROUP_NAME = "group1";
	private static String TRIGGER_GROUP_NAME = "trigger1";

	/** */
	/**
	 * 添加一个定时任务，使用默认的任务组名，触发器名，触发器组名
	 *
	 * @param jobName 任务名
	 * @param job     任务
	 * @param time    时间设置，参考quartz说明文档
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName, Job job, String time) throws SchedulerException, ParseException {
		Scheduler sched = sf.getScheduler();
		// 任务名，任务组，任务执行类

		JobDetail jobDetail = newJob(job.getClass()).withIdentity(jobName, JOB_GROUP_NAME)
				.build();
		// 触发器名,触发器组
		CronTrigger trigger = newTrigger().withIdentity(jobName, TRIGGER_GROUP_NAME)
				.startNow()
				// 触发器时间设定
				.withSchedule(cronSchedule(time)).build();

		sched.scheduleJob(jobDetail, trigger);
		// 启动
		if (!sched.isShutdown())
			// 开始执行，start()方法被调用后，计时器就开始工作，计时调度中允许放入N个Job
			sched.start();
	}


	/** *//**
	 * 添加一个定时任务
	 * @param jobName 任务名
	 * @param jobGroupName 任务组名
	 * @param triggerName  触发器名
	 * @param triggerGroupName 触发器组名
	 * @param job     任务
	 * @param time    时间设置，参考quartz说明文档
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName,String jobGroupName,
							  String triggerName,String triggerGroupName,
							  Job job,String time)
			throws SchedulerException, ParseException{
		Scheduler sched = sf.getScheduler();
		// 任务名，任务组，任务执行类

		JobDetail jobDetail = newJob(job.getClass()).withIdentity(jobName, jobGroupName)
				.build();
		// 触发器名,触发器组
		CronTrigger trigger = newTrigger().withIdentity(triggerName, triggerGroupName)
				.startNow()
				// 触发器时间设定
				.withSchedule(cronSchedule(time)).build();

		sched.scheduleJob(jobDetail,trigger);
		if(!sched.isShutdown())
			sched.start();
	}


	/** *//**
	 *  添加一个定时任务，使用默认的任务组名，触发器名，触发器组名
	 * @param jobName 任务名
	 * @param job     任务
	 * @param time    时间设置，参考quartz说明文档
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName,Job job,int time)
			throws SchedulerException, ParseException{
		Scheduler sched = sf.getScheduler();
		//定义一个JobDetail
		JobDetail jobDetail = newJob(job.getClass()) //定义Job类为HelloQuartz类，这是真正的执行逻辑所在
				.withIdentity(jobName, JOB_GROUP_NAME) //定义name/group
				.usingJobData("name", "quartz") //定义属性
				.build();
		Trigger trigger = newTrigger().withIdentity(jobName, TRIGGER_GROUP_NAME) //定义name/group
				.startNow()//一旦加入scheduler，立即生效
				.withSchedule(simpleSchedule() //使用SimpleTrigger
						.withIntervalInSeconds(time) //每隔一秒执行一次
						.repeatForever()) //一直执行，奔腾到老不停歇
				.build();


		sched.scheduleJob(jobDetail,trigger);
		//启动
		if(!sched.isShutdown())
			// 开始执行，start()方法被调用后，计时器就开始工作，计时调度中允许放入N个Job
			sched.start();
	}



	/** *//**
	 *  添加一个定时任务，使用默认的任务组名，触发器名，触发器组名
	 * @param jobName 任务名
	 * @param job     任务
	 * @param time    时间设置，参考quartz说明文档
	 * @param type    时间类型设置，参考DataUtil
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName,Job job,int time, IntervalUnit type)
			throws SchedulerException, ParseException{
		Scheduler sched = sf.getScheduler();
		//定义一个JobDetail
		JobDetail jobDetail = newJob(job.getClass()) //定义Job类为HelloQuartz类，这是真正的执行逻辑所在
				.withIdentity(jobName, JOB_GROUP_NAME) //定义name/group
				.usingJobData("name", "quartz") //定义属性
				.build();
		Trigger trigger = newTrigger().withIdentity(jobName, TRIGGER_GROUP_NAME) //定义name/group
				.startAt(DateBuilder.futureDate(time, type))
				.build();


		sched.scheduleJob(jobDetail,trigger);
		//启动
		if(!sched.isShutdown())
			// 开始执行，start()方法被调用后，计时器就开始工作，计时调度中允许放入N个Job
			sched.start();
	}



	/** *//**
	 *  添加一个定时任务，使用默认的任务组名，触发器名，触发器组名
	 * @param jobName 任务名
	 * @param job     任务
	 * @param time    时间设置，参考quartz说明文档
	 * @param count   重复次数
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName,Job job,int time, int count)
			throws SchedulerException, ParseException{
		Scheduler sched = sf.getScheduler();
		//定义一个JobDetail
		JobDetail jobDetail = newJob(job.getClass()) //定义Job类为HelloQuartz类，这是真正的执行逻辑所在
				.withIdentity(jobName, JOB_GROUP_NAME) //定义name/group
				.usingJobData("name", "quartz") //定义属性
				.build();
		Trigger trigger = newTrigger().withIdentity(jobName, TRIGGER_GROUP_NAME) //定义name/group
				.startNow()//一旦加入scheduler，立即生效
				.withSchedule(simpleSchedule() //使用SimpleTrigger
						.withIntervalInSeconds(time) //每隔一秒执行一次
						.withRepeatCount(count)) //一直执行，奔腾到老不停歇
				.build();

		sched.scheduleJob(jobDetail,trigger);
		//启动
		if(!sched.isShutdown())
			// 开始执行，start()方法被调用后，计时器就开始工作，计时调度中允许放入N个Job
			sched.start();
	}



	/** */
	/**
	 * 添加一个定时任务
	 *
	 * @param jobName          任务名
	 * @param jobGroupName     任务组名
	 * @param triggerName      触发器名
	 * @param triggerGroupName 触发器组名
	 * @param job              任务
	 * @param time             时间设置，参考quartz说明文档
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void addJob(String jobName, String jobGroupName, String triggerName, String triggerGroupName, Job job,
							  int time) throws SchedulerException, ParseException {
		Scheduler sched = sf.getScheduler();

		//定义一个JobDetail
		JobDetail jobDetail = newJob(job.getClass()) //定义Job类为HelloQuartz类，这是真正的执行逻辑所在
				.withIdentity(jobName, jobGroupName) //定义name/group
				.usingJobData("name", "quartz") //定义属性
				.build();
		Trigger trigger = newTrigger().withIdentity(triggerName, triggerGroupName) //定义name/group
				.startNow()//一旦加入scheduler，立即生效
				.withSchedule(simpleSchedule() //使用SimpleTrigger
						.withIntervalInSeconds(time) //每隔一秒执行一次
						.repeatForever()) //一直执行，奔腾到老不停歇
				.build();


		sched.scheduleJob(jobDetail, trigger);
		if (!sched.isShutdown())
			sched.start();
	}

	/** */
	/**
	 * 修改一个任务的触发时间(使用默认的任务组名，触发器名，触发器组名)
	 *
	 * @param jobName
	 * @param time
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void modifyJobTime(String jobName, String time) throws SchedulerException, ParseException {
		Scheduler sched = sf.getScheduler();
		TriggerKey triggerKey = TriggerKey.triggerKey(jobName, TRIGGER_GROUP_NAME);
		CronTrigger trigger = (CronTrigger) sched.getTrigger(triggerKey);
		if (trigger != null) {
			trigger = newTrigger().withIdentity(jobName, TRIGGER_GROUP_NAME) //定义name/group
					.startNow()//一旦加入scheduler，立即生效
					.withSchedule(cronSchedule(time))
					.build();
			sched.rescheduleJob(triggerKey, trigger);
		}
	}

	/** */
	/**
	 * 修改一个任务的触发时间
	 *
	 * @param triggerName
	 * @param triggerGroupName
	 * @param time
	 * @throws SchedulerException
	 * @throws ParseException
	 */
	public static void modifyJobTime(String triggerName, String triggerGroupName, String time)
			throws SchedulerException, ParseException {
		Scheduler sched = sf.getScheduler();
		TriggerKey triggerKey = TriggerKey.triggerKey(triggerName, triggerGroupName);
		CronTrigger trigger = (CronTrigger) sched.getTrigger(triggerKey);
		if (trigger != null) {
			trigger = newTrigger().withIdentity(triggerName, triggerGroupName) //定义name/group
					.startNow()//一旦加入scheduler，立即生效
					.withSchedule(cronSchedule(time))
					.build();
			sched.rescheduleJob(triggerKey, trigger);
		}
	}

	/** */
	/**
	 * 移除一个任务(使用默认的任务组名，触发器名，触发器组名)
	 *
	 * @param jobName
	 * @throws SchedulerException
	 */
	public static void removeJob(String jobName) throws SchedulerException {
		Scheduler sched = sf.getScheduler();

		TriggerKey triggerKey = TriggerKey.triggerKey(jobName,TRIGGER_GROUP_NAME);
		// 停止触发器
		sched.pauseTrigger(triggerKey);
		// 移除触发器
		sched.unscheduleJob(triggerKey);
		// 删除任务
		sched.deleteJob(JobKey.jobKey(jobName,JOB_GROUP_NAME));
	}

	/** */
	/**
	 * 移除一个任务
	 *
	 * @param jobName
	 * @param jobGroupName
	 * @param triggerName
	 * @param triggerGroupName
	 * @throws SchedulerException
	 */
	public static void removeJob(String jobName, String jobGroupName, String triggerName, String triggerGroupName)
			throws SchedulerException {
		Scheduler sched = sf.getScheduler();

		TriggerKey triggerKey = TriggerKey.triggerKey(triggerName,triggerGroupName);
		// 停止触发器
		sched.pauseTrigger(triggerKey);
		// 移除触发器
		sched.unscheduleJob(triggerKey);
		// 删除任务
		sched.deleteJob(JobKey.jobKey(jobName,jobGroupName));
	}

	public static void seeTime(String jobname) {
		Scheduler sched;
		try {
			sched = sf.getScheduler();
			TriggerKey triggerKey = TriggerKey.triggerKey(jobname,TRIGGER_GROUP_NAME);
			Trigger trigger = sched.getTrigger(triggerKey);
			System.out.println(trigger.getNextFireTime());
		} catch (SchedulerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}