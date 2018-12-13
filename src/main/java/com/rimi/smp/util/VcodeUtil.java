package com.rimi.smp.util;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

/**
 * @author 惜-梦
 * @description 验证码工具类
 * @date 2018-12-12 10:02
 */
public class VcodeUtil {

    public static void VCode(HttpServletRequest request , HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //先设置图片的宽度和高度
        int width = 80;
        int height = 40;
        //创建一个图片书籍缓冲区
        //BufferedImage.TYPE_INT_RGB 表示一个具有八位RGB颜色的分量图片:红(R)、绿(G)、蓝(B) 八位 0-256
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        //工具类 用这个工具能在上画图
        Graphics graphics = image.getGraphics();
        //设置背景颜色
        graphics.setColor(new Color(226,226,240));
        //绘制画布尺寸...填充到图片上 x y 坐标
        graphics.fillRect(0,0,83,50);
        //设置生成的验证码字符
        //生成随机数的对象
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();

        for (int i = 0; i < 2; i++) {
            //生成1-9的随机数
            int number = random.nextInt(8)+1;
            //生成大写的A-Z
            char letter =(char) (random.nextInt(26)+65);
            String[] s = new String[2];
            //把生成的数字和字母放进数组
            s[0]=String.valueOf(number);
            s[1]=String.valueOf(letter);
            stringBuffer.append(s[0]);
            stringBuffer.append(s[1]);

        }
        //这个设置验证码中的字符的颜色
        graphics.setColor(new Color(66,2,82));
        //设置验证码的字体  字体:null 风格:Font.ITALIC 大小:20
        graphics.setFont(new Font(null,Font.ITALIC,30));

        String str = stringBuffer.toString();
        // 把验证码存入到session中
        HttpSession session = request.getSession();
        session.setAttribute("vCode",str);

        System.out.println(str);


        //绘制字符到图片上
        graphics.drawString(str,5,30);

        //绘制干扰线
        for (int i = 0; i < 10; i++) {
            //设置干扰线的颜色
            graphics.setColor(new Color(random.nextInt(256),random.nextInt(256),random.nextInt(256)));
            //设置干扰线的位置  x1 y1 x2 y2
            graphics.drawLine(random.nextInt(width),random.nextInt(height),random.nextInt(width),random.nextInt(height));
        }
        //告诉浏览器输出的是一张图片
        response.setContentType("image/jpeg");
        //用IO流的方式输出图片
        ServletOutputStream outputStream = response.getOutputStream();
        //ImageIO:输出图片的工具类
        ImageIO.write(image,"jpeg",outputStream);
        //关闭流
        outputStream.close();
    }

}
