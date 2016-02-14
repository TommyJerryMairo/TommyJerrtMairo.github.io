deploy:
	git add -A
	git commit -m "Deploy blog"
	rm -rf /tmp/_site/
	jekyll build
	cp -r _site/ /tmp/
	git checkout master
	rm -r ./*
	cp -r /tmp/_site/* ./
	git add -A
	git commit -m "Deploy blog"
	git push origin master source
	git checkout source
	echo "Deploy succeed"
