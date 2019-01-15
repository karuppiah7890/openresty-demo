cd ~

# install http_load to try load testing on your web server
curl https://acme.com/software/http_load/http_load-09Mar2016.tar.gz -o http_load.tar.gz
tar -xvzf http_load.tar.gz

cd http_load-09Mar2016

# Check readme, Makefile and make changes if any for ssl support and stuff
make

# move to /usr/local/bin
sudo mv http_load /usr/local/bin