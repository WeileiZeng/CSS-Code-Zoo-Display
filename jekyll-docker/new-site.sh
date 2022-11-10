#create a new site
#the gemfiles is cached in $PWD/cache_vendor
export JEKYLL_VERSION=3.8
export site_name="my-blog5"
# && export MSYS_NO_PATHCONV=1
docker run --rm \
  --name="$site_name" \
  --volume="$PWD:/srv/jekyll:Z" \
  --volume="$PWD/cache_vendor/$site_name/vendor/bundle:/usr/local/bundle:Z" \
  -e JEKYLL_UID="1011" \
  -e JEKYLL_GID="1011" \
  -it jekyll/jekyll:3.8 \
  sh -c "chown -R jekyll /usr/gem/ && jekyll new $site_name" \
  && cd $site_name
