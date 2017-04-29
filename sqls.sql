create table `pages`(
    `id` tinyint(3) unsigned not null auto_increment,
    `alias` varchar(100) not null,
    `title` varchar(100) not null,
    `content` text default null,
    `is_published` tinyint(1) unsigned default 0,
    primary key(`id`)
) engine = InnoDB default charset=utf8;

INSERT INTO `pages`
VALUES(1, 'about', 'About Us', 'Test content', 1),
(2, 'test', 'Test page', 'Another test content', 1);

create table `messages`(
    `id` tinyint(3) unsigned not null auto_increment,
    `name` varchar(100) not null,
    `email` varchar(100) not null,
    `message` text default null,
    primary key(`id`)
) engine = InnoDB default charset = utf8;

create TABLE `users`(
    `id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(45) NOT NULL ,
    `email` VARCHAR(100) NOT NULL ,
    `role` VARCHAR(45) NOT NULL  DEFAULT 'admin',
    `passsword` char(32) NOT NULL ,
    `is_active` TINYINT(1) UNSIGNED DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;