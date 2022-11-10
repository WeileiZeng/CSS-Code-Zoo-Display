#${cmd} will run in site folder

port="--publish [::1]:4000:4000"
cmd="$(port) bundle exec jekyll serve --port 4000"

#port forwarding:
#ssh -L 8080:localhost:4000 weileizeng@10.101.4.63
#then visit localhost:8080 on your local machine to check the living site
serve:
	./run.sh "jekyll serve --port 4000 --incremental"
#If changing the port, also change it in run.sh
build:
	./run.sh "bundle exec jekyll build --destination local-build/ --baseurl /CSS-Code-Zoo-Display/local-build"
bundle-install:
	./run.sh "bundle install"
