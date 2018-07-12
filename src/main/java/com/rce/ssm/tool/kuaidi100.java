package com.rce.ssm.tool;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.rce.ssm.model.goods.DataInfo;
import com.rce.ssm.model.goods.ExpressDatas;

public class kuaidi100 {

	public static void main(String[] agrs) {
		String wuLiu = getWuLiu("shentong", "3361473096249");
		System.out.println(wuLiu);
		ExpressDatas ed = (ExpressDatas) JSON.parseObject(
				getWuLiu("shentong", "3361473096249"), ExpressDatas.class);
		System.out.println(ed);
		List<DataInfo> ls = ed.getData();
		Iterator it = ls.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
	}

	/**
	 *
	 * @author
	 * @date
	 * @param com
	 *            快递公司代码
	 * @param nu
	 *            物流单号
	 * @return
	 */
	public static String getWuLiu(String com, String nu) {
		String content = null;
		try {
			/*
			 * id:身份授权key，需要申请（此处的key为本人在网上查询） com:要查询的快递公司代码，不支持中文，自行查看官方文档
			 * nu:要查询的快递单号，请勿带特殊符号，不支持中文（大小写不敏感） show:返回类型： 0：返回json字符串，
			 * 1：返回xml对象， 2：返回html对象， 3：返回text文本。 如果不填，默认返回json字符串。 muti:返回信息数量：
			 * 1:返回多行完整的信息， 0:只返回一行信息。 不填默认返回多行。 order:排序： desc：按时间由新到旧排列，
			 * asc：按时间由旧到新排列。 不填默认返回倒序（大小写不敏感）
			 */
			/*
			 * state	快递单当前的状态 。0：在途中,1：已发货，2：疑难件，3： 已签收 ，4：已退货。该状态还在不断完善中
			 * status	查询的结果状态。0：运单暂无结果，1：查询成功，2：接口出现异常，408：验证码出错（仅适用于APICode url，可忽略) 。
			 */
			URL url = new URL(
					"http://api.kuaidi100.com/api?id=29833628d495d7a5&com="
							+ com + "&nu=" + nu + "&show=0&muti=1&order=desc");
			URLConnection con = url.openConnection();
			con.setAllowUserInteraction(false);
			InputStream urlStream = url.openStream();
			String type = con.guessContentTypeFromStream(urlStream);
			String charSet = null;
			if (type == null)
				type = con.getContentType();
			// 此处的“text/json”与您在show中选择的要一致！！！
			if (type == null || type.trim().length() == 0
					|| type.trim().indexOf("text/json") < 0) {
				return "";
			}
			if (type.indexOf("charset=") > 0)
				charSet = type.substring(type.indexOf("charset=") + 8);

			byte b[] = new byte[10000];
			int numRead = urlStream.read(b);
			content = new String(b, 0, numRead, "UTF-8");
			while (numRead != -1) {
				numRead = urlStream.read(b);
				if (numRead != -1) {
					String newContent = new String(b, 0, numRead, charSet);
					content += newContent;
				}
			}
			urlStream.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return content;
	}

}