deploy:
	rm -rf ./_site/*
	rm -rf /tmp/_site/
	jekyll build
	cp -r -p _site/ /tmp/
	git add -A
	git commit -m "Deploy blog"
	git checkout master
	rm -r ./*
	cp -r -p /tmp/_site/* ./
	git add -A
	git commit -m "Deploy blog"
	git push origin master source
	git checkout source
	echo "Deploy succeed"
