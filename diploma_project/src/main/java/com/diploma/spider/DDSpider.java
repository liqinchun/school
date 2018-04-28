package com.diploma.spider;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.diploma.mysql.dao.CatagoryResitory;
import com.diploma.mysql.dao.ProductDetailResitory;
import com.diploma.mysql.model.CatagoryVo;
import com.diploma.mysql.model.Category;
import com.diploma.mysql.model.Product;
import com.diploma.mysql.model.ProductDetail;
import com.diploma.pipeline.DDPipeline;
import com.diploma.service.CatagoryService;
import com.diploma.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Html;
import us.codecraft.webmagic.selector.Selectable;


public class DDSpider implements PageProcessor{

//    @Autowired
//    private ProductResitory productResitory;
    @Autowired
    private CatagoryResitory catagoryResitory;
    private Site site = Site.me().setRetryTimes(3).setSleepTime(1000);
    static int i=1;
    public void process(Page page) {
        ApplicationContext applicationContext= new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        Html html=page.getHtml();
        List<String> targetUrl;
        Selectable url=page.getUrl();

        //爬取当当首页
        targetUrl=html.xpath("//div[@id=\"hd\"]/div[@class=\"nav_top\"]/ul/li[@class=\"all\"]/a/@href").all();
        if (!targetUrl.isEmpty()){
            page.addTargetRequests(targetUrl);
        }else{
            //爬取全部分类页面
            targetUrl=html.xpath("//div[@id=\"bd\"]/div/div/div[@class=\"" +
                        "classify_content\"]/div[@class=\"classify_con\"]/div/div/div[@class=\"classify_kind\"]/div[@class=\"classify_kind_name\"]/a/@href").all();
            List<String> catagoryNames=html.xpath("//div[@id=\"bd\"]/div/div/div[@class=\"" +
                    "classify_content\"]/div[@class=\"classify_con\"]/div/div/div[@class=\"classify_kind\"]/div[@class=\"classify_kind_name\"]/a/text()").all();


            if (!targetUrl.isEmpty()) {
                page.putField("catagory", getCatagorys(targetUrl, catagoryNames));
                page.addTargetRequests(targetUrl);
            }else {
                //获取商品详细页面
                targetUrl=html.xpath("//div[@id=\"bd\"]/div[@class=\"con\"]/div[@id=\"12808\"]" +
                        "/div[@id=\"12810\"]/div/div[@class=\"con shoplist\"]/div[@id=\"search_nature_rg\"]/ul/li/a/@href").all();
                if (!targetUrl.isEmpty()) {
                    page.addTargetRequests(targetUrl);

                }else {
//                    //价格
//                    List<String>price=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_main clearfix\"]/div[@class=\"show_info\"]" +
//                            "/div[@class=\"sale_box clearfix\"]/div[@id=\"product_info\"]/div[@class=\"price_info clearfix\"]/div[@id=\"pc-price\"]" +
//                            "/div[@class=\"price_d\"]/p[@id=\"dd-price\" ]/text()").all();
//
//                    //title
//                    List<String> title=html.xpath("//div").all();
//                    System.out.println("价格"+(i++)+":"+price+"+++++++++++++++++++++++++++++++++++++++++++++++");
                    saveProduct(page,applicationContext);
                }

            }


        }



    }

    public Site getSite() {
        return site;
    }

    public static void main(String args[]){
        us.codecraft.webmagic.Spider.create(new DDSpider()).addPipeline(new DDPipeline()).addUrl("http://www.dangdang.com/")
                .thread(5).run();
    }


    public List<Category> getCatagorys(List<String> targetUrl,List<String> catagoryName){
        //封装爬取到的所有种类
        List<Category> catagoryVos=new ArrayList<Category>();
        Category category;
        int i=0;
        for (String catagoryUrl:targetUrl){
            category=new Category();
            category.setId(UUIDUtil.getUUID("CATEGORY"));
            category.setName(catagoryName.get(i++));
            category.setUrl(catagoryUrl);
            catagoryVos.add(category);
        }
        return catagoryVos;
    }


    //发现未爬取过的url  保存全部商品信息
    public void saveProduct(Page page,ApplicationContext applicationContext){

        Html html=page.getHtml();
        CatagoryService catagoryService=(CatagoryService) applicationContext.getBean("catagoryServiceImpl");


        List<String> price=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_main clearfix\"]/div[@class=\"show_info\"]" +
                "/div[@class=\"sale_box clearfix\"]/div[@id=\"product_info\"]/div[@class=\"price_info clearfix\"]/div[@id=\"pc-price\"]" +
                "/div[@class=\"price_d\"]/p[@id=\"dd-price\"]/text()").all();

        if (price.isEmpty()){
            return;
        }
        List<String> picUrl=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_main clearfix\"]/div[@class=\"pic_info\"]" +
                "/div[@id=\"largePicDiv\"]/a/img/@src").all();

        List<String> details=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_content clearfix\"]/div[@id=\"right-content\"]" +
                "/div[@id=\"product_tab\"]/div[@id=\"detail_all\"]/div[@id=\"detail_describe\"]/ul/li/text()").all();
        String detailString=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_content clearfix\"]/div[@id=\"right-content\"]" +
                "/div[@id=\"product_tab\"]/div[@id=\"detail_all\"]/div[@id=\"detail_describe\"]/ul/li/text()").all().toString();
        List<String> catalog=html.xpath("//div[@class=\"product_wrapper\"]/div[@id=\"breadcrumb\"]/a").all();
        List<String> catalog1=html.xpath("//div[@class=\"product_wrapper\"]/div[@id=\"breadcrumb\"]/a/text()").all();
        List<String> title=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_main clearfix\"]/div[@class=\"show_info\"]" +
                "/div[@class=\"sale_box clearfix\"]/div[@id=\"product_info\"]/div[@class=\"name_info\"]/h1/text()").all();
        List<String> description=html.xpath("//div[@class=\"product_wrapper\"]/div[@class=\"product_main clearfix\"]/div[@class=\"show_info\"]" +
                "/div[@class=\"sale_box clearfix\"]/div[@id=\"product_info\"]/div[@class=\"name_info\"]/h2/span[@class=\"head_title_name\"]/text()").all();


        //封装 product信息
        ProductDetail productDetail=new ProductDetail();
        productDetail.setProductId(UUIDUtil.getUUID());
        productDetail.setCreateTime(new Date());
        for (String detail:details){
            if (detail.contains("ISBN")){
                productDetail.setProductType(detail);
            }
        }
        productDetail.setProductName(title.get(0));
        productDetail.setDescripton(description.get(0));
        productDetail.setOrignPlace(price.get(0));
        productDetail.setImageurl(picUrl.get(0));
        productDetail.setUrl(page.getUrl().toString());
        for(String cata:catalog1){
            List<Category> categorys=catagoryService.findCatagoryByName(cata);
            if (!categorys.isEmpty()){
                productDetail.setCatagoryId(categorys.get(0).getId());
            }
        }
        ProductDetailResitory productDetailResitory=(ProductDetailResitory)applicationContext.getBean("productDetailResitory");
        productDetailResitory.save(productDetail);
    }

}
