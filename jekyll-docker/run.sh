#build the site from parent folder
export cmd="$1" #run the input command
export site_name="CSS-Code-Zoo-Display"
export site_folder="$PWD/../docs"
export jekyll_folder="$PWD"
cd $site_folder
echo working folder: $PWD
echo UID: $UID
echo start $cmd for $site_name
#export JEKYLL_VERSION=3.8
export JEKYLL_VERSION="stable"
docker run --rm \
  --name="build-$site_name" \
  --volume="$PWD:/srv/jekyll:Z" \
  --volume="$jekyll_folder/cache_vendor/$site_name/vendor/bundle:/usr/local/bundle:Z" \
  -e JEKYLL_UID="1011" \
  -e JEKYLL_GID="1011" \
  --publish [::1]:4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  $cmd
#  bundle install
#  bundle exec jekyll build --destination local-build/ --baseurl "/CSS-Code-Zoo-Display/local-build"
#  gem install bundler
echo finish $cmd for $site_name
