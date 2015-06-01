package com.gxf.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * ������
 * 
 * @author Administrator
 *
 */
public class Util {

	/**
	 * ���ַ���ת����utf-8��ʽ��
	 * 
	 * @param string
	 * @return
	 */
	public String getUTF8String(String string) {
		String result = "";
		try {
			result = new String(string.getBytes("ISO8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return result;
	}

	/**
	 * ��ȡ��ǰ����Ŀ¼
	 * 
	 * @return
	 */
	public String getCurrentProjectPath() {
		String curPath = System.getProperty("user.dir");

		return curPath;
	}

	/**
	 * ���ַ�������MD5�㷨����
	 * @param input
	 * @return
	 */
	public String stringMD5(String input) {

		try {

			// �õ�һ��MD5ת�����������ҪSHA1�������ɡ�SHA1����

			MessageDigest messageDigest = MessageDigest.getInstance("MD5");

			// ������ַ���ת�����ֽ�����

			byte[] inputByteArray = input.getBytes();

			// inputByteArray�������ַ���ת���õ����ֽ�����

			messageDigest.update(inputByteArray);

			// ת�������ؽ����Ҳ���ֽ����飬����16��Ԫ��

			byte[] resultByteArray = messageDigest.digest();

			// �ַ�����ת�����ַ�������

			return byteArrayToHex(resultByteArray);

			// return new String(resultByteArray);
		} catch (NoSuchAlgorithmException e) {

			return null;

		}

	}

	/**
	 * ����������ת����16����
	 * @param byteArray
	 * @return
	 */
	public String byteArrayToHex(byte[] byteArray) {
		// ���ȳ�ʼ��һ���ַ����飬�������ÿ��16�����ַ�
		char[] hexDigits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'A', 'B', 'C', 'D', 'E', 'F' };

		// newһ���ַ����飬�������������ɽ���ַ����ģ�����һ�£�һ��byte�ǰ�λ�����ƣ�Ҳ����2λʮ�������ַ���2��8�η�����16��2�η�����
		char[] resultCharArray = new char[byteArray.length * 2];

		// �����ֽ����飬ͨ��λ���㣨λ����Ч�ʸߣ���ת�����ַ��ŵ��ַ�������ȥ
		int index = 0;

		for (byte b : byteArray) {
			resultCharArray[index++] = hexDigits[b >>> 4 & 0xf];
			resultCharArray[index++] = hexDigits[b & 0xf];
		}

		// �ַ�������ϳ��ַ�������
		return new String(resultCharArray);

	}
}
