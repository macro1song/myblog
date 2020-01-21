package com.swjd.chukou.model;

import lombok.Data;

import java.util.Date;
@Data
public class Notice {
  private  int notice_id;		//主键、自增
    private  String    notice_title;//	varchar(30)	 ,
    private  String  notice_content ;// varchar(300),
    private  int  notice_typeid	;//int	 , -- 外键
    private  int  notice_flag;//	int	DEFAULT 0, -- 审核状态（1已审核、0待审核）
    private Date notice_time ;//	datetime
    public Notice( ) {
    }
    public Notice(  String notice_title, String notice_content, int notice_typeid,   Date notice_time) {

        this.notice_title = notice_title;
        this.notice_content = notice_content;
        this.notice_typeid = notice_typeid;
        this.notice_time = notice_time;
    }
    public Notice(int notice_id, String notice_title, String notice_content, int notice_typeid, int notice_flag, Date notice_time) {
        this.notice_id = notice_id;
        this.notice_title = notice_title;
        this.notice_content = notice_content;
        this.notice_typeid = notice_typeid;
        this.notice_flag = notice_flag;
        this.notice_time = notice_time;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "notice_id=" + notice_id +
                ", notice_title='" + notice_title + '\'' +
                ", notice_content='" + notice_content + '\'' +
                ", notice_typeid=" + notice_typeid +
                ", notice_flag=" + notice_flag +
                ", notice_time=" + notice_time +
                '}';
    }
}
