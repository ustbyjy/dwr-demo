package com.ustbyjy.dwr.service;

import org.directwebremoting.Browser;
import org.directwebremoting.ui.dwr.Util;

import java.util.Date;

public class HelloWorldService {
    /**
     * 无参无返回值
     */
    public void helloNN() {
        System.out.println(new Date().toLocaleString() + " js访问helloNN方法");
    }

    /**
     * 有参无返回值
     */
    public void helloYN(final String name) {
        System.out.println(new Date().toLocaleString() + " js访问helloYN方法，name=" + name);

        // 将接收到的内容推送到所有的浏览器
        Browser.withAllSessions(new Runnable() {
            @Override
            public void run() {
                Util.setValue("push", name);
            }
        });
    }

    /**
     * 无参有返回值
     */
    public String helloNY() {
        System.out.println(new Date().toLocaleString() + " js访问helloNY方法");
        return "Hello World!";
    }

    /**
     * 有参有返回值
     */
    public String helloYY(String name) {
        System.out.println(new Date().toLocaleString() + " js访问helloYY方法，name=" + name);
        return "Hello " + name;
    }
}
