
-- 用户表
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(255) COMMENT '邮箱',
  `username` varchar(255) COMMENT '昵称',
  `password` varchar(255) COMMENT '密码',
  `signature` varchar(255) COMMENT '个性签名',
  `sex` int(11) COMMENT '性别',
  `portrait` varchar(255) DEFAULT 'NULL' COMMENT '头像',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 音乐表
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '音乐id',
  `name` varchar(20) DEFAULT NULL COMMENT '歌曲名称',
  `signer` varchar(20) DEFAULT NULL COMMENT '歌手',
  `u_id` int(11) DEFAULT NULL COMMENT '上传者id',
  `languages` varchar(20) DEFAULT NULL COMMENT '语种',
  `state` int(11) DEFAULT NULL COMMENT '歌曲状态',
  `likes` int(11) DEFAULT NULL COMMENT '点赞数\n',
  `path` varchar(255) DEFAULT '' COMMENT '上传路径',
  PRIMARY KEY (`id`),
  UNIQUE KEY `music_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='音乐表';

-- 收藏表

DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `m_id` int(11) DEFAULT NULL COMMENT '音乐id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


--评论表
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `u_id` int(11) DEFAULT NULL COMMENT '评论者id',
  `m_id` int(11) DEFAULT NULL COMMENT '音乐id',
  `content` varchar(200) DEFAULT NULL COMMENT '评论内容',
  `time` datetime DEFAULT NULL COMMENT '评论时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';