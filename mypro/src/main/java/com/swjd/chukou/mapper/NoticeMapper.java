package com.swjd.chukou.mapper;

import com.swjd.chukou.model.Notice;

import java.util.List;

public interface NoticeMapper {
    List<Notice> queryAllNotice();
    void addNotice(Notice notice);
}
