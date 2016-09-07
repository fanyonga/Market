package com.groupfour.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;


/**
 * 验证码工具类
 */
public class ValidateCode {

	/**
	 *获取一串指定长度的从0-9a-zA-Z的字符串
	 *
	 * @param len 长度
	 * @return 字符串
     */
	private static String getRand(int len){
		StringBuilder builder=new StringBuilder();
		
		Random random=new Random();
		
		String exmple="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghjkmnopqrstuvwxyz0123456789";
		for(int i=0;i<len;i++) 
		{
			int index=random.nextInt(exmple.length());
			builder.append(exmple.charAt(index));
		}
		
		return builder.toString();
		
	}


    /**
     * 根据字符串内容生成验证码内容
     *
     * @param rand
     * @return
     */
	private static BufferedImage draw(String rand)
	{
        //设置图片大小
		BufferedImage image=new BufferedImage(60, 20, 4);
		//画笔
        Graphics g=image.getGraphics();

        //设置画布颜色
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, 60, 20);
        //设置画笔颜色
		g.setColor(Color.BLACK);
		g.setFont(new Font("宋体",Font.BOLD, 20*4/rand.length()));
		//画验证码
        g.drawString(rand, 10, 15);
        //画干扰线
		//g.setColor(Color.GRAY);
        Random random=new Random();
		for(int i=0;i<5;i++)
		{
			g.drawLine(random.nextInt(60), random.nextInt(20), random.nextInt(60), random.nextInt(20));
		}
		
		return image;
	}

    /**
     * 生成指定长度字符串的验证码，并将其存储为指定文件名（包含路径）的jpg文件
     *
     * @param filename 文件名（包含路径）
     * @param len 验证码长度
     * @return 验证码字符串
     * @throws IOException
     */
	public static String outFile(String filename,int len) throws IOException
	{
		FileOutputStream out=new FileOutputStream(new File(filename));
		JPEGImageEncoder jpg=JPEGCodec.createJPEGEncoder(out);
		String code=getRand(len);
		jpg.encode(draw(code));
		out.flush();
		out.close();
		return code;
	}


    /**
     * 测试方法
     *
     * @param args
     */
    public static void main(String[] args) {
        try {
            String code=ValidateCode.outFile("D:\\002.jpg",6);
            System.out.println(code);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
