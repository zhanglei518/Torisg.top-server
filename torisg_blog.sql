/*
Navicat MySQL Data Transfer

Source Server         : my-company
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : torisg_blog

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-08-16 18:19:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tg_blogs
-- ----------------------------
DROP TABLE IF EXISTS `tg_blogs`;
CREATE TABLE `tg_blogs` (
  `articleid` varchar(100) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `describe` longtext,
  `tags` varchar(255) DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` bigint(20) NOT NULL,
  `visitors` int(10) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tg_blogs
-- ----------------------------
INSERT INTO `tg_blogs` VALUES ('1ff7b170-be6d-11e9-9850-5360761654c7', '用Nodejs和React实现即时通讯简易聊天室功能', '进入socketio-demo目录 运行eject进行拆包，本项目也可以不拆，这是个人习惯。 注意如果运行eject命令最好在项目初始阶段执行，已经开始编写后不要再使用容易出现bug，新人谨慎使用eject命令这里auth.js文件是用来判断用户是否输入昵称，如已输入昵称可以进入聊天室，如没有输入昵称则跳回登录界面要求输入昵称\r\n本项目当中我们把昵称存在redux里实现登录界面和聊天室界面的共用，当然现这个项目比较小，如果想用localStorage存在本地也可以，不过考虑到后期的扩展性以及加深对redux的理解我还是选择存在redux当中\r\n', '中间件模型非常好用并且简洁, 甚至在 koa 框架上大放异彩, 但是也有自身的缺陷, 也就是一旦中间件数组过于庞大, 性能会有所下降, 因此我们需要结合自身的情况与业务场景作出最合适的选择.', 'TG001,TG003', 'Torisg', '1565771150855', '432');
INSERT INTO `tg_blogs` VALUES ('26e81bd0-bf2d-11e9-ba26-8507c03c3a16', '从图片优化说起', '图片是大部分网页的重要组成部分，一般情况下，我们不会太关注这方面的问题，需要显示图片直接一个 img 标签搞定。\r\n\r\n但实际上，无论是对于提高加载速度，还是对于优化用户体验，优化图片都是一个重要的手段。\r\n\r\n图片优化分成两个方面：\r\n\r\n第一，图片压缩。在保证视觉效果的情况下，减少图片的体积。这个很有效，1M 和 100K 的图片，肉眼看起来几乎差不多，但却省了 90% 的流量，大大提高了加载速度。\r\n\r\n第二，响应式图片。根据客户端的情况，选择最合适的图片返回给用户。用户是一个 500px 的设备，那么返回 1000px 的图给他就是浪费（假设物理像素和 CSS 像素是一比一）。\r\n\r\n我们先来看图片压缩。\r\n\r\n图片压缩\r\n压缩的第一步是筛选出需要压缩的图片。如果图片本身就已经足够小了，那么再压缩的意义就不大。\r\n\r\n我一般使用如下的脚本筛选项目中需要压缩的图片。脚本会列出所有的图片并根据尺寸降序排列。', '图片是大部分网页的重要组成部分，一般情况下，我们不会太关注这方面的问题，需要显示图片直接一个 img 标签搞定。', 'TG005', 'Torisg', '1565853625870', '195');
INSERT INTO `tg_blogs` VALUES ('723ab5f1-be67-11e9-889d-5fe74741410d', '面向切面编程(AOP)---理解 Koa 的中间件机制', '相信很多人都听过所谓的 AOP 编程或者面向切面编程, 其实他们都是中间件模型的体现, 我举个例子, 在前端开发中, 产品会要求在代码中进行埋点, 比如\r\n需要知道这个按钮用户点击的频率是多少, 但是这样的上报代码其实与实际的业务代码并无强关联, 更不要说在实际上业务代码已经封装成一个通用的函数或组件,\r\n所以, 如果想不侵入业务代码而又满足埋点, 中间件模型或许能够满足需求, 来看一看简单的代码:', 'koa 是 nodejs 中非常精简的框架, 其中的精粹思想就是洋葱模型(中间件模型), 它实现的核心就是借助 compose 这个库来实现的.这里我主要看的是 koa2 所使用的 compose 源码,\r\n对于 koa1 的 compose 源码其实思想是一致的, 只不过它针对的是 generator 函数, koa2 针对的是 async 函数, 相比之下 async 会更符合潮流.', 'TG001,TG004', 'Torisg', '1565768711887', '274');
INSERT INTO `tg_blogs` VALUES ('a59fd301-be65-11e9-8931-51360942c9ea', 'redux, koa, express 中间件实现对比解析', '如果你有 express ,koa, redux 的使用经验，就会发现他们都有 中间件（middlewares）的概念，中间件 是一种拦截器的思想，用于在某个特定的输入输出之间添加一些额外处理，同时不影响原有操作。\r\n最开始接触 中间件是在服务端使用 express 和 koa 的时候，后来从服务端延伸到前端，看到其在redux的设计中也得到的极大的发挥。中间件的设计思想也为许多框架带来了灵活而强大的扩展性。\r\n本文主要对比redux, koa, express 的中间件实现，为了更直观，我会抽取出三者中间件相关的核心代码，精简化，写出模拟示例。示例会保持 express, koa，redux 的整体结构，尽量保持和源码一致，所以本文也会稍带讲解下express, koa, redux 的整体结构和关键实现', 'express 和 koa 的中间件是用于处理 http 请求和响应的，但是二者的设计思路确不尽相同。大部分人了解的express和koa的中间件差异在于：\n\nexpress采用“尾递归”方式，中间件一个接一个的顺序执行, 习惯于将response响应写在最后一个中间件中；\n而koa的中间件支持 generator, 执行顺序是“洋葱圈”模型。', 'TG001,TG004', 'Torisg', '1565767939120', '394');
INSERT INTO `tg_blogs` VALUES ('b9564380-bf09-11e9-aa5b-c98320ab7a71', '关于React组件的一点优化体验', '影响网站的速度是用户的网速和网站对http请求的处理，为了提升这一点我们通常都会减少http请求，比如，js和css的合并压缩、雪碧图等等。\r\n\r\n影响网站性能最大的因素就是浏览器的重绘和重排版了，在原生js当中，我们在遇到需要操作添加DOM的时候，一般都会使用创建文档碎片(document.createDocumentFragment）的方式来减少DOM的重绘和重排版。\r\n\r\nReact 中的React Virtual DOM 和diff 的存在实则减少网站的性能消耗，但是对于性能优化的问题，我们往往会基于一个不信任的态度，既我们需要提高React虚拟DOM 的效率。对于React来说，减少不必要的渲染是我们最普遍和最重要的优化路径。\r\n\r\n为解决这个问题，React官方有提供一个方法，那就是PureRender。\r\n\r\n我们从几个方面来介绍一下React的性能优化。', '影响网站的速度是用户的网速和网站对http请求的处理，为了提升这一点我们通常都会减少http请求，比如，js和css的合并压缩、雪碧图等等。', 'TG003,TG005', 'Torisg', '1565838409657', '721');
INSERT INTO `tg_blogs` VALUES ('db09d1b0-be6c-11e9-a706-c7445db17792', '揭密React setState', 'setState(updater, callback)这个方法是用来告诉react组件数据有更新，有可能需要重新渲染。它是异步的，react通常会集齐一批需要更新的组件，然后一次性更新来保证渲染的性能，所以这就给我们埋了一个坑：那就是在使用setState改变状态之后，立刻通过this.state去拿最新的状态往往是拿不到的。', '学过react的人都知道，setState在react里是一个很重要的方法，使用它可以更新我们数据的状态，本篇文章从简单使用到深入到setState的内部，全方位为你揭开setState的神秘面纱~', 'TG003', 'Torisg', '1565771035211', '921');

-- ----------------------------
-- Table structure for tg_tags
-- ----------------------------
DROP TABLE IF EXISTS `tg_tags`;
CREATE TABLE `tg_tags` (
  `id` varchar(10) NOT NULL,
  `tag_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tg_tags
-- ----------------------------
INSERT INTO `tg_tags` VALUES ('TG001', 'Node.js');
INSERT INTO `tg_tags` VALUES ('TG002', 'Vue.js');
INSERT INTO `tg_tags` VALUES ('TG003', 'React.js');
INSERT INTO `tg_tags` VALUES ('TG004', '中间件');
INSERT INTO `tg_tags` VALUES ('TG005', '性能优化');

-- ----------------------------
-- Table structure for tg_users
-- ----------------------------
DROP TABLE IF EXISTS `tg_users`;
CREATE TABLE `tg_users` (
  `userid` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tg_users
-- ----------------------------
INSERT INTO `tg_users` VALUES ('1898ab4b-dc7f-4a39-84fc-3c9e53fb992e', 'Torisg', '4d4994bde299f6168c65f24c852897b7', 'Torisg');
INSERT INTO `tg_users` VALUES ('b217e212-37d9-4ec7-9de7-925f6f2dec9c', 'admin', '4d4994bde299f6168c65f24c852897b7', 'admin');
