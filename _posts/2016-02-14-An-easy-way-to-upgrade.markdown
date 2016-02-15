---
layout: post
title:  "使用make完成blog的更新."
date:   2016-02-14 19:58:10
categories: Github-pages
---

每次POST后都打很多命令简直是浪费生命。
于是窝想了个歪招……用make完成POST后的一系列命令

窝写的Makefile如下

{% highlight makefile %}
deploy:
	rm -rf ./_site/
	rm -rf /tmp/_site/
	jekyll build
	cp -r -p _site/ /tmp/
	git add -A
	git commit -m "Deploy blog"
	git push
	git checkout master
	rm -rf ./*
	cp -r -p /tmp/_site/* ./
	git add -A
	git commit -m "Deploy blog"
	git push 
	git checkout source
	echo "Deploy succeed"
{% endhighlight %}

诺……这样每次make一下就嚎了……
