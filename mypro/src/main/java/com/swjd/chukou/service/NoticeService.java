package com.swjd.chukou.service;


import com.swjd.chukou.model.Notice;

import java.util.List;

public interface NoticeService {
    List<Notice> queryAllNotice();
    void addNotice(Notice notice);
}
