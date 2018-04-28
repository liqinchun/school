package com.diploma.spider;

import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;
import java.util.Set;

public class Miai implements PageProcessor {

    private Site site = Site.me().setRetryTimes(3).setSleepTime(0).setTimeOut(3000);

    //用来存储cookie信息
    private Set<Cookie> cookies;

    @Override
    public void process(Page page) {
        //获取用户的id
        page.putField("", page.getHtml().xpath("//div[@class='member_info_r yh']/h4/span/text()"));

        //获取用户的详细信息
        List<String> information = page.getHtml().xpath("//ul[@class='member_info_list fn-clear']//li/div[@class='fl pr']/em/text()").all();
        page.putField("information = ", information);

    }

    //使用 selenium 来模拟用户的登录获取cookie信息
    public void login()
    {
        WebDriver driver = new ChromeDriver();
        driver.get("https://login.taobao.com/member/login.jhtml?from=taobaoindex&f=top&style=&sub=true&redirect_url=https%3A%2F%2Fi.taobao.com%2Fmy_taobao.htm%3Fspm%3Da220m.1000858.a2226mz.4.74ca3aadfNdg0N");

        driver.findElement(By.id("login_email")).clear();

        //在******中填你的用户名
        driver.findElement(By.id("login_email")).sendKeys("李沁春00");

        driver.findElement(By.id("login_password")).clear();
        //在*******填你密码
        driver.findElement(By.id("login_password")).sendKeys("l18428325734");

        //模拟点击登录按钮
        driver.findElement(By.id("login_btn")).click();

        //获取cookie信息
        cookies = driver.manage().getCookies();
        driver.close();
    }
    @Override
    public Site getSite() {

        //将获取到的cookie信息添加到webmagic中
        for (Cookie cookie : cookies) {
            site.addCookie(cookie.getName().toString(),cookie.getValue().toString());
        }

        return site.addHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1");
    }

    public static void main(String[] args){
        Miai miai = new Miai();

        //调用selenium，进行模拟登录
        miai.login();
        Spider.create(miai)
                .addUrl("http://www.jiayuan.com/164830633")
                .run();
    }
}