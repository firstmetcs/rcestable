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

	/*public static void main(String[] agrs) {
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


	}*/

	public static String getWuLiu(String com, String nu) {
		String content = null;
		try {

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
			// �˴��ġ�text/json��������show��ѡ���Ҫһ�£�����
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