package com.rimi.smp.annotation;

import java.io.IOException;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-18 09:46
 */
public class Demo {
    public static void main(String[] args) throws IOException, InterruptedException {
       /* //创建一个进程  方法一
        Runtime runtime = Runtime.getRuntime();
        runtime.exec("notepad");
        //创建一个进程  方法二
        ProcessBuilder builder = new ProcessBuilder("notepad");
        builder.start();*/




        /*ThreadDemo demo = new ThreadDemo();
        //开启线程  方法一
        demo.start();

        for (int i = 0; i < 100; i++) {
            System.out.println("打游戏");
        }*/

        //创建线程类
        Thread thread = new Thread(new Music());
        //开启线程
        thread.start();

        for (int i = 0; i < 100; i++) {
            //使当前线程休眠一定时间
            Thread.sleep(10);
            System.out.println("玩游戏");


        }
    }

}

//继承Thread类  开启线程
/*class ThreadDemo extends Thread{
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("听音乐");
        }
    }
}*/


//实现Runable接口
class Music implements Runnable{

    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("听音乐");
        }
    }
}



