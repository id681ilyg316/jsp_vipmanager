## 本项目实现的最终作用是基于JSP会员卡积分管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 会员卡充值
 - 会员卡管理
 - 会员积分统计
 - 会员管理
 - 信息统计图
 - 修改后台登录密码
 - 商品管理
 - 注册用户管理
 - 添加会员
 - 添加会员卡
 - 留言管理
 - 登录
 - 积分兑换商品
 - 系统用户管理
### 第2个角色为用户角色，实现了如下功能：
 - 修改密码
 - 修改详细资料
 - 留言板
 - 登录
 - 登录后页面
## 数据库设计如下：
# 数据库设计文档

**数据库名：** vipmanager

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [admin](#admin) |  |
| [adminlog](#adminlog) |  |
| [cz](#cz) |  |
| [dh](#dh) |  |
| [dhsp](#dhsp) |  |
| [guestbook](#guestbook) |  |
| [hy](#hy) |  |
| [hyk](#hyk) |  |
| [member](#member) |  |
| [pmember](#pmember) |  |
| [replay](#replay) |  |
| [sp](#sp) |  |
| [system](#system) |  |
| [xs](#xs) |  |

**表名：** <a id="admin">admin</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | creattime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | flag |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | isuse |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | logintimes |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | quanxian |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="adminlog">adminlog</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | logintime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | loginip |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | useros |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | ok |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="cz">cz</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | hykid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | je |   float   | 13 |   0    |    Y     |  N   |   NULL    |   |
|  4   | sj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="dh">dh</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | dhspid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | hykid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | syjf |   float   | 13 |   0    |    Y     |  N   |   NULL    |   |
|  5   | sj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="dhsp">dhsp</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | mc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | jf |   float   | 13 |   0    |    Y     |  N   |   NULL    | 积分  |

**表名：** <a id="guestbook">guestbook</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | nickname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pic |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 图片  |
|  4   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  5   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  6   | weburl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | blogurl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | expressions |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  10   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |
|  11   | ip |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | IP地址  |
|  12   | replay |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  13   | ifhide |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="hy">hy</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | xm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  3   | xb |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | cs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | fm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | zz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | dh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | yx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="hyk">hyk</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | kh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  4   | rq |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | je |   float   | 13 |   0    |    Y     |  N   |   NULL    |   |
|  6   | sd |   varchar   | 255 |   0    |    Y     |  N   |   '未'    |   |
|  7   | gs |   varchar   | 255 |   0    |    Y     |  N   |   '未'    |   |
|  8   | jf |   float   | 13 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="member">member</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | TYPE |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型  |
|  5   | regtime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | ifuse |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | logintimes |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | lasttime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  9   | lastip |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pmember">pmember</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | mid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | realname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名字  |
|  4   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | bir |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | sheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | city |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 城市名称  |
|  8   | telphone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  10   | question |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | answer |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |

**表名：** <a id="replay">replay</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | mid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | replay |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | replayer |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | replaytime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="sp">sp</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | mc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | js |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jg |   float   | 13 |   0    |    Y     |  N   |   NULL    |   |
|  5   | jf |   float   | 13 |   0    |    Y     |  N   |   NULL    | 积分  |
|  6   | bj |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="system">system</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | sitename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | url |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 网络地址  |
|  4   | keyword |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | description |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 描述  |
|  6   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  7   | state |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  8   | reasons |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | dir |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | record |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | copyright |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="xs">xs</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | spid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | hykid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | sl |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | je |   float   | 13 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jf |   float   | 13 |   0    |    Y     |  N   |   NULL    | 积分  |
|  7   | sj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
