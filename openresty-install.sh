cd ~

sudo apt -y install libpcre3 libpcre3-dev libssl-dev zlib1g-dev

curl https://openresty.org/download/openresty-1.13.6.2.tar.gz -o openresty-1.13.6.2.tar.gz
curl https://openresty.org/download/openresty-1.13.6.2.tar.gz.asc -o openresty-1.13.6.2.tar.gz.asc

gpg openresty-1.13.6.2.tar.gz.asc

gpg --keyserver pgpkeys.mit.edu --recv-key B550E09EA0E98066

gpg openresty-1.13.6.2.tar.gz.asc

tar -xvzf openresty-1.13.6.2.tar.gz

cd openresty-1.13.6.2

./configure \
   --with-pcre-jit \
   --with-http_ssl_module \
   --with-http_realip_module \
   --with-http_stub_status_module \
   --with-http_v2_module

make
sudo make install