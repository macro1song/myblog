package com.swjd.chukou.controller;

import com.swjd.chukou.model.Notice;
import com.swjd.chukou.service.NoticeService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

@Controller
@MapperScan(basePackages = "com.swjd.chukou.mapper")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;
    private SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//2020-01-03
    //所有公告
    @RequestMapping("/queryAllNotice")
    public String queryAllNotice(Map map, Model model, HttpServletRequest request) {
        System.out.println("queryAllNotice");
        List<Notice> notices = noticeService.queryAllNotice();
        System.out.println(notices);
        return "main";
    }

    //发布公告
    @RequestMapping("/addNotice")
    public String addNotice(Map map, Model model, HttpServletRequest request) {
        try {
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String time = request.getParameter("time");
            String typeIndex = request.getParameter("type");
            System.out.println("typeIndex:"+typeIndex);//第几个
            System.out.println("time:"+time);//yyyy-MM-dd 格式化时间
            Notice notice = new Notice(title ,content ,Integer.parseInt(typeIndex),sdf.parse(time));
            noticeService.addNotice(notice);
            return "main";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "main";
    }
}
