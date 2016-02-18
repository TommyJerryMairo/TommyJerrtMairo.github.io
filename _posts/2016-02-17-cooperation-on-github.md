---
layout: post
title: "在Github上与多人合作——单一repo"
date: 2016-02-17 22:16:35
categories: Technology
tags: git Github
---

在Github上看到了一个项目，灵感顿生，想要参与其中，怎么办？
下面是窝的姿势：

###### 准备工作

1. 首先fork到自己的帐户下

2. 从自己的帐户下clone到本地

3. 制造一个upstream


    git remote add upstream <上游维护者的repo>


4. 整一个dev分支


    git checkout -b dev


###### 日常使用

- 及时fetch上游


    git fetch upstream

    git checkout master

    git merge upstream/master

    
- 及时merge自己的代码(默认master与上游保持一致)


    git checkout dev

    git merge master

    
- dev分支要即使push

`
    git push origin
`

剩下的就是pull request跟上游维护者提交自己的代码了。
只要勤merge，一般不会太困难。

