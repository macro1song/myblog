package com.swjd.chukou.service.impl;


import com.swjd.chukou.mapper.NoticeMapper;
import com.swjd.chukou.model.Notice;
import com.swjd.chukou.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;
    @Override
    public List<Notice> queryAllNotice() {
        return noticeMapper.queryAllNotice();
    }

    @Override
    public void addNotice(Notice notice) {
        noticeMapper.addNotice(notice);
    }
}
