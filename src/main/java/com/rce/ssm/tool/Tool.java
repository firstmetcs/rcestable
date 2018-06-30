package com.rce.ssm.tool;

import org.apache.log4j.Logger;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.StringTokenizer;
import java.util.UUID;

public class Tool {
    private static Logger log = Logger.getLogger(Tool.class);


    //获取原生时间
    public  static Date getDate(){
        return new Date();
    }

    //获取带分时间
    public static String getyyyyMMddHHmm(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        return sdf.format(d);
    }
    //获取带毫秒时间
    public static String getyyyyMMddHHmmss(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(d);
    }
    //获取带毫秒时间戳
    public static String getyyyyMMddHHmmssSSS(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return sdf.format(d);
    }
    //获取日期
    public static String getyyyyMMdd(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        return sdf.format(d);
    }
    //获取日期
    public static String getyyyy_MM_dd(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(d);
    }

    //前一天
    public static String getq_yyyy_MM_dd(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long l=System.currentTimeMillis()-1000l*60*60*24;
        return sdf.format(l);
    }

    //前一月
    public static String getqy_yyyy_MM_dd(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long l=System.currentTimeMillis()-(1000l*60*60*24*30);
        return sdf.format(l);
    }
    //前一周
    public static String getq_zy_yyyy_MM_dd(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long l=System.currentTimeMillis()-1000l*60*60*24*7;
        return sdf.format(l);
    }

    //获取10000-100000的随机数
    public static int getRandom(){
        int max=100000;
        int min=10000;
        Random random = new Random();
        int s = random.nextInt(max)%(max-min+1) + min;
        return s;
    }


    //获取ip--暂时不使用
    public static String getIps(HttpServletRequest request)
    {
        String ip = request.getHeader("x-forwarded-for");
        if ((ip == null) || (ip.length() == 0) || ("unknown".equalsIgnoreCase(ip))) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if ((ip == null) || (ip.length() == 0) || ("unknown".equalsIgnoreCase(ip))) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if ((ip == null) || (ip.length() == 0) || ("unknown".equalsIgnoreCase(ip))) {
            ip = request.getRemoteAddr();
        }
        if (ip.equals("127.0.0.1"))
        {
            log.error("获取客户ip失败：" + ip);
            ip = getUUID();
        }
        return ip;
    }
    //获取ip
    public  static String getIp(HttpServletRequest request) {
        String ip = request.getHeader("X-Pounded-For");
        if (ip != null) {
            return ip;
        }

        ip = request.getHeader("x-forwarded-for");

        if (ip == null) {
            ip = request.getRemoteAddr();
            if (ip.equals("127.0.0.1") || ip.equals("0:0:0:0:0:0:0:1")) {
                InetAddress address;
                try {
                    address = InetAddress.getLocalHost();
                    ip = address.getHostAddress();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }

            }
            return ip;
        } else {
            StringTokenizer tokenizer = new StringTokenizer(ip, ",");
            for (int i = 0; i < tokenizer.countTokens() - 1; i++) {
                tokenizer.nextElement();
            }

            ip = tokenizer.nextToken().trim();

            if (ip.equals("")) {
                ip = null;
            }
        }

        if (ip == null) {
            ip = "0.0.0.0";
        }

        return ip;
    }
    //获取uuid
    public static String getUUID()
    {
        String uuid = UUID.randomUUID().toString().trim().replaceAll("-", "");
        return uuid;
    }

    public static String MD5(String str){
        String newstr="";
        try {
            //确定计算方法
            MessageDigest md5= MessageDigest.getInstance("MD5");
            BASE64Encoder base64en = new BASE64Encoder();
            //加密后的字符串
            newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return newstr;
    }

    //判断是否手机访问
    public static boolean ismobile(HttpServletRequest request){
        Boolean ismobile=(Boolean) request.getSession().getAttribute("ismobile");
        if(ismobile!=null){
            return ismobile;
        }else{
            return ismobilefilter(request);
        }
    }

    //拦截器判断是否手机访问
    public static boolean ismobilefilter(HttpServletRequest request){
        Boolean ismobile=false;
        String userAgent = request.getHeader("user-agent");
        if(userAgent.indexOf("Android") != -1){
            //安卓
            ismobile=true;
        }else if(userAgent.indexOf("iPhone") != -1 || userAgent.indexOf("iPad") != -1){
            ismobile=true;
            //苹果
        }else{
            ismobile=false;
            //电脑
        }
        return ismobile;
    }
    public static String equalsql(String string) {
        string=string.replace(" ", "");
        string=string.replace("（", "");
        string=string.replace("，", "");
        string=string.replace("）", "");
        string=string.replace(":", "");
        string=string.replace("的", "");
        string=string.replace("和", "");
        StringBuffer sb=new StringBuffer();
        //name like '%%' or name like '%%'
        char[] charArray = string.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if(i==0){
                sb.append("t1.name like '%"+charArray[i]+"%'");
            }else{
                sb.append(" or t1.name like '%"+charArray[i]+"%'");
            }
        }
        return sb.toString();
    }
}
