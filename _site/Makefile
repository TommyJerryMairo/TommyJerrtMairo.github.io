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
