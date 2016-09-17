## Market
### 项目说明
实习4组作品：使用spring+springmvc+hibernate来构建一个二手商品交易网站

### 部署項目

* 先`git clone`项目到本地
* 在mysql的数据库`test(我自己的)`下运行`src/main/resources/dbscript`文件夹下的`shop-create-new.sql`和`shop-insert.sql`脚本
* 修改`src/main/resources/config`文件夹下的`data-source.properties`中的数据库为自己的数据库信息
* 到本地项目的根目录下，运行`mvn clean install` (需要安装[Maven](https://maven.apache.org/index.html))
* 将生成的`target`文件夹的`group4.war`文件，部署到 `${Tomcat_Home}/webapp`下，如果是重新部署，请先删除`work/Catalina/localhost`和`webapp`下的group4文件夹
* 注意如果重新部署时注意保留group4下的`static`文件夹，动态添加的商品图片就是保留在`static/images`下
* 启动tomcat，访问*http:\\ip\group4*即可

### 系统内置

* 普通用户两个：可以注册，用来作为商家和客户：可以上传商品、购买商品
* 系统用户一个：不可已注册，用来做用户管理和商品审核管理

具体账号登陆信息见`src/main/resources/dbscript/shop-insert.sql`
