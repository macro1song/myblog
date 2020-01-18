用户表  tb_admin  后台登录管理员表
字段名	字段类型	约束	描述
Id	int	主键自增	
name	Varchar(20)	非空	用户名
Pwd	Varchar(20)	非空	密码
role	int		权限,(0管理员 默认,1不可用,)


CREATE TABLE tb_admin(
Id	int	PRIMARY KEY auto_increment,
name	Varchar(20)	,
Pwd	Varchar(20)	,
role	int		DEFAULT 0
)

INSERT into tb_admin(name,Pwd)VALUES
('admin','123'),
('songhong','123'),

INSERT into tb_admin(name,Pwd,role)VALUES
('test','test',1) 

用户表  tb_user
字段名	字段类型	约束	描述
Id	int	主键自增	
name	Varchar(20)	非空	用户名
Pwd	Varchar(20)	非空	密码

CREATE TABLE tb_user(
Id	int	PRIMARY KEY auto_increment,
name	Varchar(20)	,
Pwd	Varchar(20)	 
)
INSERT into tb_user(name,Pwd)VALUES
('zhangsan','123'),
('李四','1234') ,
('王五','12345') ,

分类表 tb_blog_type
字段名	字段类型	约束	描述
Id	int	主键自增	
name	Varchar(20)	非空	文章类型类型(热门文章,经济动态,最新文章,零售商业)

CREATE TABLE tb_blog_type(
Id	int	PRIMARY KEY auto_increment,
name	Varchar(20)	 
)
INSERT into tb_blog_type(name)VALUES
('热门文章'),
('经济动态'),
('最新文章'),
('零售商业')

文章表  tb_Blog
字段名	字段类型	约束	描述
Id	int	主键自增	
Title	Varchar(100)	非空	标题
Type	int	非空	外键分类表tb_blog_type的id
author	Varchar(20)		文章作者
content	Varchar(400)		文章内容
time	DateTime		发布时间(2020-01-18 15:23:19)

CREATE TABLE tb_Blog(
Id	int	PRIMARY KEY auto_increment,
Title	Varchar(100)	,
Type	int	,
author	Varchar(20)	,
content	Varchar(400)	,
time	datetime
)

SELECT * FROM tb_blog_type
INSERT into tb_Blog(Title,Type,author,content,time)VALUES
('流量明星数据造假：泡沫的破灭，疯狂的终结',1,'内幕君','流量时代的神话，以央视的这次报道为节点，大概就此终结了','2019-02-27 15:23:19')

INSERT into tb_Blog(Title,Type,author,content,time)VALUES
('为什么大众点评不会被放弃？',1,'SL工作室','“几日没更博，听说有人在想我？”

2月25日，@大众点评 官微发出这样一条动态。联系近日满天飞的“美团关掉大众点评App”的谣言，不难看出 @大众点评 这是变相地在向用户“报平安”。

上周，一篇名为《“大众点评”即将消失，前路未定》的文章中写道“大众点评这一大众熟悉的品牌即将迎来变数，将被改名或直接放弃”，称其可能会被整合进美团App之中。

大众点评已经成立15年，平台积累有大量忠实用户。美团是国内生活服务领域的领跑者，一举一动都为各界所关注。该文很快便传遍网络，掀起不小的舆论风波。引得不少用户担忧，大众点评会弃大众而去。','2019-03-1 15:23:19')
,

('经济动态'),

 内幕君 流量时代的神话,以央视的这次报道为节

评论表  tb_comment
字段名	字段类型	约束	描述
Id	int	主键自增	
content	Varchar(100)	非空	评论内容
Blogid	int	非空	外键 文章表tb_Blog的id
记录被评论的文章
Userid	int	非空	外键 用户表tb_user的id
记录是谁评论的
createTime	DateTime		创建时间(2020-01-18 15:23:19)

CREATE TABLE tb_comment(
Id	int	PRIMARY KEY auto_increment,
content	Varchar(100)	,
Blogid	int	,
Userid	int	,
createTime	DateTime
)
('是的,流量明星看表情都像一脸白痴,微博早就不是当年的微博了,早该被整顿了。'
,1,1,'2019-02-28 15:23:19'),
SELECT * FROM tb_User
INSERT into tb_comment(content,Blogid,Userid,createTime)VALUES
('粉丝心甘情愿为偶像付出,却对爱自己的人熟视无睹!参加个偶像见面会以为去重新投胎好人家一样!过后对自己有什么用!'
,1,2,'2019-03-02 15:23:19') 

留言表 tb_message
字段名	字段类型	约束	描述
Id	int	主键自增	
content	Varchar(100)	非空	留言内容
commentid	int	非空	外键 评论表tb_comment的id 记录被留言的 评论
Userid	int	非空	外键 用户表tb_user的id
记录是谁留言的
createTime	DateTime		创建时间(2020-01-18 15:23:19)

CREATE TABLE tb_message(
Id	int	PRIMARY KEY auto_increment,
content	Varchar(100)	,
commentid	int	,
Userid	int	,
createTime	DateTime
)
INSERT into tb_message(content,commentid,Userid,createTime)VALUES
('是的,应该整顿了' ,1,1,'2019-03-1 15:23:19'),
('人家愿意,你管的着吗?' ,2,2,'2019-03-3 15:23:19') 

公告表 tb_announcement
字段名	字段类型	约束	描述
Id	int	主键自增	
content	Varchar(100)	非空	公告内容
Userid	int	非空	外键 用户表tb_user的id
记录是谁发布的公告
createTime	DateTime		创建时间(2020-01-18 15:23:19)

CREATE TABLE tb_announcement(
Id	int	PRIMARY KEY auto_increment,
content	Varchar(100)	,
Userid	int	,
createTime	DateTime
)
INSERT into tb_announcement(content, Userid,createTime)VALUES
('今晚20:00-22:00不停服维护' ,1,'2019-12-2 15:23:19') 

点赞表 tb_thumb_up
字段名	字段类型	约束	描述
Id	int	主键自增	
Blogid	int	非空	外键 文章表tb_Blog的id
记录被评论的文章
Userid	int	非空	外键 用户表tb_user的id
记录是谁点赞的

CREATE TABLE tb_thumb_up(
Id	int	PRIMARY KEY auto_increment,
Blogid	int,
Userid	int	 
)
INSERT into tb_thumb_up( Userid,Blogid)VALUES
(1,1) ,
(2,1) ,
(3,1) ,
(2,2) ,
(3,2)  

