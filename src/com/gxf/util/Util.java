package com.gxf.util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 工具类
 * 
 * @author Administrator
 *
 */
public class Util {
	public static final String PROJECT_NAME="MyWeb";
	public static final String PHOTO_DIRECTION = "photos";
	
	/**
	 * 将字符串转换成utf-8格式的
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
	 * 获取当前工程目录
	 * 
	 * @return
	 */
	public String getCurrentProjectPath() {
		String curPath = System.getProperty("user.dir");

		return curPath;
	}

	/**
	 * 对字符串进行MD5算法加密
	 * @param input
	 * @return
	 */
	public String stringMD5(String input) {

		try {

			// 拿到一个MD5转换器（如果想要SHA1参数换成”SHA1”）

			MessageDigest messageDigest = MessageDigest.getInstance("MD5");

			// 输入的字符串转换成字节数组

			byte[] inputByteArray = input.getBytes();

			// inputByteArray是输入字符串转换得到的字节数组

			messageDigest.update(inputByteArray);

			// 转换并返回结果，也是字节数组，包含16个元素

			byte[] resultByteArray = messageDigest.digest();

			// 字符数组转换成字符串返回

			return byteArrayToHex(resultByteArray);

			// return new String(resultByteArray);
		} catch (NoSuchAlgorithmException e) {

			return null;

		}

	}

	/**
	 * 二进制数组转换成16进制
	 * @param byteArray
	 * @return
	 */
	public String byteArrayToHex(byte[] byteArray) {
		// 首先初始化一个字符数组，用来存放每个16进制字符
		char[] hexDigits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'A', 'B', 'C', 'D', 'E', 'F' };

		// new一个字符数组，这个就是用来组成结果字符串的（解释一下：一个byte是八位二进制，也就是2位十六进制字符（2的8次方等于16的2次方））
		char[] resultCharArray = new char[byteArray.length * 2];

		// 遍历字节数组，通过位运算（位运算效率高），转换成字符放到字符数组中去
		int index = 0;

		for (byte b : byteArray) {
			resultCharArray[index++] = hexDigits[b >>> 4 & 0xf];
			resultCharArray[index++] = hexDigits[b & 0xf];
		}

		// 字符数组组合成字符串返回
		return new String(resultCharArray);

	}
	
	/**
	 * 获取当前时间戳
	 * @return
	 */
	public Timestamp getCurrentTimestamp(){
		//生成相册创建时间
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String dateStr = sd.format(date);
		
		return Timestamp.valueOf(dateStr);
	}
	
	/**
     * 递归删除文件
     * @param fileToDelete
     */
    public  void deleteFile(File fileToDelete){
		File filesInFile[] = fileToDelete.listFiles();
		if(filesInFile == null)						//不是文件夹直接删除
			fileToDelete.delete();
		else{										//是文件夹
			for(File elementFile : filesInFile){	//递归删除，子文件
				deleteFile(elementFile);
			}//for
			
			//删除文件
			fileToDelete.delete();
		}
	}
}
